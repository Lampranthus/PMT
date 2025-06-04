#include <iostream>
#include <pcap/pcap.h>
#include <netinet/udp.h>
#include <netinet/ip.h>
#include <arpa/inet.h>

void packet_handler(u_char *user_data, const struct pcap_pkthdr *pkthdr, const u_char *packet) {
    // Filtrar solo paquetes UDP
    struct iphdr *ip_header = (struct iphdr*)(packet + 14); // Saltar encabezado Ethernet
    if (ip_header->protocol != IPPROTO_UDP) return;

    struct udphdr *udp_header = (struct udphdr*)(packet + 14 + ip_header->ihl*4);
    uint16_t src_port = ntohs(udp_header->source);
    uint16_t dst_port = ntohs(udp_header->dest);
    
    if (dst_port != 5678) return; // Filtrar por puerto

    // Calcular posición de los datos
    int udp_header_length = 8;
    int ip_header_length = ip_header->ihl*4;
    const u_char *payload = packet + 14 + ip_header_length + udp_header_length;
    int payload_length = ntohs(udp_header->len) - udp_header_length;

    // Mostrar información del paquete
    std::cout << "\nPaquete UDP - " << payload_length << " bytes\n";
    std::cout << "De: " << inet_ntoa(*(in_addr*)&ip_header->saddr) << ":" << src_port << "\n";
    std::cout << "Hex: ";
    for(int i = 0; i < payload_length; ++i) {
        printf("%02x ", payload[i]);
    }
    std::cout << "\n";
}

int main() {
    char errbuf[PCAP_ERRBUF_SIZE];
    pcap_t *handle;
    
    // Abrir interfaz en modo promiscuo
    handle = pcap_open_live("enxc8a362c9957b", BUFSIZ, 1, 1000, errbuf);
    if (!handle) {
        std::cerr << "Error al abrir interfaz: " << errbuf << std::endl;
        return 1;
    }

    // Compilar filtro BPF
    struct bpf_program fp;
    char filter_exp[] = "udp and dst port 5678";
    if (pcap_compile(handle, &fp, filter_exp, 0, PCAP_NETMASK_UNKNOWN) == -1) {
        std::cerr << "Error al compilar filtro" << std::endl;
        return 1;
    }
    if (pcap_setfilter(handle, &fp) == -1) {
        std::cerr << "Error al establecer filtro" << std::endl;
        return 1;
    }

    // Capturar paquetes
    pcap_loop(handle, 0, packet_handler, NULL);

    pcap_close(handle);
    return 0;
}