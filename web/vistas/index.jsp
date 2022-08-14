<%-- 
    Document   : index
    Created on : 10/08/2022, 02:42:50 PM
    Author     : adriangutna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
         <title>Actividad 2</title>
         
        <link rel="shortcut icon" href="./publico/img/libreta.ico" />
        <link rel="stylesheet" href="./publico/css/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    </head>
    <body>
         <div id="content">

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

            <div class="row" id="enlaces">
                <div class="col">
                    <a href="SAlumnos?accion=mostrar">
                        <div class="card cardEnlace" style="width: 14rem;">
                            <img src="./publico/img/alumno.png">

                            <div class="card-body">
                                <h5 class="card-title">Alumnos</h5>
                            </div> 

                        </div>
                    </a>
                </div>
                <div class="col">
                    <a href="SAlumnos?accion=mostrarActividades">
                        <div class="card cardEnlace" style="width: 14rem;">
                            <img src="./publico/img/libreta.jpg">

                            <div class="card-body">
                                <h5 class="card-title">Actividades</h5>
                            </div> 

                        </div>
                    </a>
                </div>
                <div class="col">
                    <a href="SAlumnos?accion=mostrarPorcentaje">
                        <div class="card cardEnlace" style="width: 14rem;">
                            <img src="./publico/img/porcentaje.png">

                            <div class="card-body">
                                <h5 class="card-title">Porcentajes</h5>
                            </div> 

                        </div>
                    </a>
                </div>
            </div>

            <footer>
                <div class="row">
                    <div class="col-3">
                        <img src="./publico/img/icono.png">
                        <img src="./publico/img/UTlogo.png">
                    </div>
                    <div class="col">
                        <h4>Actidad 2 -Operaciones CRUD</h4>
                    </div>       
                </div>

                <div id="lineaFooter"></div>
                <p class="font-italic">actividad 2 - ©copyright</p>
            </footer>
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>

    </body>
</html>
