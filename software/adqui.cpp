#include <iostream>
#include <fstream>
#include <pcap/pcap.h>
#include <netinet/udp.h>
#include <netinet/ip.h>
#include <arpa/inet.h>
#include <vector>
#include <string>
#include <sstream>
#include <iomanip>
#include <atomic>
#include <thread>
#include <mutex>
#include <condition_variable>

std::mutex mtx;
std::condition_variable cv;
std::vector<uint16_t> muestras_actuales;
std::atomic<bool> listo_para_muestrear(false);
std::atomic<bool> fin_captura(false);
int muestras_a_tomar = 0;

void packet_handler(u_char *user_data, const struct pcap_pkthdr *pkthdr, const u_char *packet) {
    if (!listo_para_muestrear.load()) return;

    const struct iphdr* ip_header = (struct iphdr*)(packet + 14);
    if (ip_header->protocol != IPPROTO_UDP) return;

    const struct udphdr* udp_header = (struct udphdr*)(packet + 14 + ip_header->ihl*4);
    if (ntohs(udp_header->dest) != 5678) return;

    const u_char* payload = packet + 14 + ip_header->ihl*4 + 8;
    int payload_length = ntohs(udp_header->len) - 8;

    if (payload_length == 6) {
        std::lock_guard<std::mutex> lock(mtx);
        for (int i = 0; i < 6; i += 2) {
            uint16_t sample = (payload[i] << 8) | payload[i + 1];
            muestras_actuales.push_back(sample);
        }
        if ((int)muestras_actuales.size() >= muestras_a_tomar) {
            listo_para_muestrear.store(false);
            cv.notify_one();
        }
    }
}

int main() {
    char errbuf[PCAP_ERRBUF_SIZE];
    const char* dev = "enxc8a362c9957b";

    pcap_t* handle = pcap_open_live(dev, BUFSIZ, 1, 1, errbuf);
    if (!handle) {
        std::cerr << "Error al abrir interfaz: " << errbuf << std::endl;
        return 1;
    }

    struct bpf_program fp;
    if (pcap_compile(handle, &fp, "udp and dst port 5678", 0, PCAP_NETMASK_UNKNOWN) == -1 ||
        pcap_setfilter(handle, &fp) == -1) {
        std::cerr << "Error al establecer filtro" << std::endl;
        return 1;
    }

    std::thread capturador([&]() {
        pcap_loop(handle, 0, packet_handler, NULL);
    });

    std::ofstream salida("datos_adc.csv");
    salida << "Voltaje,Valor\n";

    std::string entrada;
    while (true) {
        std::cout << "Ingresa voltaje (en V) o 'fin' para terminar: ";
        std::getline(std::cin, entrada);
        if (entrada == "fin") break;

        float voltaje = std::stof(entrada);

        std::cout << "¿Cuántas muestras tomar para " << voltaje << " V?: ";
        std::getline(std::cin, entrada);
        muestras_a_tomar = std::stoi(entrada);
        muestras_actuales.clear();

        listo_para_muestrear.store(true);

        {
            std::unique_lock<std::mutex> lock(mtx);
            cv.wait(lock, [] { return !listo_para_muestrear.load(); });
        }

        for (const auto& valor : muestras_actuales) {
            salida << voltaje << "," << valor << "\n";
        }

        std::cout << "Se registraron " << muestras_actuales.size() << " muestras." << std::endl;
    }

    fin_captura.store(true);
    pcap_breakloop(handle);
    capturador.join();
    pcap_close(handle);
    salida.close();

    std::cout << "Captura finalizada. Datos guardados en datos_adc.csv" << std::endl;
    return 0;
}
