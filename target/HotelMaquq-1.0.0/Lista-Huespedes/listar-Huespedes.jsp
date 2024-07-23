<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Listado de Huéspedes</title>
        <link rel="icon" type="image/png" href="../Assets/Image/iconoHotel.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

        <style>
            .color-titulo {
                color: #00382b;
                font-size: 4rem;
            }

            body, html {
                background-color: #DDD7D7;
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

            .th {
                background-color: #00382b;
                color: #58b09b;
                text-align: center;
                font-size: 1.2rem;
                padding: 10px;
            }
        </style>
    </head>

    <body>
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
            <h1 class="display-5 text-center color-titulo">Listado de Huéspedes</h1>
        </div>
        <div class="container mt-5">
            <div class="row">
                <div class="col-md-8">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col" class="color-menu th">ID</th>
                                <th scope="col" class="color-menu th">NIT</th>
                                <th scope="col" class="color-menu th">DPI</th>
                                <th scope="col" class="color-menu th">Nombre</th>
                                <th scope="col" class="color-menu th">Apellido</th>
                                <th scope="col" class="color-menu th">Email</th>
                                <th scope="col" class="color-menu th">Teléfono</th>
                                <th scope="col" class="color-menu th">Contraseña</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="huesped" items="${huespedes}">
                                <tr>
                                    <td>${huesped.idHuesped}</td>
                                    <td>${huesped.nit}</td>
                                    <td>${huesped.dpi}</td>
                                    <td>${huesped.nombreDelHuesped}</td>
                                    <td>${huesped.apellidoDelHuesped}</td>
                                    <td>${huesped.email}</td>
                                    <td>${huesped.telefono}</td>
                                    <td>${huesped.contraseña}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="col-md-4">
                    <a href="./Huesped-JSP/Formulario-Huesped.jsp" class="btn btn-success">Agregar Datos</a>
                </div>
            </div>
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
