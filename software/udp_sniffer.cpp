#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include <iomanip>
#include <pcap/pcap.h>
#include <netinet/udp.h>
#include <netinet/ip.h>
#include <csignal>
#include <atomic>
#include <ctime>

// Configuración global
std::ofstream outputFile("datos_hex.log");
std::ofstream errorFile("errores.log");
std::vector<std::string> dataBuffer;
std::atomic<bool> stop_capture(false);
pcap_t* handle = nullptr;
const int BUFFER_FLUSH_SIZE = 100;
int packet_counter = 0;

// Handler para Ctrl+C
void signal_handler(int signum) {
    stop_capture = true;
    if (handle) pcap_breakloop(handle);
}

// Función para obtener timestamp
std::string get_current_timestamp() {
    std::time_t now = std::time(nullptr);
    char timestamp[20];
    std::strftime(timestamp, sizeof(timestamp), "%Y-%m-%d %H:%M:%S", std::localtime(&now));
    return std::string(timestamp);
}

// Escribe datos en el archivo con formato consistente
void write_packet_data(const u_char* payload, int length, bool is_error = false) {
    std::stringstream ss;
    ss << "[" << get_current_timestamp() << "] Packet #" << packet_counter++ << " (" << length << " bytes): ";
    
    for (int i = 0; i < length; ++i) {
        ss << std::hex << std::setw(2) << std::setfill('0') << static_cast<int>(payload[i]) << " ";
    }
    
    if (is_error) {
        ss << " [ERROR - MALFORMED PACKET]";
        errorFile << ss.str() << "\n";
        errorFile.flush();
    } else {
        dataBuffer.push_back(ss.str());
    }
}

// Analizador de paquetes mejorado
void packet_handler(u_char* user_data, const struct pcap_pkthdr* pkthdr, const u_char* packet) {
    // Verificar longitud mínima del paquete
    if (pkthdr->caplen < 14 + 20 + 8) return; // Ethernet + IP mínimo + UDP
    
    // Cabecera Ethernet (14 bytes) + IP
    struct iphdr* ip_header = (struct iphdr*)(packet + 14);
    
    // Verificar protocolo UDP
    if (ip_header->protocol != IPPROTO_UDP) return;
    
    // Verificar longitud IP
    if (pkthdr->caplen < 14 + (ip_header->ihl * 4) + 8) return;
    
    // Cabecera UDP
    struct udphdr* udp_header = (struct udphdr*)(packet + 14 + (ip_header->ihl * 4));
    
    // Filtrar por puerto destino
    if (ntohs(udp_header->dest) != 9999) return;
    
    // Payload UDP
    const u_char* payload = packet + 14 + (ip_header->ihl * 4) + 8;
    int payload_length = ntohs(udp_header->len) - 8;
    
    // Verificar longitud válida
    if (payload_length <= 0) {
        write_packet_data(payload, pkthdr->caplen - (payload - packet), true);
        return;
    }
    
    // Detectar paquetes mal formados (contienen cabeceras IP)
    bool malformed = false;
    for (int i = 0; i < payload_length - 1; ++i) {
        if (payload[i] == 0x45 && payload[i+1] == 0x00) { // Patrón típico de cabecera IP
            malformed = true;
            break;
        }
    }
    
    if (malformed) {
        write_packet_data(payload, payload_length, true);
        return;
    }
    
    // Procesamiento normal del payload
    write_packet_data(payload, payload_length);
    
    // Flush del buffer si es necesario
    if (dataBuffer.size() >= BUFFER_FLUSH_SIZE) {
        for (const auto& line : dataBuffer) {
            outputFile << line << "\n";
        }
        dataBuffer.clear();
        outputFile.flush();
    }
}

int main() {
    // Configurar handler para Ctrl+C
    signal(SIGINT, signal_handler);
    
    // Configuración de la interfaz
    const char* dev = "enxc8a362c9957b";
    char errbuf[PCAP_ERRBUF_SIZE];
    
    // Configuración avanzada de captura
    handle = pcap_create(dev, errbuf);
    if (!handle) {
        std::cerr << "Error al crear el manejador: " << errbuf << std::endl;
        return 1;
    }
    
    // Configuración óptima para alta velocidad
    pcap_set_snaplen(handle, 65535);
    pcap_set_promisc(handle, 1);
    pcap_set_timeout(handle, 1000);
    pcap_set_buffer_size(handle, 32 * 1024 * 1024); // 32 MB buffer
    
    if (pcap_activate(handle) != 0) {
        std::cerr << "Error al activar la captura: " << pcap_geterr(handle) << std::endl;
        return 1;
    }
    
    // Filtro BPF optimizado
    struct bpf_program fp;
    if (pcap_compile(handle, &fp, "udp and dst port 9999", 0, PCAP_NETMASK_UNKNOWN) == -1) {
        std::cerr << "Error al compilar filtro: " << pcap_geterr(handle) << std::endl;
        return 1;
    }
    
    if (pcap_setfilter(handle, &fp) == -1) {
        std::cerr << "Error al establecer filtro: " << pcap_geterr(handle) << std::endl;
        return 1;
    }
    
    std::cout << "Iniciando captura en " << dev << "..." << std::endl;
    std::cout << "Guardando datos en datos_hex.log" << std::endl;
    std::cout << "Errores registrados en errores.log" << std::endl;
    std::cout << "Presione Ctrl+C para detener..." << std::endl;
    
    // Bucle principal de captura
    while (!stop_capture) {
        if (pcap_dispatch(handle, -1, packet_handler, nullptr) < 0) {
            if (!stop_capture) {
                std::cerr << "Error en la captura: " << pcap_geterr(handle) << std::endl;
            }
            break;
        }
    }
    
    // Limpieza final
    for (const auto& line : dataBuffer) {
        outputFile << line << "\n";
    }
    
    // Estadísticas
    struct pcap_stat stats;
    if (pcap_stats(handle, &stats) == 0) {
        std::cout << "\nEstadísticas finales:" << std::endl;
        std::cout << "Paquetes recibidos: " << stats.ps_recv << std::endl;
        std::cout << "Paquetes perdidos: " << stats.ps_drop << std::endl;
    }
    
    pcap_close(handle);
    outputFile.close();
    errorFile.close();
    
    std::cout << "Captura finalizada correctamente." << std::endl;
    return 0;
}