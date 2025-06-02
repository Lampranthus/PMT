# NOTAS, (estas notas estas en orden cronológico por lo que tenga cuidado si lo toma como documentación)

Tomé el ejemplo del filtro FIR que vienen el el libro de electronica digital y logica programable de Troncoso.
Edité el diseño para hacerlo más optimizado ahorrando un par de ciclos de reloj.

![image](https://github.com/user-attachments/assets/b47a8a49-ed06-45d6-8303-a946b4ba8f84)
![image](https://github.com/user-attachments/assets/d91bb32a-f74f-4515-9b15-73374cd954f6)
![image](https://github.com/user-attachments/assets/fc204321-3fb8-424f-a09b-c25dd874c956)
![image](https://github.com/user-attachments/assets/a0110dd6-4556-4c32-84c7-437225c26b01)
![image](https://github.com/user-attachments/assets/038c6349-ff3f-4f5d-b0cb-2d0f6523a3d5)

En la maquina de estados cambie que EOF solo sea 1 en el utimo estado, además que en el utimo estado en vez que el contador se mantenga, este se vuelve a cargar.
Agregé un nuevo estado para que cuando se esté en el ultimo estado donde dispare el EOF si STF esta en 0 se pase a el segunso estado, esto es para ahorrarnos un ciclo de reloj, ya que si es contador pasara al estado 1 el contador se volverá a cargar, lo que ya se hizo en el último estado.

![image](https://github.com/user-attachments/assets/217bf6ae-ad3b-4d7b-908a-f80b1fc4a91c)
![image](https://github.com/user-attachments/assets/7b8995c5-0a66-4b40-add0-ad0124e94c72)

En esta maquina de estados quité la señal LDR y la sustituí por el EOF, así haciendo que la maquina de estados solo tenga dos estados solamente para el RDY, (CREO QUE ESTA MAQUINA DE ESTADOS SE PUEDE QUITAR SI NO SE OCUPA EL RDY!!! esto es porque el EOF y el STF harían todo y esa maquina de estados solo hace la funcion de RDY pero para eso se podía utilizar el EOF directamente). 

![image](https://github.com/user-attachments/assets/09450fbb-d026-45a6-bf3b-d8a19475ad7c)

le quité el maquina de estados y funcina bien, en este ejemplo la entrada es de 18 bits en formato 2.16 signado y se multiplica por coeficientes unitarios de 36 bits con formato 2.34 signados, introduzco un 0.25 decimal (00.01000...) y como se multiplica por 1 y se suma 5 veces el resultado es 1.25 decimal (01.0100....) el resultado se obtiene en 18 bits como en la entrada. como se ve en la simulación el resultado es correcto.

Una vez realizada la simulación, comenzaré con la implementacion, usaré un ADC AD9201

![image](https://github.com/user-attachments/assets/eeb7a07d-18ed-4126-b2cf-0c4f64f2b35b)
![image](https://github.com/user-attachments/assets/833ab65f-f47e-4f58-b23c-c99b0e13800f)

y como salida del sistema utilizaré un DAC DAC7564

![image](https://github.com/user-attachments/assets/012550f1-02d0-409d-b64c-d92459782bb8)

como el ADC es de 10 bits y el dac de 12, tendré que escalar de alguna forma la salida del sistema. Creo que sería bueno hacer que los 2 bits menos significativos del dac sea una cosntante de "00" así que cuando la entrada del adc sea 0 el dac de un voltaje de 0V y cuando la entrada sea maxima el voltaje del dac sea el maximo-3LSB y así lograr de alguna forma centrar la señal de salida.
El Dac cuenta con una referencia de 2.5V pero se puede cambiar, al parecer la del la refeerencia del adc no se puede cambiar solo puede ser o 1V o 2V por defecto, entonces se podría utilizar una refenrenca de 2V tanto para el adc como para el dac asíendo así un LSB de 1.95mV para el adc y 0.49mV para el dac por lo que para cada LSB del adc el dac tiene que sacar 4 para tener la misma salida.

Pensandolo bien, mejor hacemos que la cosntante sea "01" para que el filtro tenga cierto "juego" hacia abajo tambien no solo hacia arriba y haciendo que los cieficientes del filtro sea de 12 bits puede que este "juego" hacia arriba y hacia abajo pueda servir de algo a la salida.

Ahora que ya qued[o un poco mas claro como se va a implementar el filtro necesito cambiar el codigo para que funcione a 10 bits de entrada y 12 de salida.

en la version 1.2 traté de hacer que la mistitplicacion sea de 11 x 13 bits el bit extra de la entrada es para que simule el signo del valor de 10 bits al gunal que el nuevo bit de voeficiente, solo lo probé en el mac y parece que funciona bien, quedando a la salida los 12 bits que iran al dac, la prueba lo hice con punto flotante 2.9 para la entrada y 2.11 para la salida los coeficientes los tengo como la unidad.

![image](https://github.com/user-attachments/assets/0e1976b9-9b6e-4bed-83af-b5c08843dd82)

el filtro con coeficientes 1 hace lo que debería de hacer. ahora falta agregar las partes del control del adc y del dac. para luego hacer una prueba fisica con esos coeficientes y porteriormente encontrar coefienstes para hacer que el filtro sea funcional. aun no se que clase de filtro será solo estpy trabaando en el firmware y la implementacion en fisico.
 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Agregué un codigo que anteriormente había realizado para el DAC que voy a utilizar para ver como funciona, me faltaría ahora hacer un codigo para el ADC solamnte y unir todo, el ADC en su hoja de datos viene este diagrama,

![image](https://github.com/user-attachments/assets/55ea225a-dc44-4f3b-a52d-a0892a49ef61)

donde nos dice que cuando comience la primera conversión de datos, nos tenemos que esperar 3 cliclos de reloj para que el adc nos de el primer dato, despues de los 3 ciclos ya podemos capturas los datos del adc en cualquiera de los 2 canales, estos datos estará por ende retrasados 3 ciclos de reloj. vamos a intentar hacer la captura de datos lo mas rapido posible por lo que la hora de datos nos dice que

![image](https://github.com/user-attachments/assets/1503e406-820e-4802-8a35-fc974ff66d4c)

el ciclo de reloj debe ser por lo menos de 45ns 22.5ns arriba y 22.5ns abajo, por lo que la frecuencia del reloj teiene que ser un maximo de 22.22..Mhz que es lo que nos dice el fabricante. usaré un reloj de 20Mhz para hacerle caso al fabricante, pero antes de eso necesito saber a que velocidad puedo escribir datos en el dac ya que si el dac no puede enviar datos tan rapido se hará un cuello de botella ya que el adc leerá mas datos que los que el adc puede escribir. pero antes de eso tengo que ver a que volocidad se harás las multiplicaciones así si yo leo un dato del adc este tiene que pasar por el filtro y luego se tiene que ecribir en el dac, creo que lo mas lento del sistema será el dac, bien, empecemos con lo que ya tenemos.

numero de ciclos de reloj que le toma al filtro son 5 ciclos de reloj, despues de los primeras 5 operaciones el filtro comenzará a funcionar, el filtro tomará un dato del adc cada 5 ciclos de reloj y 5 ciclos de reloj después el dará una salida de 12 bits que el adc tendrá que recibir y escribir a su salida.

para que no exista un cuello de botella a cada entrada tiene que haber una salida por lo que el tiempo que lee el adc mas el tiempo del filtro mas el tiempo de escritura nos darán el tiempo nimimo total del sistema, y su inversa la frecuencia maxima.

al dac se le tienen que enviar 24 bits de los cuales 8 son de configuracion y 12 son para la salida y 3 no importan, en mi codigo le habia puesto como configuracion 00010000 este cmonado de control registra la entrada y la carga en el canal 0, me dicuenta que mi diseño anterior estaba mal en la arte de que aparte que le decia al dac con ese comando de cargara y escribiera le estaba diciendo por la entrada de load que volviera a carga, por lo que estaba cargando 2 veces.

el SPI es polaridad 1, fase 0,

utilizando en codigo spi que encontre en intenernet pude hacer que la escritua del dac durara 49 ciclos de reloj. por lo que será la parte mas lenta del sistema. ahora bien, recapitulando

en 1 ciclo de reloj se lee un dato por el adc
en 5 ciclos de reloj se procesa el dato y se obtiene una salida
y en 49 ciclos de reloj se escribe una salida.

en este punto si utilizo el reloj máximo para el adc de 20MHz reloj del filtro necesitoará ser 5 veces mas rapido osea 100Mhz pero el reloj del dac necesitará ser 49 veces mas rapido 980Mhz lo que es imposible ya que la transmision maxima a la que puedo enviar los bits al adc es de 50Mhz.

entonces el proceso se tiene que hace tokando en cuanta la parte mas lemta, si escribo a 50Mhz redondearemos a que para ecribir cada dato el dac necesitará de 500ns por lo que el dac necesitara un reloj de 100Mhz, el reloj de fir deve ser 5 veces menos o sea 20Mhz para que en 500ns el ya tenga un resultado, m1entras que para el adc de igual forma le tiene que dar un valor al fir cada 500ns por lo que se utilizará un reloj de 2Mhz.

cada (1/(2 Mhz))=500ns el adc lee un dato, se lo da al filtro este lo procesa en (5/10Mhz)=500ns y le pasa el dato al dac mietras el filtro calcula el siguiente punto, el dac tarda (50/100Mhz)=500ns es escribir el voltaje, por lo tanto el adc estaría muestreando a 2Mhz, y el dac estaría escriubiendo de igual forma a 2Mhz con un retraso de 1us que es lo que tarda e calcular lo datos y escribirlos.

todo est[a mal vuelve a checar los tiempos, realice una maquina de estados mejor para ocntrolar todo, mas sencillo.

ya se solucionó todo al parecer, usaré un pll para alimentar la fpga con un clock de 100Mhz lo que hará que un ciclo de entrada y salida tarde 590ns, de lo unico que me precupé son los timepos, el clock con el quer alimento al adc no es simétrico, lo genera una fsm pero cumple con las caracteristicas de la hoja de datos, al igual que el spi, llego al sclock máximo de 50mhz, la hoj de datos dice que neceito un componente para lograr que funiona con esas volocidades pero lo intentaré así, todo lo demás parece funcionar correctamente, le quité la salida load del dac ya que con la configiracion será suficiente.

mañana intentaré programar todo y hacerlo en físico ya que la simulacion funciona.

hoy voy a utilizar una de2-115 que tiene un cyclone IV par la implementacion, empezaré por sintetiza el codigo para configurar la fpga.
ya se hizo la sitentizacion y casi termino la conexxiones a las fpga, mañana termino de conectar y hago la primera prueba,

el filtro ya funciona fisicamente parece que la frecuencia de muestre quedó el 1/590ns=1694915.254237288 Hz ahora bien, comenzaremos con el diseño del filtro el matlab
utilizando la herramienta filterDesigner en matlab colocamos el tipo de filtro la frecuencia de muestre y la de corte y el tipo de filtro y le damos a diseñar filtro

![image](https://github.com/user-attachments/assets/b93aa8e9-8ae2-4300-97ec-ccef00ff0740)

pare que un filtro de orden 4 no funciona muy bien, intentaré cambiar a un filtro de orde 50 que es como se muestra a continuacion

![image](https://github.com/user-attachments/assets/4e7c92c2-900f-4d2d-90bf-aeacaee88beb)

redondee la frecuencia de muestreo en 1/600ns o 1.666666MHZ eso lo hice con las maquina de estados de del RTF, lo que paso ahora es que la entrada y la salida se desfasan.  

ahora bien, parece ser que necesitamos que el filtro sea de un orden muy grande, vamos a hacer el filtro de orden 100, por o que tenemos que cambiar algunas cosas, tambien necesitamos sincronizar la entrada con la toma de datos, esto lo podemos hacer con una entrada ttl tambien sacada del generador de funciones que est[e sicronizada con la entrada del adc para hacer la sincronizacion de las señales y evitar el desfase que se muestra, tambien necesitamos bajar la frecuencia de muestreo parece ser que es muy rapida, la haremos de 100khz usitlizando matlab parece que que con estos parametros los coeficientes se ven bien, ya que de otra forma los coeficientes son puros positivos lo que parecería extraño ya que el el Mac se desbordaría en algun momento ya que no se restaria ningun valor solo habria sumas,

![image](https://github.com/user-attachments/assets/b5f40fa5-ad3d-4dd4-b83c-6888d1185617)

me pasaron un codigo en matlab que genera el codigo vhdl para los coeficientes


![image](https://github.com/user-attachments/assets/d83851c5-b5fa-443c-9231-03e09fd82895)

mejor orden 50 mas sencillo. cambié la frecuencia de muetreo a 100khz con un contador bt que me ayuda a esperar 10us en cada lectura.

![arreglo experimental](https://github.com/user-attachments/assets/bb335772-1a09-4e33-9869-8cfa7c5cffdc)

ya termine, dejé siempre de orden 50 y frecuencia de corte de 1khz y frecuencua de muestreso de 100khz, la frecuencia de corte se puede editar cambiando los coeficientes con el codigo de troncoso. pero si quieres cambiar la frecuenca de muestreo o el orden del filtro tendras que editar el codigo vhdl directamente ya que eso se controla mediente hardware.

![image](https://github.com/user-attachments/assets/bea14dc9-ebee-41c6-8f54-80aa67ee747d)

![image](https://github.com/user-attachments/assets/b471f04a-bd12-49ee-96f7-d16464f5adcd)

![image](https://github.com/user-attachments/assets/4b88f134-50ef-469e-9362-6c653e439ed1)

![image](https://github.com/user-attachments/assets/88d1b8cd-44c2-4668-a5b4-734e67846b42)

![image](https://github.com/user-attachments/assets/09d48c07-840f-45d3-80aa-6b74d72bb5c3)

![image](https://github.com/user-attachments/assets/feed5b05-aac0-47b8-859c-b903b7ecfe3c)

![image](https://github.com/user-attachments/assets/79a220b7-fce7-4fc4-9556-75844b5abc4e)

![image](https://github.com/user-attachments/assets/239b83bf-7bcd-48ee-aef1-70b60b90606e)

estos son las caracteristicas del filtro pasa bajas, es de tipo windowod y es tipo blackman.

este es el resultado de la simulacion con trigger con duty de 80% a 70Khz como se hizo tambien con el generador de funciones


![image](https://github.com/user-attachments/assets/c944c37d-fe39-44e5-bd2c-f7e2601150ee)

![712us](https://github.com/user-attachments/assets/fb0c7549-ec89-4103-88d9-b0c2a7d5bbea)

en completar las 50 cuentas tarda 714us lo que concuerda con lo medido por el osciloscopio

![image](https://github.com/user-attachments/assets/e9240750-7412-4061-bec1-a37c6f3153af)

![14 3us](https://github.com/user-attachments/assets/9a9473ab-257f-49c3-adce-f58fde40da8d)

de la misma fiorma para hacer un ciclo tada 14.3us como tambien se muestra en el scilocopio, este valor cambia con la frecuencia del trigger ya que si subiemos la freciencia del trigger la crefucnia de un solo ciclo cambia como se muestra tambien en el ociloscopio.

a 90Khz

![90kzh](https://github.com/user-attachments/assets/acdff1e8-ea3a-46ad-a341-ea7bec89bbf8)

![image](https://github.com/user-attachments/assets/2f44f4f0-eab9-4323-959a-fcadd1c153bf)

![500hz](https://github.com/user-attachments/assets/cf4f2411-5bd7-462d-b3c1-1f6389376080)

![image](https://github.com/user-attachments/assets/bc9fc701-5c70-4f15-aa74-3c97c8d1581a)

![11us](https://github.com/user-attachments/assets/feb3fb0c-086a-4565-a92e-e2903e8e8ade)

esta frecuencia es la frecuencia del la señal trigger que es la que va a sincronizar la lectura del adc, cuando el trigger esta en alto se activa la lectura del adc a 100khz. y la frecuencia de este trigger se dejó en 90khz o 70khz ya que en esos valores la señal de salida del dac se mantenia establa y pero si cambiabas a valores cercanos como a 80 khz la señal de salida variaba mucho por alguna razon esto debe ser tall vez por el duty del trigger o algo parecido.

atenuacion 

500hz 1khz 2khz 3khz 4khz 10khz.

![500hz](https://github.com/user-attachments/assets/e4c5f50d-ecd7-42b4-b43f-c879e44e7988)
![1khz](https://github.com/user-attachments/assets/5cc480aa-647e-49a1-b4b6-531be5ba77a4)
![2khz](https://github.com/user-attachments/assets/bbe07455-1644-41bd-ac5e-504d3023fb70)
![3kzh](https://github.com/user-attachments/assets/0dbafc99-3730-4571-91ad-f7a710c64d91)
![4khz](https://github.com/user-attachments/assets/306a9b2d-d685-48ce-97ae-494ac36bb92c)
![10khz](https://github.com/user-attachments/assets/2ee11bc1-8518-4349-b98a-4270684df7fd)

se ve qu si hay atenuancion

nota el ruido que se ve de entrada es el ruido de la electronica digital misma, la alimentacion del adc es de 3.3v para la digital use la fuente de 3.3v de la fpga y para la parte analogica 3.3v de una fuente lineal, en cuento a las referencias utilikce las por defecto del dac y del adc que soy de 2.5v y 1v respectivamente. como entrada a mi sitema utilice una senoidal de 200hz de 50mv a 200mv para que funcionara correctamente. el fitro hasta este punto funciona con esos paramentros. 

esta es el rtl de mi diseño fpga final

![image](https://github.com/user-attachments/assets/bb4acbd1-4e94-4715-8d8c-ab9fa7fa6111)
