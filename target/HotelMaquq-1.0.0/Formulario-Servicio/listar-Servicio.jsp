
<!-- JSP Listar Servicio -->


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Método de Pago</title>
        <link rel="icon" type="image/png" href="Assets/Image/iconoHotel.png">
        
        <!-- Link para el estilo boostrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
              crossorigin="anonymous">

        
       <!-- 
        Estilo de la cabecera y de la paguina
       con css.
        !--> 
        <style>
            .color-titulo {
                color: #00382b;
                font-size: 4rem;
            }
            
            body,
            html {
                background-image: url('./Assets/Image/imagenFondo.jpeg');
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

            .th-header {
                text-align: center;
                font-size: 1.2rem;
                padding: 10px;
            }

            .table-striped tbody tr:nth-child(odd) {
                background-color: #DDD7D7 !important;
            }

            .table-striped tbody tr:nth-child(even) {
                background-color: #a3c3b8 !important;
            }

            .custom-table {
                width: 80%;
                margin: auto;
                border: 1px solid #00382b;
                border-radius: 15px;
                overflow: hidden;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
            }
        </style>
    </head>

    <body>
    <!-- Bara de navegacion de la paguina web, lleva a los links de los demas formularios -->
        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.jsp">
                    <img src="Assets/Image/logo.png" alt="Imagen Logo" style="height: 150px; width: 200px">
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
                <!-- Links del resto de formularios echos -->
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
        <br>
        <br>
        <br>
        <!-- Titular de la paguina web -->
        <div class="container d-flex justify-content-center">
            <h1 class="display-5 text-center color-titulo">Servicios</h1>
        </div>
        <div class="container mt-5">
            <div class="row">
                <div class="col-md-8.5 mx-auto">
                    <table class="table-striped custom-table">
                        <thead>
                            <tr>
                                <!-- Encabezado de la tabla  con sus estilos y Titulos-->
                                <th scope="col" class="th-header" style="background-color: #00382b; color: #ffffff;">ID</th>
                                <th scope="col" class="th-header" style="background-color: #00382b; color: #ffffff;">Servicios</th>
                                <th scope="col" class="th-header" style="background-color: #00382b; color: #ffffff;">Precio</th>
                            </tr>
                        </thead>

                        <!-- Bucle  que funciona para insertar los datos en una nueva fila -->
                        <tbody>
                              <c:forEach var="Servicio" items="${Servicio}">
                                <tr>
                                    <td>${Servicio.idServicio}</td>
                                    <td>${Servicio.nombreServicio}</td>
                                    <td>${Servicio.precioServicio}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <br>
                </div>
                
                <!-- Boton para el formulario de Servicio -->
                <div class="col-md-4 mx-auto text-center">
                    <a href="./Formulario-Servicio/Formulario-Servicio.jsp" class="btn btn-success">
                        Agregar Datos
                    </a>
                    <br>
                </div>
                <br>
            </div>
            <br>
        </div>
        <br> 
        <!--Cargar del Bootstrap -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    </body>

</html>
