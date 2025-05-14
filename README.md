NOTAS
---
PCB

El adc tiene que llevar la siguiente configuración, solo se tenecesita por ahora un solo canal.

![Screenshot from 2025-05-02 12-59-32](https://github.com/user-attachments/assets/bac669ce-aebf-439f-b7f8-fabd964ba279)

en esta configuración se utiliza la referencia programable del adc, con ese valor de resistencias la referncia se cambia a 1.5V segun la hora de datos.

![Screenshot from 2025-05-02 13-03-01](https://github.com/user-attachments/assets/bea4462a-019b-4299-8c03-def20f727eb4)

Mientras que para recibir la señal senecesita esta configuración, solo se necesita por ahora un solo canal.

![Screenshot from 2025-05-02 13-01-03](https://github.com/user-attachments/assets/6b15a6d4-0880-4970-a011-7fdbef3105dd)

---
FPGA

QUiero usar por el momoento la DE2-115 ya que cuenta con conexiones Ethernet, voy a conectar la pcb los pines de la fpga con un socket, por el monento imagino que será mejor hacer la pcb de manera vertical respecto a la fpga, ya que por el estacio parece lo mejor.

tanbien se tienen que agregar 2 pines a la pcb de start y stop, los cuales se agregarán pero aun tengo la duda su puedo utilizar otra pcb que tengo donde utilizo el puerto hsmc de la fpga y 2 comparadores para recibir 2 señales, pero por el momento agregaré todo a una sola pcb.

---

Logré hacer una conectar la pgfa a mi laptop a 1gbs con el ejemplo de web server ahora toca cofigurar el ejemplo para loso usar la comunicación.

![Screenshot from 2025-05-07 15-05-54](https://github.com/user-attachments/assets/c602314f-eef8-4c91-adc4-202d0d904002)

---

Para no depender del nios2 estoy optando por utilizar el verilog-ethernet

https://github.com/alexforencich/verilog-ethernet

ya hice que funcionara el echo por lo que ahora falta modificarlo para hacer la pruebas de envio de datos de la fpga a la laptop y hacer que la computadora guarde estos datos.

---

Estos son los pasos para utilizar ese repositorio primero vas al ejemplo de la de2-115 ejecutas el siguiente comando para generar los archivos,

```bash
make
```
luego para configurar la fpga se ejecuta el siguiente comando,

```bash
make program
```
Dado que la FPGA no tiene servidor DHCP, tu PC necesita una IP fija.

```bash
sudo ip addr flush dev enxc8a362c9957b
sudo ip addr add 192.168.1.100/24 dev enxc8a362c9957b
sudo ip link set enxc8a362c9957b up
```
Reemplaza enxc8a362c9957b con el nombre real de tu interfaz Ethernet (usa ip addr para comprobar).

Ejecuntando esos comando ya se puede recibir el echo desde la fpga utilizando el comando,

```bash
echo "respuesta" | nc -u 192.168.1.128 1234
```
Cuando haces eso, netcat:

1. Abre un socket UDP.

2. Envía el mensaje a la FPGA.

3. Se queda esperando brevemente una respuesta en el mismo socket (puerto efímero).

4. Recibe la respuesta de la FPGA (que hizo eco del mensaje) y lo imprime.

5. Luego cierra el socket.

Y sí, cuando el socket no recibe más datos, tienes que presionar Ctrl+C para cerrarlo porque nc no se cierra automáticamente si está esperando más datos.

