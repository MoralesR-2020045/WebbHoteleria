<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- Declaración de la librería JSTL (JSP Standard Tag Library) para utilizar etiquetas JSP estándar -->

<%@ page contentType="text/html;charset=UTF-8" language="java" %> <!-- Configuración de la página JSP para utilizar UTF-8 como codificación de caracteres -->

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> <!-- Define la codificación de caracteres para el documento HTML -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- Configuración para hacer la página responsiva en diferentes dispositivos -->
        <title>Formulario de Empleados</title> <!-- Título de la página que se mostrará en la pestaña del navegador -->
        <link rel="icon" type="image/png" href="../Assets/Image/iconoHotel.png"> <!-- Favicon para la página, se utiliza un icono específico para el sitio web -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"> <!-- Enlace al archivo CSS de Bootstrap 5 para utilizar sus estilos y componentes -->

        <!-- Estilos personalizados para la página -->
        <style>
            .color-titulo {
                color: #00382b; /* Color personalizado para el título */
                font-size: 4rem; /* Tamaño de fuente del título */
            }

            body,
            html {
                background-image: url('../Assets/Image/imagenFondo.jpeg'); /* Imagen de fondo para el cuerpo de la página */
                background-size: cover; /* La imagen de fondo cubrirá toda la pantalla */
                background-repeat: no-repeat; /* La imagen de fondo no se repetirá */
                background-attachment: fixed; /* La imagen de fondo se mantendrá fija al hacer scroll */
                height: 100%; /* Altura del 100% para el cuerpo y HTML */
                margin: 0; /* Sin márgenes para el cuerpo y HTML */
                font-family: Glacial Indifference; /* Fuente personalizada para el texto de la página */
            }

            nav.navbar {
                background-color: #00382b; /* Color de fondo de la barra de navegación */
                border-right: 1px solid #ccc; /* Borde derecho para la barra de navegación */
            }

            .navbar-collapse {
                padding: 0; /* Sin padding para el colapso de la barra de navegación */
            }

            .navbar-nav {
                list-style-type: none; /* Sin lista de estilos para los elementos de navegación */
                padding-left: 0; /* Sin padding a la izquierda para los elementos de navegación */
            }

            .navbar-nav li {
                padding: 10px; /* Padding de 10px para cada elemento de navegación */
            }

            .navbar-nav li a {
                color: white; /* Color del texto de los enlaces de navegación */
                text-decoration: none; /* Sin subrayado para los enlaces */
            }

            .navbar-nav li a:hover {
                text-decoration: underline; /* Subrayado al pasar el ratón por encima de los enlaces */
            }

            .dropdown-toggle {
                background-color: transparent !important; /* Color de fondo transparente para el botón desplegable */
                border: none; /* Sin borde para el botón desplegable */
            }

            .dropdown-toggle img {
                height: auto; /* Altura automática para la imagen del botón desplegable */
                width: 30px; /* Ancho de 30px para la imagen */
                margin-right: 5px; /* Margen derecho de 5px para la imagen */
            }

            .color-menu {
                background-color: #2d8570; /* Color de fondo personalizado para el menú */
                color: #2d8570; /* Color del texto para el menú */
            }

            .color-menu:hover {
                background-color: #2d8570; /* Color de fondo al pasar el ratón por encima del menú */
            }

            .color-titulo {
                color: #00382b; /* Color del texto del título */
                font-size: 4rem; /* Tamaño de fuente para el título */
            }

            .navbar-nav li a {
                color: #2d8570; /* Color del texto para los enlaces de navegación */
                text-decoration: none; /* Sin subrayado para los enlaces */
                transition: color 0.3s ease, font-size 0.2s ease; /* Transición para cambios de color y tamaño de fuente */
                font-size: 1.2rem; /* Tamaño de fuente para los enlaces de navegación */
            }

            .navbar-nav li a:hover {
                color: #58b09b; /* Color del texto al pasar el ratón por encima de los enlaces */
            }

            .offcanvas {
                position: fixed; /* Posición fija para el menú lateral */
                top: 0; /* Alineado en la parte superior */
                right: 0; /* Alineado a la derecha */
                bottom: 0; /* Alineado en la parte inferior */
                width: 250px; /* Ancho del menú lateral */
                background-color: #00382b; /* Color de fondo del menú lateral */
                padding: 10px; /* Padding de 10px para el contenido del menú */
                transform: translateX(100%); /* Mover fuera de la vista inicialmente */
                transition: transform 0.3s ease; /* Transición para mostrar el menú */
            }

            .offcanvas.show {
                transform: translateX(0); /* Mostrar el menú cuando está activo */
            }

            .offcanvas ul {
                list-style-type: none; /* Sin lista de estilos para los elementos del menú */
                padding: 0; /* Sin padding para los elementos del menú */
            }

            .offcanvas li {
                padding: 10px; /* Padding de 10px para cada elemento del menú */
            }

            .offcanvas a {
                color: #fff; /* Color del texto para los enlaces del menú */
                text-decoration: none; /* Sin subrayado para los enlaces del menú */
            }

            .offcanvas a:hover {
                text-decoration: underline; /* Subrayado al pasar el ratón por encima de los enlaces del menú */
            }
        </style>
    </head>
    <body> 
        <nav class="navbar navbar-expand-lg"> <!-- Barra de navegación principal -->
            <div class="container-fluid"> <!-- Contenedor fluido para la barra de navegación -->
                <a class="navbar-brand" href="../index.jsp"> <!-- Enlace al inicio -->
                    <img src="../Assets/Image/logo.png" alt="Imagen Logo" style="height: 150px; width: 200px"> <!-- Logo del sitio web -->
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span> <!-- Botón para colapsar la barra de navegación en dispositivos pequeños -->
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent"> <!-- Contenedor colapsable de la barra de navegación -->
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0"> <!-- Lista de elementos de navegación -->
                    </ul>
                </div>
                
                <div id="myOffcanvas" class="offcanvas">
                    <ul class="navbar-nav">
                        <li><a class="nav-link" href="../../HotelMaquq/huespedes-servlet">Huéspedes</a></li>
                        <li><a class="nav-link" href="../../HotelMaquq/servicio-Servlet">Servicios</a></li>
                        <li><a class="nav-link" href="../../HotelMaquq/empleados-servlet">Empleados</a></li>
                        <li><a class="nav-link" href="../../HotelMaquq/habitaciones-servlet">Habitaciones</a></li>
                        <li><a class="nav-link" href="../../HotelMaquq/tipoDeHabitacion-servlet">Tipo de Habitación</a></li>
                        <li><a class="nav-link" href="../../HotelMaquq/reservaciones-servlet">Reservas</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <br> <!-- Espaciador -->
        <br> <!-- Espaciador -->
        <br> <!-- Espaciador -->
        <div class="container d-flex justify-content-center"> <!-- Contenedor para centrar el título -->
            <h1 class="display-5 text-center color-titulo">Empleados</h1> <!-- Título principal de la página -->
        </div>

        <div class="container mt-5"> <!-- Contenedor principal para el formulario -->
            <form action="../../HotelMaquq/empleados-servlet" method="POST" enctype="multipart/form-data"> <!-- Formulario con acción a un servlet -->
                <div class="form-floating mb-3"> <!-- Campo de texto con el estilo de Bootstrap (form-floating) -->
                    <input type="text" class="form-control" id="nombreEmpleado" name="nombreEmpleado" placeholder=""> <!-- Entrada de texto para el nombre del empleado -->
                    <label for="nombreEmpleado">Nombre del empleado</label> <!-- Etiqueta flotante para el campo de texto -->
                </div>
                <div class="form-floating mb-4"> <!-- Campo de texto con el estilo de Bootstrap (form-floating) -->
                    <input type="text" class="form-control" id="apellidoEmpleado" name="apellidoEmpleado" placeholder=""> <!-- Entrada de texto para el apellido del empleado -->
                    <label for="apellidoEmpleado">Apellidos del empleado</label> <!-- Etiqueta flotante para el campo de texto -->
                </div>
                <!-- Campo de Contraseña -->
                <div class="row g-3 align-items-center"> <!-- Fila para el campo de contraseña -->
                    <div class="col-auto"> <!-- Columna para la etiqueta de contraseña -->
                        <label for="inputPassword6" class="col-form-label">Contraseña del empleado</label> <!-- Etiqueta para el campo de contraseña -->
                    </div>
                    <div class="col-auto"> <!-- Columna para el campo de entrada de contraseña -->
                        <input type="password" id="contraseña" class="form-control" name="contraseña" aria-describedby="passwordHelpInline"> <!-- Campo de entrada de contraseña -->
                    </div>
                    <div class="col-auto"> <!-- Columna para el texto de ayuda sobre la contraseña -->
                        <span id="passwordHelpInline" class="form-text">
                            Debe tener entre 8 y 20 caracteres. <!-- Texto de ayuda para la longitud de la contraseña -->
                        </span>
                    </div>
                </div>
                <!-- Fin del Campo de Contraseña -->
                <br> <!-- Espaciador -->

                <div>
                    <!-- Boton del envio del formulario a la base de datos-->
                    <input class="btn btn-success" style="background-color: #0F5746; color: #ffffff; width: 150px; height: 50px; font-size: 1.2rem;" type="submit" value="Agregar">
                </div>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script> <!-- Enlace al archivo JavaScript de Bootstrap para funcionalidad de componentes dinámicos -->
    </body>
</html>
            