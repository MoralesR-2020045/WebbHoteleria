<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Hotel Maq'u'q</title>
        <link rel="icon" type="image/png" href="Assets/Image/iconoHotel.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="Assets/css/css_index.css">

        <style>
            body {
                background-color: #DDD7D7;
                cursor: url("Assets/Image/quetzalcursors.png") 100 10;
            }

            .section-nosotros {
                background-color: #0F5746;
                color: white;
                padding: 100px;
                text-align: center;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 350px;
            }

            .section-ubicacion {
                background-color: #2d8570;
                color: white;
                padding: 100px;
            }

            .section-contacto {
                background-color: #58B09B;
                color: white;
                padding: 100px;
            }

            .section-footer {
                background-color: #00382b;
                color: white;
                padding: 100px;
            }


            .hero-image {
                background-image: url('Assets/Image/imagenHotel1.jpeg');
                background-size: cover;
                background-position: center;
                height: 100%;
                position: relative;
                text-align: center;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                color: white;
            }

            .section {
                display: grid;
                grid-template-columns: 1fr 1fr;
                gap: 20px;
                align-items: center;
                padding: 50px;
            }
            .section .text {
                text-align: center;
            }
            .section .image {
                text-align: center;
            }
            .section:nth-child(even) .text {
                order: 2;
            }

            .square-button {
                text-align: center;
                margin-top: 10px;
            }

            .square-button .btn {
                width: 150px;
                height: 50px;
                border-radius: 0;
                padding: 10px;
                font-size: 16px;
                line-height: 1.5;
                background-color:  #0F5746;
                color: #ffffff;
                border: 2px solid #0F5746;
            }

            .square-button .btn:hover{
                background-color: #89c684;
                border-color: #89c684;
                color: #00221a;
            }

            .color-menu{
                background-color: #58b09b;
                color: #2d8570;
            }

            .color-menu:hover {
                background-color: #2d8570;
            }

        </style>
    </head>
    <body>
        <div class="hero-image">
            <nav class="navbar navbar-expand-lg navbar-custom">
                <div class="container">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">

                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav">
                            <li class="nav-item" href="#">
                                <img src="Assets/Image/login.png" alt="Imagen" style="height: 50px; width: auto; margin-left: 10px;">
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#eventos">Eventos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#Ubicacion">Ubicaciï¿½n</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    <img src="Assets/Image/logoHotel.png" alt="Logo de Hoteleria Maquq" style="max-width: 120%; height: 230px; width: 650px">
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#servicios">Servicios</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Formularios</a>
                                <ul class="dropdown-menu color-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="#">Huï¿½spedes</a></li>
                                    <li><a class="dropdown-item" href="./metodoDePago-servlet">Método de Pago</a></li>
                                    <li><a class="dropdown-item" href="./servicio-servlet">Servicios</a></li>
                                    <li><a class="dropdown-item" href="#">Empleados</a></li>
                                    <li><a class="dropdown-item" href="#">Habitaciones</a></li>
                                    <li><a class="dropdown-item" href="#">Tipo de Habitaciones</a></li>
                                    <li><a class="dropdown-item" href="#">Reservas</a></li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#contacto">Contacto</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <div class="hero-text">
                <div class="btn-group" role="group" aria-label="Botones separados">
                    <a href="#" class="btn-cambio-color btn-color-lyric-botton btn btn-primary btn-lg mx-2 btn-color">Reservar Ahora</a>
                    <a href="#" class="btn-cambio-borde btn-color-lyric btn btn-outline-light btn-lg mx-2 btn-border">Ver Habitaciones</a>
                </div>
            </div>
        </div>

        <section class="section-nosotros">
            <div class="text">
                <h2 class="color-titulo-principal">Nosotros</h2>
                <h1 class="color-titulo">Bienvenido</h1>
                <p class="color-textos">Tu hogar lejos de casa en Guatemala.</p>
                <p class="color-textos">Servicio | Trabajo en equipo | Excelencia</p>
            </div>
        </section>

        <section class="section">
            <div class="text">
                <h2 class="color-titulos">Hotel Corazï¿½n del Mundo Maya</h2>
                <p>Hotel Maquq es un oasis de lujo y confort en el corazï¿½n de Guatemala, en donde enriquezemos la
                    cultura gutemalteca, ofreciendo una experiencia ï¿½nica para aquellos que buscan un alojamiento 
                    excepcional. Nuestro hotel combina la calidez de la hospitalidad guatemalteca con 
                    instalaciones modernas y servicios de primera clase, asegurando una estancia inolvidable tanto 
                    para viajeros de negocios como para turistas.</p>
            </div>
            <div class="image">
                <img id="imagen1" src="Assets/Image/imagenHotel3.jpeg" alt="Imagen 1" style="height: 400px; width: 700px">
                <script>
                    document.addEventListener('DOMContentLoaded', function () {
                        const images = ['imagenHotel3.jpeg', 'imagenHotel4.jpeg', 'imagenHotel14.jpeg']; // Lista de nombres de imï¿½genes
                        let currentImageIndex = 0;
                        const interval = 3000; // Intervalo en milisegundos (5 segundos)

                        function changeImage() {
                            document.getElementById('imagen1').src = 'Assets/Image/' + images[currentImageIndex];
                            currentImageIndex = (currentImageIndex + 1) % images.length;
                        }

                        setInterval(changeImage, interval);
                    });
                </script>
            </div>
        </section>

        <section class="section">
            <div class="image">
                <img id="imagen2" src="Assets/Image/imagenHotel5.jpeg" alt="imagen2" style="height: 400px; width: 700px">
                <script>
                    document.addEventListener('DOMContentLoaded', function () {
                        const images = ['imagenHotel5.jpeg', 'imagenHotel6.jpeg', 'imagenHotel7.jpeg']; // Lista de nombres de imï¿½genes
                        let currentImageIndex = 0;
                        const interval = 3000;

                        function changeImage() {
                            document.getElementById('imagen2').src = 'Assets/Image/' + images[currentImageIndex];
                            currentImageIndex = (currentImageIndex + 1) % images.length;
                        }

                        setInterval(changeImage, interval);
                    });
                </script>
            </div>
            <div class="text">
                <h2 class="color-titulos">Restaurante</h2>
                <p>Nuestro restaurante en el Hotel Maquq celebra la rica diversidad culinaria de Guatemala, ofreciendo platos tradicionales elaborados con ingredientes frescos y locales. Los huï¿½spedes pueden disfrutar de una experiencia gastronï¿½mica ï¿½nica en un ambiente elegante y acogedor, complementado por un servicio excepcional y una cuidada selecciï¿½n de vinos y cï¿½cteles.</p>
            </div>
        </section>

        <section class="section" id="servicios">
            <div class="text">
                <h2 class="color-titulos">Servicios y Comodidades</h2>
                <p>Nuestros servicios y comodidades estï¿½n diseï¿½ados para satisfacer las necesidades y superar las expectativas de nuestros huï¿½spedes. Desde habitaciones lujosas y bien equipadas hasta un spa rejuvenecedor y espacios para eventos versï¿½tiles, en el Hotel Maquq encontrarï¿½s todo lo necesario para una estadï¿½a cï¿½moda y placentera.</p>
                <div class="square-button .btn-cambio-color">
                    <a href="#" class="btn btn-primary btn-lg">Ver mï¿½s</a>
                </div>
            </div>
            <div class="image">
                <img id="imagen3" src="Assets/Image/imagenHotel8.jpeg" alt="Imagen 3" style="height: 400px; width: 700px">
                <script>
                    document.addEventListener('DOMContentLoaded', function () {
                        const images = ['imagenHotel8.jpeg', 'imagenHotel9.jpeg'];
                        let currentImageIndex = 0;
                        const interval = 3000;

                        function changeImage() {
                            document.getElementById('imagen3').src = 'Assets/Image/' + images[currentImageIndex];
                            currentImageIndex = (currentImageIndex + 1) % images.length;
                        }

                        setInterval(changeImage, interval);
                    });
                </script>
            </div>
        </section>

        <section class="section" id="eventos">
            <div class="image">
                <img id="imagen4" src="Assets/Image/imagenHotel11.jpeg" alt="Imagen 2" style="height: 400px; width: 700px">
                <script>
                    document.addEventListener('DOMContentLoaded', function () {
                        const images = ['imagenHotel11.jpeg', 'imagenHotel12.jpeg', 'imagenHotel13.jpeg'];
                        let currentImageIndex = 0;
                        const interval = 3000;

                        function changeImage() {
                            document.getElementById('imagen4').src = 'Assets/Image/' + images[currentImageIndex];
                            currentImageIndex = (currentImageIndex + 1) % images.length;
                        }
                        setInterval(changeImage, interval);
                    });
                </script>
            </div>
            <div class="text">
                <h2 class="color-titulos">Eventos Privados</h2>
                <p>Ya sea que estï¿½s organizando una conferencia, una boda o cualquier otro evento especial, el Hotel Maquq ofrece espacios elegantes y servicios personalizados para garantizar el ï¿½xito de tu ocasiï¿½n especial. Nuestro equipo de eventos estï¿½ dedicado a hacer realidad tus sueï¿½os, desde la planificaciï¿½n hasta la ejecuciï¿½n, asegurando que cada detalle sea perfecto.</p>
                <div class="square-button .btn-cambio-color">
                    <a href="#" class="btn btn-primary btn-lg">Mï¿½s Informaciï¿½n</a>
                </div>
            </div>
        </section>

        <section class="section section-ubicacion" id="Ubicacion">
            <div class="text">
                <h1 class="color-titulos">Ubicaciï¿½n Maq'u'q</h1>
                <p class="color-texto">10-27 Carretera Quetzal, Ciudad de Guatemala</p>
                <div class="square-button .btn-cambio-color">
                    <a href="https://www.google.com/maps/place/Fundaci%C3%B3n+Kinal/@14.6257364,-90.538503,17z/data=!3m1!4b1!4m6!3m5!1s0x8589a1e448821921:0xf0a2a940ad91e241!8m2!3d14.6257312!4d-90.5359281!16s%2Fg%2F11hh9d7m7t?entry=ttu" class="btn btn-primary btn-lg">ï¿½Como Llegar?</a>
                </div>
            </div>
            <div class="image">
                <img src=" Assets/Image/ubicacionHotel.png" alt="Imagen 2" style="height: 300px; width: 300px">
            </div>
        </section>
        <section class="section section-contacto" id="contacto">
            <div class="text">
                <h1 class="color-titulos">Contactanos</h1>
                <p class="color-texto">No. Telefono: (502) 1111-2222</p>
                <p class="color-texto">Correo Electronico: infoHotelMaquq@maquq.com</p>
                <p class="color-texto">Horarios de Atenciï¿½n: 8AM a 3PM</p>
            </div>
            <div class="image">
                <a href="https://api.whatsapp.com/send?phone=%2B50230797820&context=ARDhd3r22hCiYsYobQgZZn8gDXM7cYy8WLrUYJN2qR73CPmIEXuLzffjYt491hitiz5pe0v-ghNk_KY54UeBuq40O_GfjFzldnaG4SNRT6kUWlUrpflWJcobV374t6brMSFbYQO2jbU2wpN5CoF9y9swXA&source=FB_Page&app=facebook&entry_point=page_cta&fbclid=IwZXh0bgNhZW0CMTAAAR1c0IGaL468QlMbFxY6FpsZuIpAlpgnHumUF0S4ZaMmkNMWxL7B7kE9mSs_aem_3qKTIaz3Yc8rYIwmTfIkZA">
                    <img src="Assets/Image/iconoW.png" alt="Imagen 2" style="height: 150px; width: 150px">
                </a>
                <a href="https://www.facebook.com/kinal.gt?mibextid=ZbWKwL">
                    <img src="Assets/Image/iconoF.png" alt="Imagen 2" style="height: 150px; width: 150px">
                </a>
                <a href="https://www.instagram.com/fundacionkinal?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==">
                    <img src="Assets/Image/iconoI.png" alt="Imagen 2" style="height: 120px; width: 120px">
                </a>
            </div>
        </section>
        <section class="section section-footer">
            <div class="container">
                <p style="color:#2d8570">&copy; 2024 Hotel Maq'u'q. Todos los derechos reservados.</p>
                <br>
                <p style="color:#2d8570">Sitio Web desarrollado por Tech Titans</p>
            </div>
            <div class="image">
                <div class="image">
                    <img src=" Assets/Image/logo.png" alt="Imagen 2" style="height: 250px; width: 300px">
                </div>
            </div>
        </section>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>