<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang='es'>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"> 
        <title>Login Maq'u'q</title>
        <link rel="stylesheet" href="../Assets/css/css_login.css">
        <link rel="icon" type="image/png" href="../Assets/Image/iconoHotel.png">

        <style>
            body {
                font-family: Glacial Indifference;
                background: #ececec;
                background-image: url('../Assets/Image/fondoLogin.jpg');
                background-size: cover;
                background-position: center;
                height: 100%;
            }

            .left-box {
                border-top-left-radius: 20px;
                border-bottom-left-radius: 20px;
                padding: 20px;
            }

            .box-area {
                border-radius: 20px;
                overflow: hidden;
            }
        </style>

    </head>
    <body>
        <div class="container d-flex justify-content-center align-items-center min-vh-100">
            <div class="row border rounded-5 p-3 bg-white shadow box-area" style="background-color:#DDD7D7;">
                <div class="col-md-6 rounded-4 d-flex justify-content-center align-items-center flex-column left-box" style="background: #00221a;">
                    <div class="featured-image mb-3">
                        <img src="../Assets/Image/logoHotel.png" class="img-fluid" style="width:350px">
                    </div>
                </div>
                <div class="col-md-6 right-box">
                    <div class="row align-items-center">
                        <div class="header-text mb-4">
                            <p class="fs-4" style="color:#00382b; "><strong>¡Bienvenido a tu hogar lejos de casa!</strong></p>
                            <p class="fs-5" style="color:#2d8570; text-align: center;">¡Tu aventura empieza aquí!</p>
                        </div>
                        <form action="../../HotelMaquq/login-servlet" method="POST" enctype="multipart/form-data">
                            <div class="input-group mb-3">
                                <input type="text" id="email" name="email" class="form-control form-control-lg bg-light fd-6" placeholder="Email">
                            </div>
                            <div class="input-group mb-3">
                                <input type="password" id="contraseña" name="contraseña" class="form-control form-control-lg bg-light fd-6" placeholder="Contraseña">
                            </div>
                            <div class="input-group mb-3">
                                <button class="btn btn-lg btn-primary w-100 fs-5" type="submit"   style="background-color:#2d8570; color:#00221a; border-radius: 10px;">Iniciar Sesión</button>
                            </div>
                            <div class="input-group mb-3">
                                <button class="btn btn-lg btn-light w-100 fs-5" style="border: 2px solid #0F5746; border-radius: 10px; color:#00221a;"><img src="../Assets/Image/logoGoogle.jpg" style="width: 20px" class="me-2"><small>Continuar con Google</small></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

