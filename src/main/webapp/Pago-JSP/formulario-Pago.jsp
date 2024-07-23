
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Formulario de Métodos de Pago</title>
        <link rel="icon" type="image/png" href="../Assets/Image/iconoHotel.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">


        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
        <style>

            .color-titulo{
                color: #00382b;
                font-size: 4rem;
            }

            body,
            html {
                background-image: url('../Assets/Image/imagenFondo.jpeg');
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
    <body style="background-color: ivory;"> 
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
            <h1 class="display-5 text-center color-titulo">Método de Pago</h1>
        </div>

        <div class="container mt-5">
            <form action="../../HotelMaquq/pago-servlet" method="POST" enctype="multipart/form-data">
                <div class="row g-3">
                    
                    <div class="col-md-7">
                        <div class="input-group mb-3">
                            <span class="input-group-text">Q</span>
                            <div class="form-floating">
                                <input type="text" class="form-control" id="pagoDeReservacion" name="pagoDeReservacion" placeholder="pagoDeReservacion">
                                <label for="pagoDeReservacion">Pago De Reservacion</label>
                            </div>
                        </div>
                    </div> 



                    <div class="col-md-5">
                        <div class="row form-group g-1">
                            <label for="date" class="col-sm-4 col-form-label">Fecha de Pago</label>
                            <div class="col-sm-8">
                                <div class="input-group date" id="fechaDePago">
                                    <input type="text" class="form-control" id="fechaDePago" name="fechaDePago">
                                    <span class="input-group-append">
                                        <span class="input-group-text bg-white">
                                            <i class="fa fa-calendar"></i>
                                        </span>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <script type="text/javascript">
                        $(function () {
                            $('#fechaDePago').datepicker({
                                autoclose: true,
                                format: 'yyyy-mm-dd'
                            }).on('changeDate', function (e) {
                                $('#fechaDePago').val(e.format(0, "yyyy-mm-dd"));
                            });
                        });
                    </script>

                    <div class="input-group mb-4">
                        <span class="input-group-text">Q</span>
                        <div class="form-floating">
                            <input type="text" class="form-control" id="saldoRestante" name="saldoRestante" placeholder="saldoRestante">
                            <label for="saldoRestante">Pago Restante </label>
                        </div>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="idMetodoPago" name="idMetodoPago" placeholder="">
                        <label for="idMetodoPago">Nombre del Método de Pago</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="idReserva" name="idReserva" placeholder="">
                        <label for="idReserva">Nombre del Método de Pago</label>
                    </div>


                </div>

                <div>
                    <div class="d-flex justify-content-center mt-4">
                        <input class="btn btn-outline-success me-4" type="submit" value="Agregar">
                        <button class="btn btn-success  me-4" type="button" href="./pago-servlet">Ver Datos</button>
                    </div>
                </div>

            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>