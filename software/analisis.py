import matplotlib.pyplot as plt
import numpy as np

# CONFIGURA AQUÍ TU ARCHIVO Y RANGO DE CORRIDAS
FILENAME = "datos_hex.txt"         # Nombre del archivo .txt
START_RUN = 0x000e                 # Corrida inicial (hexadecimal)
END_RUN   = 0x02f6                 # Corrida final (hexadecimal)

# LECTURA Y PARSEO DEL ARCHIVO
def leer_datos(filename):
    datos_adc = []
    corridas = {}
    
    with open(filename, 'r') as f:
        for linea in f:
            partes = linea.strip().split()
            if len(partes) != 6:
                continue  # línea malformada
            
            # Convertir de hex a enteros
            run_id     = (int(partes[0], 16) << 8) | int(partes[1], 16)
            index      = (int(partes[2], 16) << 8) | int(partes[3], 16)
            adc_val    = (int(partes[4], 16) << 8) | int(partes[5], 16)

            if START_RUN <= run_id <= END_RUN:
                datos_adc.append(adc_val)
                if run_id not in corridas:
                    corridas[run_id] = 0
                corridas[run_id] += 1

    return datos_adc, corridas

# ANÁLISIS ESTADÍSTICO
def analizar(datos_adc, corridas):
    datos_np = np.array(datos_adc)
    muestras_por_corrida = list(corridas.values())

    promedio = np.mean(datos_np)
    desviacion = np.std(datos_np)
    total_corridas = len(corridas)
    promedio_muestras = np.mean(muestras_por_corrida)
    max_muestras = max(muestras_por_corrida)
    min_muestras = min(muestras_por_corrida)

    print(f"Total de muestras analizadas: {len(datos_adc)}")
    print(f"Promedio ADC: {promedio:.2f}")
    print(f"Desviación estándar: {desviacion:.2f}")
    print(f"Número de corridas analizadas: {total_corridas}")
    print(f"Promedio de muestras por corrida: {promedio_muestras:.2f}")
    print(f"Máximo de muestras por corrida: {max_muestras}")
    print(f"Mínimo de muestras por corrida: {min_muestras}")

    # Histograma
    plt.hist(datos_np, bins=50, color='skyblue', edgecolor='black')
    plt.title("Histograma de datos del ADC")
    plt.xlabel("Valor ADC")
    plt.ylabel("Frecuencia")
    plt.grid(True)
    plt.show()

# EJECUCIÓN PRINCIPAL
if __name__ == "__main__":
    datos_adc, corridas = leer_datos(FILENAME)
    if not datos_adc:
        print("No se encontraron datos válidos en el archivo o fuera del rango especificado.")
    else:
        analizar(datos_adc, corridas)
