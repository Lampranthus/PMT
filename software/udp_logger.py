import socket
import argparse
import time
import numpy as np

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--runs', type=int, required=True)
    parser.add_argument('--output', default='datos_fpga.bin')
    args = parser.parse_args()

    # Configuración optimizada
    IP = "0.0.0.0"
    PORT = 5678
    BUFFER_SIZE = 1024 * 1024 * 16  # 16MB buffer

    # Configuración del socket
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.setsockopt(socket.SOL_SOCKET, socket.SO_RCVBUF, BUFFER_SIZE)
    sock.bind((IP, PORT))
    sock.settimeout(0.1)  # Timeout corto para no bloquear

    print(f"Escuchando en {IP}:{PORT}...")
    start_time = time.time()
    packet_count = 0
    captured_runs = set()
    
    # Usamos numpy para manejo eficiente de datos
    data_buffer = np.zeros((args.runs, 3), dtype=np.uint32)
    
    try:
        while len(captured_runs) < args.runs:
            try:
                data, _ = sock.recvfrom(2048)
                packet_count += 1
                
                # Procesamiento ultra rápido sin verificaciones
                if len(data) >= 6:
                    run_num = (data[2] << 8) | data[3]
                    if run_num not in captured_runs:
                        idx = (data[0] << 8) | data[1]
                        adc = (data[4] << 8) | data[5]
                        
                        data_buffer[len(captured_runs)] = [run_num, idx, adc]
                        captured_runs.add(run_num)
                        
                        if len(captured_runs) % 100 == 0:
                            print(f"\rCapturadas {len(captured_runs)}/{args.runs} corridas", end='')
                
            except socket.timeout:
                continue
    
    finally:
        # Guardado eficiente en binario
        np.save(args.output, data_buffer[:len(captured_runs)])
        
        # También generamos versión texto (opcional)
        with open(args.output + '.txt', 'w') as f:
            f.write("Corrida\tÍndice\tADC\n")
            np.savetxt(f, data_buffer[:len(captured_runs)], fmt='%d\t%d\t%d')
        
        elapsed = time.time() - start_time
        print(f"\nCaptura completada en {elapsed:.2f}s")
        print(f"Paquetes recibidos: {packet_count}")
        print(f"Tasa: {packet_count/elapsed:.0f} paq/seg")
        sock.close()

if __name__ == "__main__":
    main()