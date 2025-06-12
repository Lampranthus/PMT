#include <iostream>
#include <fstream>
#include <pcap/pcap.h>
#include <netinet/udp.h>
#include <netinet/ip.h>
#include <arpa/inet.h>
#include <iomanip>
#include <algorithm>  // para std::min
#include <thread>     // para std::thread, std::this_thread
#include <chrono>
#include <opencv2/opencv.hpp>

// Tamaño de la imagen
const int IMG_WIDTH = 1665;
const int IMG_HEIGHT = 1665;

// Imagen global en escala de grises
cv::Mat image = cv::Mat::zeros(IMG_HEIGHT, IMG_WIDTH, CV_8UC1);

void packet_handler(u_char *user_data, const struct pcap_pkthdr *pkthdr, const u_char *packet) {
    struct iphdr *ip_header = (struct iphdr*)(packet + 14);
    if (ip_header->protocol != IPPROTO_UDP) return;

    struct udphdr *udp_header = (struct udphdr*)(packet + 14 + ip_header->ihl*4);
    if (ntohs(udp_header->dest) != 5678) return; // Filtra por puerto destino

    const u_char *payload = packet + 14 + ip_header->ihl*4 + 8;
    int payload_length = ntohs(udp_header->len) - 8;

    if (payload_length == 6) {
        
        // Interpretar datos (big endian)
        uint16_t col = (payload[0] << 8) | payload[1];
        uint16_t row = (payload[2] << 8) | payload[3];
        uint16_t intensity = (payload[4] << 8) | payload[5];

        // escala intensidad de 0–128 → 0–255
        uint8_t pixel_value = static_cast<uint8_t>(std::min<int>(intensity, 128) * 255 / 128);

        // Mapear coordenadas con overflow para refrescar la imagen
        int x = col % IMG_WIDTH;
        int y = row % IMG_WIDTH;

        // Actualizar pixel en imagen (asegurar que está dentro del rango)
        if (x >= 0 && x < IMG_WIDTH && y >= 0 && y < IMG_HEIGHT) {
            image.at<uint8_t>(y, x) = pixel_value;
        }
    }
}

int main() {
    char errbuf[PCAP_ERRBUF_SIZE];
    const char *dev = "enxc8a362c9957b";

    pcap_t *handle = pcap_open_live(dev, BUFSIZ, 1, 1000, errbuf);
    if (!handle) {
        std::cerr << "Error al abrir interfaz: " << errbuf << std::endl;
        return 1;
    }

    struct bpf_program fp;
    if (pcap_compile(handle, &fp, "udp and dst port 5678", 0, PCAP_NETMASK_UNKNOWN) == -1) {
        std::cerr << "Error al compilar filtro" << std::endl;
        return 1;
    }
    if (pcap_setfilter(handle, &fp) == -1) {
        std::cerr << "Error al establecer filtro" << std::endl;
        return 1;
    }

    std::cout << "Capturando y mostrando imagen en tiempo real..." << std::endl;

    // Crear ventana en modo normal para poder hacer fullscreen
    cv::namedWindow("Imagen en tiempo real", cv::WINDOW_NORMAL);
    cv::setWindowProperty("Imagen en tiempo real", cv::WND_PROP_FULLSCREEN, cv::WINDOW_FULLSCREEN);

    // Lanzar captura en hilo separado
    std::thread capture_thread([handle]() {
        pcap_loop(handle, 0, packet_handler, NULL);
        pcap_close(handle);
    });

    // Mostrar la imagen en tiempo real, refrescando
    while (true) {
        cv::imshow("Imagen en tiempo real", image);
        int key = cv::waitKey(10);
        if (key == 27) break; // Salir con ESC
        std::this_thread::sleep_for(std::chrono::milliseconds(10));
    }

    capture_thread.join();

    return 0;
}
