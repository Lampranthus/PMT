import socket
import struct
import threading
from queue import Queue

# Configuración
IP = "0.0.0.0"
PORT = 5678
BUFFER_SIZE = 2048
FILENAME = "log.txt"

# Cola segura entre hilos
cola_datos = Queue()

def receptor_udp():
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.bind((IP, PORT))
    print(f"Escuchando en UDP {IP}:{PORT}...")

    while True:
        data, addr = sock.recvfrom(BUFFER_SIZE)

        if len(data) >= 6:
            # Buscar secuencia válida de 6 bytes
            # Aquí asumimos que los primeros 6 bytes son los datos
            try:
                # Asegurarse de que usamos solo los primeros 6 bytes
                raw = data[:6]
                indice, corrida, adc = struct.unpack(">HHH", raw)
                cola_datos.put((corrida, indice, adc))
            except struct.error:
                continue

def escritor_archivo():
    corridas_registradas = set()
    num_corridas = int(input("¿Cuántas corridas deseas registrar? "))

    with open(FILENAME, "w") as f:
        while True:
            corrida, indice, adc = cola_datos.get()
            f.write(f"{corrida},{indice},{adc}\n")
            print(f"{corrida},{indice},{adc}")
            corridas_registradas.add(corrida)

            if len(corridas_registradas) >= num_corridas:
                print("¡Se completaron las corridas solicitadas!")
                break

if __name__ == "__main__":
    t1 = threading.Thread(target=receptor_udp, daemon=True)
    t2 = threading.Thread(target=escritor_archivo)

    t1.start()
    t2.start()

    t2.join()
