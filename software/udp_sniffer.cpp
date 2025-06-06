#include <iostream>
#include <fstream>
#include <pcap/pcap.h>
#include <netinet/udp.h>
#include <netinet/ip.h>
#include <arpa/inet.h>
#include <iomanip>

std::ofstream outputFile("datos_hex.txt"); // Archivo de salida

void packet_handler(u_char *user_data, const struct pcap_pkthdr *pkthdr, const u_char *packet) {
    struct iphdr *ip_header = (struct iphdr*)(packet + 14);
    if (ip_header->protocol != IPPROTO_UDP) return;

    struct udphdr *udp_header = (struct udphdr*)(packet + 14 + ip_header->ihl*4);
    if (ntohs(udp_header->dest) != 5678) return; // Filtra por puerto destino

    const u_char *payload = packet + 14 + ip_header->ihl*4 + 8;
    int payload_length = ntohs(udp_header->len) - 8;

    // Solo procesar paquetes de 6 bytes
    if (payload_length == 6) {
        // Escribir en archivo
        for(int i = 0; i < payload_length; ++i) {
            outputFile << std::hex << std::setw(2) << std::setfill('0') 
                      << (int)payload[i] << " ";
        }
        outputFile << std::endl;
    }
}

int main() {
    char errbuf[PCAP_ERRBUF_SIZE];
    const char *dev = "enxc8a362c9957b"; // Tu interfaz específica
    
    pcap_t *handle = pcap_open_live(dev, BUFSIZ, 1, 1000, errbuf);
    if (!handle) {
        std::cerr << "Error al abrir interfaz: " << errbuf << std::endl;
        return 1;
    }

    // Filtro para capturar solo UDP en puerto 5678
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
    pcap_loop(handle, 0, packet_handler, NULL);

    pcap_close(handle);
    outputFile.close();
    return 0;
}