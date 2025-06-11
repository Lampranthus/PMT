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

std::ofstream outputFile("datos_hex.txt");
std::vector<std::string> buffer;
const int BUFFER_SIZE = 100;
std::atomic<bool> stop_capture(false);
pcap_t* handle = nullptr;

// Ctrl+C handler
void signal_handler(int signum) {
    stop_capture = true;
    pcap_breakloop(handle);
}

// Manejador de paquetes
void packet_handler(u_char *user_data, const struct pcap_pkthdr *pkthdr, const u_char *packet) {
    struct iphdr *ip_header = (struct iphdr*)(packet + 14);
    if (ip_header->protocol != IPPROTO_UDP) return;

    struct udphdr *udp_header = (struct udphdr*)(packet + 14 + ip_header->ihl * 4);
    if (ntohs(udp_header->dest) != 5678) return;

    const u_char *payload = packet + 14 + ip_header->ihl * 4 + 8;
    int payload_length = ntohs(udp_header->len) - 8;

    if (payload_length == 6) {
        std::stringstream ss;
        for (int i = 0; i < 6; ++i) {
            ss << std::hex << std::setw(2) << std::setfill('0') << (int)payload[i] << " ";
        }
        buffer.push_back(ss.str());

        if (buffer.size() >= BUFFER_SIZE) {
            for (const auto& line : buffer) {
                outputFile << line << "\n";
            }
            buffer.clear();
        }
    }
}

int main() {
    signal(SIGINT, signal_handler); // Ctrl+C handler

    const char *dev = "enxc8a362c9957b"; // Cambia por tu interfaz
    char errbuf[PCAP_ERRBUF_SIZE];

    // Inicialización manual con buffer grande
    handle = pcap_create(dev, errbuf);
    if (!handle) {
        std::cerr << "Error al crear interfaz: " << errbuf << std::endl;
        return 1;
    }

    pcap_set_snaplen(handle, 65535);                   // Máximo tamaño de paquete
    pcap_set_promisc(handle, 1);                       // Modo promiscuo
    pcap_set_timeout(handle, 1000);                    // Timeout en ms
    pcap_set_buffer_size(handle, 16 * 1024 * 1024);    // Buffer de 16 MB

    if (pcap_activate(handle) != 0) {
        std::cerr << "Error activando interfaz: " << pcap_geterr(handle) << std::endl;
        return 1;
    }

    // Filtro BPF
    struct bpf_program fp;
    if (pcap_compile(handle, &fp, "udp and dst port 5678", 0, PCAP_NETMASK_UNKNOWN) == -1) {
        std::cerr << "Error al compilar filtro" << std::endl;
        return 1;
    }

    if (pcap_setfilter(handle, &fp) == -1) {
        std::cerr << "Error al establecer filtro" << std::endl;
        return 1;
    }

    std::cout << "Capturando datos HEX en datos_hex.txt..." << std::endl;

    // Captura
    pcap_loop(handle, 0, packet_handler, nullptr);

    // Guardar lo que quede en el buffer
    for (const auto& line : buffer) {
        outputFile << line << "\n";
    }

    // Estadísticas de captura
    struct pcap_stat stats;
    if (pcap_stats(handle, &stats) == 0) {
        std::cout << "\n--- Estadísticas ---" << std::endl;
        std::cout << "Paquetes recibidos:  " << stats.ps_recv << std::endl;
        std::cout << "Paquetes descartados: " << stats.ps_drop << std::endl;
    } else {
        std::cerr << "Error al obtener estadísticas: " << pcap_geterr(handle) << std::endl;
    }

    pcap_close(handle);
    outputFile.close();
    std::cout << "Captura finalizada.\n";
    return 0;
}
