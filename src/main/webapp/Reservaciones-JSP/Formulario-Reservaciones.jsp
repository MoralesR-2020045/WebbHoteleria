<%-- 
    Document   : Formulario-Reservaciones
    Created on : 22/07/2024, 19:15:45
    Author     : HP
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Formulario de Métodos de Pago</title>
        <link rel="icon" type="image/png" href="../assets/Images/iconoHotel.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"> <!-- Font Awesome CSS -->
        <style>
            .color-titulo {
                color: #00382b;
                font-size: 4rem;
            }
            body, html {
                background-image: url('Image/cc.jpg');
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
                background-color: #fff;
                color: #fff;
            }
            .color-menu:hover {
                background-color: #fff;
            }
            .navbar-nav li a {
                color: #fff;
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
            .fa-calendar {
                font-size: 2.77em; /* Ajusta el tamaño aquí */
                border-radius: 0; /* Esquinas rectas */
            }
            .input-group-text {
                border-radius: 0 !important; /* Asegurarse que el contenedor tenga esquinas rectas */
            }
            .icon-d {
                display: flex;
                align-items: center;
                justify-content: center;
                width: 43px; /* Ajusta el tamaño aquí */
                height: 58px; /* Ajusta el tamaño aquí */
                font-size: 1.3em; /* Ajusta el tamaño de la letra aquí */
                color: #fff; /* Ajusta el color aquí */
                background-color: #00382b; /* Fondo blanco para el ícono */
                border-radius: 50%; /* Hace que el fondo sea circular */
                border: 1px solid #ccc; /* Opcional: agrega un borde */
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid">
                <a class="navbar-brand" href="../index.jsp">
                    <img src="../assets/Images/logo.png" alt="Imagen Logo" style="height: 150px; width: 200px">
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
                        <li><a class="nav-link" href="#">Huéspedes</a></li>
                        <li><a class="nav-link" href="#">Servicios</a></li>
                        <li><a class="nav-link" href="#">Empleados</a></li>
                        <li><a class="nav-link" href="#">Habitaciones</a></li>
                        <li><a class="nav-link" href="#">Tipo de Habitación</a></li>
                        <li><a class="nav-link" href="#">Reservas</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <br>
        <br>
        <br>
        <div class="container d-flex justify-content-center">
            <h1 class="display-5 text-center color-titulo">Reservacion</h1>
        </div>
        <div class="container mt-5">
            <form action="../../HotelMaquq/reservaciones-servlet" method="POST" enctype="multipart/form-data">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-floating mb-3 input-group date" id="datepicker1">
                            <input type="text" class="form-control" id="fechaDeIngreso" name="fechaDeIngreso" placeholder="">
                            <label for="fechaDeIngreso">Fecha De Ingreso</label>
                            <span class="input-group-append">
                                <span class="input-group-text bg-white">
                                    <i class="fa fa-calendar"></i>
                                </span>
                            </span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-floating mb-3 input-group date" id="datepicker2">
                            <input type="text" class="form-control" id="fechaDeEgreso" name="fechaDeEgreso" placeholder="">
                            <label for="fechaDeEgreso">Fecha De Egreso</label>
                            <span class="input-group-append">
                                <span class="input-group-text bg-white">
                                    <i class="fa fa-calendar"></i>
                                </span>
                            </span>
                        </div>
                    </div>
                    <!-- Campo con el ícono personalizado -->
                    <div class="col-md-6">
                        <div class="input-group mb-3">
                            <span class="input-group-text icon-d">D</span>
                            <div class="form-floating">
                                <input type="text" class="form-control" id="estadoDeDisponibilidad" name="estadoDeDisponibilidad" placeholder="">
                                <label for="estadoDeDisponibilidad">Estado De Disponibilidad</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="input-group mb-3">
                            <span class="input-group-text icon-d">Q</span>
                            <div class="form-floating">
                                <input type="text" class="form-control" id="precioTotal" name="precioTotal" placeholder="">
                                <label for="precioTotal">Precio Total</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="input-group mb-3">
                            <span class="input-group-text icon-d">ID</span>
                            <div class="form-floating">
                                <input type="text" class="form-control" id="idHuesped" name="idHuesped" placeholder="">
                                <label for="idHuesped">ID Huesped</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="input-group mb-3">
                            <span class="input-group-text icon-d">ID</span>
                            <div class="form-floating">
                                <input type="text" class="form-control" id="idHabitacion" name="idHabitacion" placeholder="">
                                <label for="idHabitacion">ID Habitacion</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="input-group mb-3">
                            <span class="input-group-text icon-d">ID</span>
                            <div class="form-floating">
                                <input type="text" class="form-control" id="idServicio" name="idServicio" placeholder="">
                                <label for="idServicio">ID Servicio</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <input class="btn btn-outline-success" type="submit" value="Agregar">
                </div>
            </form>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
        <script type="text/javascript">
            $(function () {
                $('#datepicker1').datepicker();
                $('#datepicker2').datepicker();
            });
        </script>
    </body>
</html>