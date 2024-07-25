<!-- JSP Formulario Metodo de Pago -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Indica que se va a utilizar lenguaje java -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <!-- Codificación de caracteres utilizados -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Controla la vista del contenido en distintos moviles-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Formulario de Tipo de Habitación</title>
        <link rel="icon" type="image/png" href="../Assets/Image/iconoHotel.png">
        <!-- Link de estilos boostrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

        <!-- Estilos CSS -->
        <style>
            .color-titulo{
                color: #00382b;
                font-size: 4rem;
            }

            body,
            html {
                background-image: url('../Assets/Image/imagenFondo.png');
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
                height: 100%;
                margin: 0;
                font-family: Glacial Indifference;
            }

            nav.navbar {
                background-color: #00382b;
                border-right: 1px solid #ccc;
            }

            .navbar-collapse {
                padding: 0;
            }

            .navbar-nav {
                list-style-type: none;
                padding-left: 0;
            }

            .navbar-nav li {
                padding: 10px;
            }

            .navbar-nav li a {
                color: white;
                text-decoration: none;
            }

            .navbar-nav li a:hover {
                text-decoration: underline;
            }

            .dropdown-toggle {
                background-color: transparent !important;
                border: none;
            }

            .dropdown-toggle img {
                height: auto;
                width: 30px;
                margin-right: 5px;
            }

            .color-menu{
                background-color: #2d8570;
                color: #2d8570;
            }

            .color-menu:hover {
                background-color: #2d8570;
            }

            .color-titulo{
                color: #00382b;
                font-size: 4rem;
            }

            .navbar-nav li a {
                color: #2d8570;
                text-decoration: none;
                transition: color 0.3s ease, font-size 0.2s ease;
                font-size: 1.2rem;
            }

            .navbar-nav li a:hover {
                color: #58b09b;
            }

            .offcanvas {
                position: fixed;
                top: 0;
                right: 0;
                bottom: 0;
                width: 250px;
                background-color: #00382b;
                padding: 10px;
                transform: translateX(100%);
                transition: transform 0.3s ease;
            }

            .offcanvas.show {
                transform: translateX(0);
            }

            .offcanvas ul {
                list-style-type: none;
                padding: 0;
            }

            .offcanvas li {
                padding: 10px;
            }

            .offcanvas a {
                color: #fff;
                text-decoration: none;
            }

            .offcanvas a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <!-- Cuerpo de la pagina -->
    <body> 
        <!-- Barra de navegación-->
        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid">
                <a class="navbar-brand" href="../index.jsp">
                    <img src="../Assets/Image/logo.png" alt="Imagen Logo" style="height: 150px; width: 200px">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    </ul>
                </div>
                <div id="myOffcanvas" class="offcanvas">
                    <ul class="navbar-nav">
                        <li><a class="nav-link" href="../../HotelMaquq/huespedes-servlet">Huéspedes</a></li>
                        <li><a class="nav-link" href="../../HotelMaquq/servicio-Servlet">Servicios</a></li>
                        <li><a class="nav-link" href="../../HotelMaquq/empleados-servlet">Empleados</a></li>
                        <li><a class="nav-link" href="../../HotelMaquq/habitaciones-servlet">Habitaciones</a></li>
                        <li><a class="nav-link" href="../../HotelMaquq/metodoDePago-servlet">Metodo de Pago</a></li>
                        <li><a class="nav-link" href="../../HotelMaquq/reservaciones-servlet">Reservas</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <br>
        <br>
        <br>
        <!-- Titulo de la pagina -->
        <div class="container d-flex justify-content-center">
            <h1 class="display-5 text-center color-titulo">Tipo de Habitación</h1>
        </div>

        <div class="container mt-5">
            <!-- Formulario para agregar el metodo tipo de habitación -->
            <form action="../../HotelMaquq/tipoDeHabitacion-servlet" method="POST" enctype="multipart/form-data">
                <!-- Label para ingresar los datos-->
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="nombreTipoDeHabitacion" name="nombreTipoDeHabitacion" placeholder="">
                    <label for="nombreTipoDeHabitacion">Nombre de Habitación</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="descripcion" name="descripcion" placeholder="">
                    <label for="descripción">Descripción</label>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="input-group mb-3">
                            <span class="input-group-text" style="background-color: #a3c3b8;"><img src="../Assets/Image/iconoCantidad.png" alt="Imagen Capacidad" style="width: 30px;"></span>
                            <div class="form-floating">
                                <input type="text" class="form-control" id="capacidad" name="capacidad" placeholder="">
                                <label for="capacidad">Cantidad de Personas</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="input-group mb-3">
                            <div class="form-floating">
                                <input type="text" class="form-control" id="tamañoEnMetrosCuadrados" name="tamañoEnMetrosCuadrados" placeholder="">
                                <label for="tamañoEnMetrosCuadrados">Tamaño de Habitación</label>
                            </div>
                            <span class="input-group-text" style="background-color: #a3c3b8;">m^2</span>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="input-group mb-3">
                            <span class="input-group-text" style="background-color: #a3c3b8;"><img src="../Assets/Image/iconoCama.png" alt="Imagen Camas" style="width: 30px;"></span>
                            <div class="form-floating">
                                <input type="text" class="form-control" id="numeroDeCamas" name="numeroDeCamas" placeholder="">
                                <label for="numeroDeCamas">No. Camas</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="input-group mb-3">
                            <span class="input-group-text" style="background-color: #a3c3b8;">Q</span>
                            <div class="form-floating">
                                <input type="text" class="form-control" id="precioBase" name="precioBase" placeholder="">
                                <label for="precioBase">Precio Base</label>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Boton del envio del Formulario -->
                <div>            
                    <input class="btn btn-outline-success" style="background-color: #0F5746; color: #ffffff; width: 150px; height: 50px; font-size: 1.2rem;" type="submit" value="Agregar">
                </div>
                <br>
                <br>
                <br>
            </form>
        </div>
        <!-- Script para cargar Bootstrap -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
