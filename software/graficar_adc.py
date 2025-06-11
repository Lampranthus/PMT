import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv('datos_adc.csv')

agrupado = df.groupby('Voltaje')['Valor']
medias = agrupado.mean()
stds = agrupado.std()

plt.errorbar(medias.index, medias.values, yerr=stds.values, fmt='o-', capsize=5)
plt.xlabel("Voltaje de entrada (V)")
plt.ylabel("Cuentas ADC")
plt.title("Linealidad del ADC")
plt.grid(True)
plt.savefig("linealidad_adc.png")
plt.show()
