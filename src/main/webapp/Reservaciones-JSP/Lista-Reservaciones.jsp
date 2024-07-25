<%-- 
    Document   : Lista-Reservaciones
    Created on : 22/07/2024, 19:17:53
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>sistema de gestión</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
        crossorigin="anonymous">

    <style>
        .color-titulo {
            color: #00382b;
            font-size: 4rem;
        }

        body,
        html {
            background-color: white;
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

        .color-titulo {
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

        .custom-table {
            width: 160%;
            margin: auto;
            border: 1px solid #00382b;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
            background-color: #ffffff;
        }

        .table-striped tbody tr:nth-child(odd) {
            background-color: #ddd7d7 !important;
        }

        .table-striped tbody tr:nth-child(even) {
            background-color: #a3c3b8 !important;
        }

        .th-header {
            text-align: center;
            font-size: 1.2rem;
            padding: 10px;
            background-color: #00382b;
            color: #ffffff;
        }

        .table th, .table td {
            font-size: 0.900rem;
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <a class="navbar-brand" href="../index.jsp">
                <img src="../Assets/Image/logo.png" alt="Imagen Logo" style="height: 150px; width: 200px">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
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
        <h1 class="display-5 text-center color-titulo">Reservaciones</h1>
    </div>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-8">
                <table class="table table-striped custom-table">
                    <thead>
                        <tr>
                            <th scope="col" class="th-header">ID</th>
                            <th scope="col" class="th-header">Fecha De Ingreso</th>
                            <th scope="col" class="th-header">Fecha De Egreso</th>
                            <th scope="col" class="th-header">Estado De Disponibilidad</th>
                            <th scope="col" class="th-header">Precio Total</th>
                            <th scope="col" class="th-header">ID Huesped</th>
                            <th scope="col" class="th-header">ID Habitacion</th>
                            <th scope="col" class="th-header">ID Servicio</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="Reservaciones" items="${Reservaciones}">
                            <tr>
                                <td>${Reservaciones.idReserva}</td>
                                <td>${Reservaciones.fechaDeIngreso}</td>
                                <td>${Reservaciones.fechaDeEgreso}</td>
                                <td>${Reservaciones.estadoDeDisponibilidad}</td>
                                <td>${Reservaciones.precioTotal}</td>
                                <td>${Reservaciones.idHuesped}</td>
                                <td>${Reservaciones.idHabitacion}</td>
                                <td>${Reservaciones.idServicio}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <br>
                <br>
            </div>


        </div>
        <div class="col-md-4">
            <a href="./Reservaciones-JSP/Formulario-Reservaciones.jsp" class="btn btn-success">
                Agregar Datos
            </a>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>

</html>