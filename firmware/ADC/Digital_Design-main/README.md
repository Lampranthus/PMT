# Filtro FIR de Orden 50 en VHDL

Este proyecto implementa un filtro FIR de orden 50 en VHDL basado en el diseño del libro *Electrónica Digital y Lógica Programable* de Troncoso. Se realizaron algunos cambios en el diseño y se llevó a cabo la implementación en una FPGA Cyclone IV.

## Implementación Física

Para la implementación del filtro se utilizaron los siguientes componentes:

- **ADC:** AD9201 (10 bits)
- **DAC:** DAC7564 (12 bits)
- **FPGA:** Cyclone IV (DE2-115)

Dado que el ADC es de 10 bits y el DAC de 12 bits, se realizó un escalado adecuado para mantener la precisión de los datos en la conversión.

## Características del Filtro

- **Frecuencia de muestreo:** 100 kHz
- **Frecuencia de corte:** 1 kHz
- **Orden:** 50
- **Tipo de ventana:** Blackman
- **Implementación:** Multiplicación de 11x13 bits para mantener precisión

### Diseño del Filtro en MATLAB

El filtro fue diseñado utilizando la herramienta `filterDesigner` de MATLAB, generando coeficientes optimizados para el procesamiento en VHDL.
Estos coeficientes son de 13 bits con fortamto 1.12, se obtienen con el codigo en matlab de troncoso.

## Pruebas y Resultados

Se realizaron simulaciones y pruebas físicas para verificar el correcto funcionamiento del filtro.

- **MATLAB:** Se probaron diferentes órdenes del filtro, confirmando que un orden de 50 es adecuado para el objetivo del proyecto.
- **Pruebas en FPGA:** Se implementó el código en la DE2-115, validando la correcta conversión de datos y la eliminación de ruido en la señal filtrada.
- **Sincronización:** Se utilizó una señal TTL para sincronizar la entrada del ADC con la captura de datos, minimizando el desfase.

### Resultados Experimentales

A continuación, se presentan algunos de los resultados obtenidos en la implementación:

![500hz](https://github.com/user-attachments/assets/e4c5f50d-ecd7-42b4-b43f-c879e44e7988)

## Conclusiones

- La implementación física en FPGA validó el correcto funcionamiento del diseño.
- Se logró una frecuencia de muestreo de 100 kHz con una frecuencia de corte de 1 kHz.
- El código de MATLAB facilita la generación de coeficientes, permitiendo modificar la respuesta del filtro sin necesidad de cambiar el código en VHDL.

---

**Repositorio:** En este repositorio encontrarás el código en VHDL, los scripts de MATLAB y las simulaciones realizadas para validar el diseño. ¡Cualquier contribución es bienvenida!
