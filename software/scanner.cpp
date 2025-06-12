#include <iostream>
#include <atomic>
#include <pcap/pcap.h>
#include <netinet/udp.h>
#include <netinet/ip.h>
#include <arpa/inet.h>
#include <iomanip>
#include <algorithm>
#include <thread>
#include <chrono>
#include <map>
#include <opencv2/opencv.hpp>

const int IMG_WIDTH = 1665;
const int IMG_HEIGHT = 1665;
const int UDP_PORT = 9999;

cv::Mat image = cv::Mat::zeros(IMG_HEIGHT, IMG_WIDTH, CV_8UC1);
std::map<int, int> row_counts;
std::atomic<int> packet_counter(0);
std::atomic<int> valid_samples(0);

void packet_handler(u_char *user_data, const struct pcap_pkthdr *pkthdr, const u_char *packet) {
    packet_counter++;
    
    // Verificar longitud mínima del paquete (Ethernet + IP + UDP)
    if (pkthdr->caplen < 14 + 20 + 8) {
        std::cerr << "Paquete demasiado corto, ignorando\n";
        return;
    }

    struct iphdr *ip_header = (struct iphdr*)(packet + 14);
    if (ip_header->protocol != IPPROTO_UDP) return;

    struct udphdr *udp_header = (struct udphdr*)(packet + 14 + ip_header->ihl * 4);
    if (ntohs(udp_header->dest) != UDP_PORT) return;

    const u_char *payload = packet + 14 + ip_header->ihl * 4 + 8;
    int payload_length = ntohs(udp_header->len) - 8;

    // Debug: Mostrar información del paquete
    if (packet_counter % 100 == 0) {
        std::cout << "Paquete #" << packet_counter 
                  << ", Longitud: " << payload_length << " bytes\n";
    }

    // Manejar delimitador 0xFF al final si existe
    if (payload_length > 0 && payload[payload_length - 1] == 0xFF) {
        payload_length--;
    }

    // Verificar que el payload tenga un formato válido (múltiplo de 6 bytes)
    if (payload_length % 6 != 0) {
        std::cerr << "Paquete #" << packet_counter 
                  << ": Tamaño inválido (" << payload_length 
                  << " bytes), no es múltiplo de 6\n";
        return;
    }

    // Procesar cada muestra (6 bytes por muestra)
    int num_samples = payload_length / 6;
    valid_samples += num_samples;

    for (int i = 0; i < num_samples; i++) {
        // Extraer datos (big-endian)
        uint16_t col = (payload[i*6] << 8) | payload[i*6 + 1];
        uint16_t row = (payload[i*6 + 2] << 8) | payload[i*6 + 3];
        uint16_t intensity = (payload[i*6 + 4] << 8) | payload[i*6 + 5];

        // Verificar límites de la imagen
        if (row >= IMG_HEIGHT || col >= IMG_WIDTH) {
            std::cerr << "Coordenadas fuera de rango: (" << row << ", " << col << ")\n";
            continue;
        }

        // Convertir intensidad a valor de píxel (0-255)
        uint8_t pixel_value = static_cast<uint8_t>(intensity);
        
        // Asignar píxel a la imagen
        image.at<uint8_t>(row, col) = pixel_value;
        row_counts[row]++;
    }
}

int main() {
    char errbuf[PCAP_ERRBUF_SIZE];
    const char *dev = "enxc8a362c9957b"; // Cambiar por tu interfaz

    // Configurar captura con buffer grande
    pcap_t *handle = pcap_create(dev, errbuf);
    if (!handle) {
        std::cerr << "Error al crear manejador: " << errbuf << std::endl;
        return 1;
    }

    pcap_set_snaplen(handle, 65535);
    pcap_set_promisc(handle, 1);
    pcap_set_timeout(handle, 1000);
    pcap_set_buffer_size(handle, 32 * 1024 * 1024); // 32MB buffer

    if (pcap_activate(handle) != 0) {
        std::cerr << "Error al activar captura: " << pcap_geterr(handle) << std::endl;
        return 1;
    }

    // Filtro BPF para capturar solo UDP en el puerto destino
    struct bpf_program fp;
    if (pcap_compile(handle, &fp, "udp and dst port 9999", 0, PCAP_NETMASK_UNKNOWN) == -1 ||
        pcap_setfilter(handle, &fp) == -1) {
        std::cerr << "Error al configurar filtro: " << pcap_geterr(handle) << std::endl;
        return 1;
    }

    std::cout << "Iniciando captura en " << dev << "..." << std::endl;
    std::cout << "Tamaño de imagen: " << IMG_WIDTH << "x" << IMG_HEIGHT << std::endl;

    // Crear ventana para mostrar la imagen
    cv::namedWindow("Imagen en tiempo real", cv::WINDOW_NORMAL);
    cv::resizeWindow("Imagen en tiempo real", 800, 800);

    // Hilo para captura de paquetes
    std::thread capture_thread([handle]() {
        pcap_loop(handle, 0, packet_handler, nullptr);
        pcap_close(handle);
    });

    // Bucle principal para mostrar la imagen
    while (true) {
        cv::imshow("Imagen en tiempo real", image);
        
        // Salir con ESC
        if (cv::waitKey(10) == 27) break;

        // Mostrar estadísticas periódicamente
        static int frame_count = 0;
        if (++frame_count % 100 == 0) {
            std::cout << "\n--- Estadísticas ---\n";
            std::cout << "Paquetes procesados: " << packet_counter << "\n";
            std::cout << "Muestras válidas: " << valid_samples << "\n";
            std::cout << "Filas activas: " << row_counts.size() << "\n";
            
            if (!row_counts.empty()) {
                auto first = row_counts.begin();
                auto last = row_counts.rbegin();
                std::cout << "Rango de filas: " << first->first << " - " << last->first << "\n";
            }
        }
    }

    // Limpieza
    capture_thread.join();
    std::cout << "Captura finalizada.\n";
    return 0;
}