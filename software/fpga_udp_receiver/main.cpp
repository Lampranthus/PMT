#include <iostream>
#include <fstream>
#include <vector>
#include <chrono>
#include <cstring>
#include <stdexcept>
#include <system_error>
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>
#include <poll.h>
#include <sched.h>
#include <sys/resource.h>

// Configuración
constexpr int PORT = 5678;
constexpr int BUFFER_SIZE = 16 * 1024 * 1024; // 16MB
constexpr int MAX_PACKETS = 100000;
constexpr int STATS_INTERVAL = 1000;

#pragma pack(push, 1)
struct FPGAPacket {
    uint16_t index;
    uint16_t run_number;
    uint16_t adc_value;
    uint8_t padding; // Para alinear a 7 bytes si es necesario
};
#pragma pack(pop)

class UDPServer {
    int sockfd;
    bool running;

    void setupSocket() {
        sockfd = socket(AF_INET, SOCK_DGRAM | SOCK_NONBLOCK, 0);
        if (sockfd < 0) {
            throw std::system_error(errno, std::system_category(), "socket creation failed");
        }

        // Configurar buffer
        if (setsockopt(sockfd, SOL_SOCKET, SO_RCVBUF, &BUFFER_SIZE, sizeof(BUFFER_SIZE)) < 0) {
            close(sockfd);
            throw std::system_error(errno, std::system_category(), "setsockopt failed");
        }

        // Configurar bind
        sockaddr_in servaddr = {};
        servaddr.sin_family = AF_INET;
        servaddr.sin_addr.s_addr = INADDR_ANY;
        servaddr.sin_port = htons(PORT);

        if (bind(sockfd, (sockaddr*)&servaddr, sizeof(servaddr)) < 0) {
            close(sockfd);
            throw std::system_error(errno, std::system_category(), "bind failed");
        }
    }

public:
    UDPServer() : sockfd(-1), running(false) {
        setupSocket();
    }

    ~UDPServer() {
        if (sockfd >= 0) close(sockfd);
    }

    void run() {
        running = true;
        std::vector<FPGAPacket> packets;
        packets.reserve(MAX_PACKETS);

        std::ofstream bin_file("data.bin", std::ios::binary);
        std::ofstream txt_file("data.txt");
        txt_file << "Run\tIndex\tADC\n";

        char buffer[2048];
        int packet_count = 0;
        auto start = std::chrono::high_resolution_clock::now();

        std::cout << "Iniciando captura UDP en puerto " << PORT << "...\n";

        while (running && packet_count < MAX_PACKETS) {
            ssize_t n = recv(sockfd, buffer, sizeof(buffer), 0);
            
            if (n <= 0) {
                struct pollfd pfd = {sockfd, POLLIN, 0};
                poll(&pfd, 1, 100);
                continue;
            }

            packet_count++;

            if (n >= sizeof(FPGAPacket)) {
                FPGAPacket pkt;
                memcpy(&pkt, buffer, sizeof(FPGAPacket));
                packets.push_back(pkt);
                
                // Escribir en binario
                bin_file.write(reinterpret_cast<char*>(&pkt), sizeof(FPGAPacket));
                
                // Mostrar estadísticas periódicas
                if (packet_count % STATS_INTERVAL == 0) {
                    auto now = std::chrono::high_resolution_clock::now();
                    auto elapsed = std::chrono::duration_cast<std::chrono::milliseconds>(now - start).count();
                    double rate = (STATS_INTERVAL * 1000.0) / elapsed;
                    
                    std::cout << "\rPaquetes: " << packet_count 
                              << " | Tasa: " << rate << " pkt/s"
                              << std::flush;
                    
                    start = now;
                }
            }
        }

        std::cout << "\nCaptura completada. Guardando datos...\n";
        
        // Guardar en texto
        for (const auto& pkt : packets) {
            txt_file << pkt.run_number << '\t' 
                     << pkt.index << '\t' 
                     << pkt.adc_value << '\n';
        }
    }

    void stop() { running = false; }
};

void setRealtimePriority() {
    struct sched_param param = {};
    param.sched_priority = sched_get_priority_max(SCHED_FIFO);
    if (sched_setscheduler(0, SCHED_FIFO, &param) < 0) {
        std::cerr << "Warning: No se pudo establecer prioridad en tiempo real (¿ejecutando como root?)" << std::endl;
    }
}

int main() {
    try {
        setRealtimePriority();
        UDPServer server;
        server.run();
    } catch (const std::exception& e) {
        std::cerr << "Error: " << e.what() << std::endl;
        return 1;
    }
    return 0;
}