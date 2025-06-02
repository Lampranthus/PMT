import socket

# Parámetros
IP = "0.0.0.0"       # Escucha en todas las interfaces
PORT = 5678          # Puerto donde la FPGA envía los datos
FILENAME = "log.txt" # Archivo de salida
BUFFER_SIZE = 2048   # Tamaño máximo del paquete

def main():
    # Crear socket UDP
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.bind((IP, PORT))
    print(f"Escuchando en UDP {IP}:{PORT}...")

    with open(FILENAME, "w") as f:
        try:
            while True:
                data, addr = sock.recvfrom(BUFFER_SIZE)
                print(f"Recibido {len(data)} bytes de {addr}")
                
                # Si quieres guardar como texto plano:
                f.write(data.decode(errors="replace") + "\n")

                # Si quieres guardar como valores hex:
                # f.write(data.hex() + "\n")

        except KeyboardInterrupt:
            print("\nFinalizado por el usuario.")

if __name__ == "__main__":
    main()
