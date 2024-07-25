
<img src="https://github.com/user-attachments/assets/91aa1d8f-ee7b-480a-9401-83bdbea97584" alt="Página Principal" width="300" height="200">


# WebbHoteleria 🏨


## Indice
1. [Objetivo Del Programa](#objetivo-del-programa)
2. [Descarga del Programa](#descarga-del-programa)
3. [Introducción al Manejo y Navegacion del Programa](#introducción-al-manejo-y-navegacion-del-programa)
4. [Funcionalidades](#funcionalidades)
5. [Posibles Problemas](#posibles-problemas)
---
### 🔍 Objetivo Del Programa.

El objetivo del Programa web es facilitar el registro de los próximos huéspedes con distintas funcionalidades para hacer más fácil y accesible el registro de los clientes, el manejo web de la aplicación permite agilizar que los clientes puedan registrarse, asignar los servicios que quieren, proporcionar al hotel su método de pago al hotel, poder reservar su habitación de los distintos tipos que hay y finalmente pagar su cuenta final.

La comodidad del usuario al registrarse y poder llenar los formularios es la parte más importante del programa web, es por eso que ese está construido de manera que el cliente pueda navegar de la manera más rápida y pueda informarse de todo lo que ofrece el hotel desde la página principal y luego poder acceder de manera rápida desde la barra de navegación a cada formulario para su registro.

---

## 📌Descarga del Programa.

- Opcion 1: Descarga desde Git Hub (Debe estar en la rama main) .
 
1. - Dirija el cursor hacia el pequeño cuadro verde que dice [< > Code ].
2. - Presione una vez para desplegar el menú para su descarga.
3. - Dirija el cursor al apartado del menú desplegado que dice *Download ZIP*  .
4. - Presione una vez en el apartado para realizar la descarga.
5. - Descomprime y Monte su proyecto en Apache NetBeans 22.

<img src="https://github.com/user-attachments/assets/22170b21-6656-4cb5-ac8b-0187cf138319" alt="Ejemplo 1" width="800" height="400">

---

- Opción 2: Descargar del Repositorio con git (Debe estar en la rama main).

1. - Dirija el cursor hacia el pequeño cuadro verde que dice [< > Code ].
2. - Presione una vez para desplegar el menú para su descarga.
3. - Dirija el cursor al apartado del menú desplegado donde se encuentra el signo de Copiar para copiar el enlace.


<img src="https://github.com/user-attachments/assets/9546a5be-47cd-45cb-bc3e-817c6c2bd79d" alt="Ejemplo 2" width="800" height="400">


5. - Diríjase al escritorio de Windows y cree una nueva carpeta.
6. - Diríjase a la barra de la dirección de la carpeta.
7. - Borre la dirección y escriba cmd y presione ENTER.
   
<img src="https://github.com/user-attachments/assets/88073573-02b7-4723-bfd6-8369d830c19b" alt="Ejemplo 3" width="800" height="400">

8. -  Al abrirse la ventana de cmd escriba el siguiente comando *git clone: * y pegue el enlace del repositorio que copio anterior mente.
9. - Presione ENTER y espere que termine la clonación del archivo.
10. - Por ultimo abra Apache NetBeans 22.
11. - Abra la Carpeta donde está el proyecto y ejecútelo.  


---
## 🛠Introducción al Manejo y Navegacion del Programa.

- Navegacion del Programa

El programa se rije por el index el cual es la página principal del hotel, una barra de navegación que funciona para ver los distintos servicios e información de lo que ofrece el hotel, también
al mismo tiempo en este apartado se encuentra el acceso a los diferentes formularios para los clientes que quieran registrarse como huéspedes en el hotel.
También hay formularios para que los administradores puedan ingresar nuevo personal y nuevos servicios al hotel.

<img src="https://github.com/user-attachments/assets/d7ae471c-14e8-4e9f-80cc-b7bbc5cde6cb" alt="Ejemplo 4" width="800" height="400">

---

- Navegación y manejo en los Formularios y Listas

En el pequeño menú que se encuentra en el index hasta la parte de arriba se encuentra un pequeño apartado el cual se llama formularios, al presionarlo se despliega un pequeño menú
con los formularios, al presionar uno de estos este nos redirige a la vista de listar en la cual se presentan los datos ingresados por el cliente o el administrador.
En la vista de listar también se presenta la opción para agregar más datos, al presionarlo nos llevara al apartado del formulario correspondiente de la lista para que pueda ser llenado por completo y agregarlo a la lista que guarda sus datos en una base de datos echa en MysQL. 

<img src="https://github.com/user-attachments/assets/d9dc0119-6b7e-4e41-9c83-77dc1f1ff2dc" alt="Ejemplo 5" width="800" height="400">

<img src="https://github.com/user-attachments/assets/386b2a85-a70e-4493-bbf3-08cafa0cc000" alt="Ejemplo 6" width="800" height="400">

---
## 🔨Funcionalidades.
- `Funcionalidad 1`: Listar
  #Presente en las Siguientes Entidades.
 
 - - Huéspedes.
 - - Servicio.
 - - MetodoDePago.
 - - Empleados.
 - - TipoDeHabitacion.
 - - Habitaciones.
 - - Habitaciones.
 - - Pago.
     
- `Funcionalidad 2`: Agregar Datos
  #Presente en las Siguientes Entidades.

 - - Huéspedes.
 - - Servicio.
 - - MetodoDePago.
 - - Empleados.
 - - TipoDeHabitacion.
 - - Habitaciones.
 - - Habitaciones.
 - - Pago.
     
---
## ⚙Posibles Problemas.
- Ingreso incorrecto de los campos solicitados
 
- - Ingreso de caracteres con campos equivocados o incompatibles:
    El ingreso de datos en los campos equivocados o incompatible puede generar un error en la parte del código del programa web que maneja la lógica del programa, provocando que el formulario no pueda ser recibido
    y registrado por la base de datos por la incompatibilidad de los datos.
    Se recomienda que se lean los campos de los datos solicitados antes de ser rellenados y enviados para evitar este problema en los formularios y así no tener conflictos con los servelet de la clase que sea el formulario. 

- - Campos vacíos en los distintos campos de ingreso de Datos:
    Dejar campos sin rellenar en los distintos formularios del programa puede provocar errores de información nula y de Excepciones de información, ya que la parte de la lógica al recibir
    estos campos vacíos este empieza a tener conflictos con el registro, lo cual provoca la falla al intentar registrar la información en la base de datos para después ser impresa en la lista de la dicha clase.

    Se recomienda que el usuario o cliente para evitar este error verifique si falta algún campo por rellenar.

<img src="https://github.com/user-attachments/assets/1cbf0c5a-d1ff-4803-8af2-179ad70435c6" alt="Ejemplo 7" width="800" height="400">

---





