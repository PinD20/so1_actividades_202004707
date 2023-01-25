Universidad de San Carlos de Guatemala
 
Facultad de Ingeniería

Escuela de Ciencias y Sistemas

Sistemas Operativos 1
<br><br><br><br><br><br><br><br>

# **Kernel de un Sistema Operativo**

<br><br><br><br><br><br><br><br>

Enrique Alejandro Pinula Quiñonez - 202004707

<br><br><br><br><br><br><br>
Guatemala, Enero 2023.
<br><br><br><br><br><br><br><br><br><br><br>

  
# **TIPOS DE KERNEL**
El kernel se encuentra en el centro del sistema oeprativo y controla todas las funciones importantes del hardware. 
Existen tres tipos de kernel, los cuales son:

- **Kernel Monolítico**: Es un kernel grande para todas las tareas. Es el único responsable de la gestión de la memoria y de los procesos, de la comunicación entre procesos y proporciona funciones de soporte de drivers y hardware. Los sistemas operativos que usan el kernel monolítico son Linux, OS X y Windows.

- **Microkernel**: El microkernel se ha diseñado intencionadamente de un tamaño pequeño para que en caso de fallo no paralice todo el sistema operativo. No obstante, para que pueda asumir las mismas funciones que un kernel grande, está dividido en varios módulos. Como ejemplo de aplicación solo existe el componente Mach de OS X, ya que hasta ahora no hay ningún sistema operativo con microkernel.

- **Kernel híbrido**: La combinación del kernel monolítico y el microkernel se denomina kernel híbrido. En este caso, el kernel grande se hace más compacto y modulable. Otras partes del kernel pueden cargarse dinámicamente. Esto ya ocurre en cierta medida en Linux y OS X.

<br><br><br><br><br><br><br><br><br><br><br>

# **USER VS KERNEL MODE**
El modo usuario (User Mode) se trata del conjunto de instrucciones que puede ejecutar una aplicación. El conjunto de instrucciones que se pueden ejecutar en este modo representa un subconjunto del total de las instrucciones que ofrece el procesador.
<br><br><br>
El modo kernel (Kernel Mode) ofrece acceso a todo el conjunto de instrucciones del procesador y recursos del sistema, por tanto, incluye también el conjunto de instrucciones del modo usuario. Es el modo en el que se ejecuta el núcleo del sistema operativo.
<br><br><br>

## **Diferencias**

| User Mode | Kernel Mode |
|----------|-----------|
|El programa se ejecuta de forma restringida|El programa tiene acceso de forma directa y sin restricciones a los recursos del sistema |
|En caso de un fallo, sólo un proceso falla|Un fallo puede provocar que todo el sistema operativo deje de funcionar|
|Todos los procesos tiene distintas direcciones virtuales|Todos los procesos comparten la misma dirección virtual|
