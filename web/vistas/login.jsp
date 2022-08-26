<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Actividad 2</title>

        <link rel="shortcut icon" href="./publico/img/libreta.ico" />
        <link rel="stylesheet" href="./publico/css/style.css">
        <link rel="stylesheet" href="./publico/css/styleLogin.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    </head>
    <body>

        <div id="contenedor">

            <header>
                <nav class="navbar navbar-dark bg-dark" id="navBar">
                    <a class="navbar-brand">
                        <div class="row">
                            <div class="col-1">
                                <img src="./publico/img/icono.png">
                            </div>
                            <div class="col">
                                <h5>Actidad 2 - Operaciones CRUD</h5>
                            </div>       
                        </div>
                    </a>
                </nav>
            </header>


            <div id="main">
                <div class="row">
                    <div class="col-6">
                        <div id="imgSesion">
                            <img src="./publico/img/alumnos.png">
                        </div>
                    </div>
                    <div class="col-4">
                        <div>
                            <br>
                            <h5>Iniciar Sesión</h5>
                            <br>
                            <form>
                                <div class="form-group">
                                    <label>Usuario</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Contraseña</label>
                                    <input type="password" class="form-control">
                                </div>
                                <br>
                                <button type="submit" class="btn btn-primary">Iniciar</button>
                            </form>
                        </div>
                    </div>
                </div>


            </div>

            <footer>
                <div class="row">
                    <div class="col-3">
                        <img src="./publico/img/icono.png">
                        <img src="./publico/img/UTlogo.png">
                    </div>
                    <div class="col">
                        <h4>Actidad 2 - Operaciones CRUD</h4>
                    </div>       
                </div>

                <div id="lineaFooter"></div>
                <p class="font-italic">actividad 2 - ©copyright</p>
            </footer>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>

    </body>
</html>
