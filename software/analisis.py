import numpy as np
import matplotlib.pyplot as plt

FILENAME = "datos_hex.txt"
START_RUN = 0x000a
END_RUN   = 0x0233
TAMANO_ESPERADO = 0x0680  # 1664 muestras por corrida

def leer_datos(filename):
    corridas = {}
    lineas_corrida = {}
    max_indices = {}
    linea_actual = 0

    with open(filename, 'r') as f:
        for linea in f:
            linea_actual += 1
            partes = linea.strip().split()
            if len(partes) != 6:
                continue

            run_id  = (int(partes[0], 16) << 8) | int(partes[1], 16)
            index   = (int(partes[2], 16) << 8) | int(partes[3], 16)
            adc_val = (int(partes[4], 16) << 8) | int(partes[5], 16)

            if START_RUN <= run_id <= END_RUN:
                if run_id not in corridas:
                    corridas[run_id] = []
                    lineas_corrida[run_id] = linea_actual
                    max_indices[run_id] = index
                else:
                    if index > max_indices[run_id]:
                        max_indices[run_id] = index

                corridas[run_id].append(adc_val)

    # Revisar si el índice máximo es menor a 1664
    for run_id, max_idx in max_indices.items():
        if max_idx < TAMANO_ESPERADO:
            print(f"[!] Corrida {hex(run_id)} termina en índice {max_idx} (esperado: {TAMANO_ESPERADO}) en línea {lineas_corrida[run_id]}")

    return corridas

def construir_imagen(corridas):
    corridas_ordenadas = sorted(corridas.items())

    longitudes = []
    imagen = []
    total_puntos = 0
    datos_adc = []

    # Calcular longitud máxima esperada (sin el primer punto)
    longitudes_sin_primero = [len(datos[1:]) for _, datos in corridas_ordenadas if len(datos) > 1]
    max_len = max(longitudes_sin_primero)

    for run_id, datos in corridas_ordenadas:
        if len(datos) <= 1:
            continue  # Saltar si solo tiene un dato

        adc_vals = datos[1:]  # Excluir primer dato
        datos_adc.extend(adc_vals)
        longitudes.append(len(adc_vals))
        total_puntos += len(adc_vals)

        # Rellenar con ceros hasta la longitud máxima
        fila = adc_vals + [0] * (max_len - len(adc_vals))
        imagen.append(fila)

    return np.array(imagen).T, datos_adc, total_puntos, longitudes

def mostrar_imagen(imagen_raw):
    min_val = imagen_raw.min()
    max_val = imagen_raw.max()
    imagen_norm = ((imagen_raw - min_val) / (max_val - min_val) * 255).astype(np.uint8)

    plt.figure(figsize=(12, 6))
    plt.imshow(imagen_norm, cmap='gray', origin='upper', aspect='auto')
    plt.title("Imagen generada a partir de datos del ADC")
    plt.xlabel("Corrida")
    plt.ylabel("Índice (de arriba hacia abajo)")
    plt.colorbar(label="Intensidad (ADC normalizado)")
    plt.show()

    return imagen_norm

def estadisticas(datos_adc, total_corridas, longitudes):
    datos_np = np.array(datos_adc)
    print(f"\nTotal de corridas: {total_corridas}")
    print(f"Total de muestras descartadas (1 por corrida): {total_corridas}")
    print(f"Total de muestras usadas: {len(datos_adc)}")
    print(f"Valor ADC mínimo: {np.min(datos_np)}")
    print(f"Valor ADC máximo: {np.max(datos_np)}")
    print(f"Promedio: {np.mean(datos_np):.2f}")
    print(f"Desviación estándar: {np.std(datos_np):.2f}")
    print(f"Máximo de muestras (sin incluir primera) por corrida: {max(longitudes)}")
    print(f"Mínimo de muestras por corrida: {min(longitudes)}")
    print(f"Promedio de muestras por corrida: {np.mean(longitudes):.2f}")

if __name__ == "__main__":
    corridas = leer_datos(FILENAME)
    if not corridas:
        print("No se encontraron datos válidos.")
    else:
        imagen_raw, datos_adc, total_puntos, longitudes = construir_imagen(corridas)
        imagen_norm = mostrar_imagen(imagen_raw)
        estadisticas(datos_adc, len(corridas), longitudes)