

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Estas líneas importan las librerías JSTL y configuran la página para que use UTF-8 -->

<!-- 
    Autor: Brayan Toyom
    Descripción: Página para agregar huéspedes
-->

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Formulario de Huéspedes</title>
        <link rel="icon" type="image/png" href="../Assets/Image/iconoHotel.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

        <!-- El estilo de la página -->
        <style>
            .color-titulo {
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
            .color-menu {
                background-color: #2d8570;
                color: #2d8570;
            }
            .color-menu:hover {
                background-color: #2d8570;
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
    <body>
        <!-- Esta es la barra de navegación -->
        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid">
                <a class="navbar-brand" href="../index.jsp">
                    <img src="../Assets/Image/logo.png" alt="Imagen Logo" style="height: 150px; width: 200px">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!-- El contenido del menú -->
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0"></ul>
                </div>
                <!-- Este es el menú desplegable -->
                <div id="myOffcanvas" class="offcanvas">
                    <ul class="navbar-nav">
                        <li><a class="nav-link" href="../../HotelMaquq/metodoDePago-servlet">Metodo de Pago</a></li>
                        <li><a class="nav-link" href="../../HotelMaquq/servicio-Servlet">Servicios</a></li>
                        <li><a class="nav-link" href="../../HotelMaquq/empleados-servlet">Empleados</a></li>
                        <li><a class="nav-link" href="../../HotelMaquq/habitaciones-servlet">Habitaciones</a></li>
                        <li><a class="nav-link" href="../../HotelMaquq/tipoDeHabitacion-servlet">Tipo de Habitación</a></li>
                        <li><a class="nav-link" href="../../HotelMaquq/reservaciones-servlet">Reservas</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <br><br><br>
        <!-- Este es el título de la página -->
        <div class="container d-flex justify-content-center">
            <h1 class="display-5 text-center color-titulo">Formulario de Huéspedes</h1>
        </div>
        <!-- Este es el formulario para agregar huéspedes -->
        <div class="container mt-5">
            <form action="../../HotelMaquq/huespedes-servlet" method="POST" enctype="multipart/form-data">
                <div class="form-floating mb-3">
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="input-group mb-3">
                            <span class="input-group-text" style="background-color: #a3c3b8;"><img src="../Assets/Image/iconoNIT.png" alt="Imagen NIT" style="width: 30px;"></span>
                            <div class="form-floating">
                                <input type="text" class="form-control" id="nit" name="nit" placeholder="">
                                <label for="nit">No. Nit</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="input-group mb-3">
                            <span class="input-group-text" style="background-color: #a3c3b8;"><img src="../Assets/Image/iconoDPI.png" alt="Imagen DPI" style="width: 30px;"></span>
                            <div class="form-floating">
                                <input type="text" class="form-control" id="dpi" name="dpi" placeholder="">
                                <label for="dpi">No. DPI</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text" style="background-color: #a3c3b8;"></span>
                    <div class="form-floating">
                        <input type="text" class="form-control" id="nombreDelHuesped" name="nombreDelHuesped" placeholder="">
                        <label for="nombreDelHuesped">Nombres Completos</label>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text" style="background-color: #a3c3b8;"></span>
                    <div class="form-floating">
                        <input type="text" class="form-control" id="apellidoDelHuesped" name="apellidoDelHuesped" placeholder="">
                        <label for="apellidoDelHuesped">Apellidos Completos</label>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text" style="background-color: #a3c3b8;"><img src="../Assets/Image/iconoT.png" alt="Imagen Telefono" style="width: 30px;"></span>
                    <div class="form-floating">
                        <input type="text" class="form-control" id="telefono" name="telefono" placeholder="">
                        <label for="telefono">No. Telefono</label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="input-group mb-3">
                            <span class="input-group-text" style="background-color: #a3c3b8;"><img src="../Assets/Image/iconoEmail.png" alt="Imagen Email" style="width: 30px;"></span>
                            <div class="form-floating">
                                <input type="text" class="form-control" id="email" name="email" placeholder="">
                                <label for="email">Correo Electronico</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="input-group mb-3">
                            <span class="input-group-text" style="background-color: #a3c3b8;"><img src="../Assets/Image/iconoContraseña.png" alt="Imagen Contraseña" style="width: 30px;"></span>
                            <div class="form-floating">
                                <input type="password" class="form-control" id="contraseña" name="contraseña" placeholder="">
                                <label for="contraseña">Contraseña</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div>            
                    <input class="btn btn-outline-success" style="background-color: #0F5746; color: #ffffff; width: 150px; height: 50px; font-size: 1.2rem;" type="submit" value="Agregar">
                </div>
            </form>
            <br>
            <br>
            <br>
        </div> 
        <!-- Estos son los scripts de Bootstrap -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
