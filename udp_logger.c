#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <arpa/inet.h>

#define PORT 1234
#define BUFLEN 2048

int main() {
    int sockfd;
    struct sockaddr_in si_me, si_other;
    socklen_t slen = sizeof(si_other);
    char buf[BUFLEN];

    if ((sockfd = socket(AF_INET, SOCK_DGRAM, 0)) == -1) {
        perror("socket");
        exit(1);
    }

    memset((char *) &si_me, 0, sizeof(si_me));
    si_me.sin_family = AF_INET;
    si_me.sin_port = htons(PORT);
    si_me.sin_addr.s_addr = htonl(INADDR_ANY);

    if (bind(sockfd, (struct sockaddr *) &si_me, sizeof(si_me)) == -1) {
        perror("bind");
        exit(1);
    }

    while (1) {
        int recv_len = recvfrom(sockfd, buf, BUFLEN, 0, (struct sockaddr *) &si_other, &slen);
        if (recv_len == -1) {
            perror("recvfrom()");
            exit(1);
        }

        printf("Received %d bytes\n", recv_len);
        for (int i = 0; i < recv_len; i++) {
            printf("%02X ", (unsigned char)buf[i]);
        }
        printf("\n");
    }

    close(sockfd);
    return 0;
}
