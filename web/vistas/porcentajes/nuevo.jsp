<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- CSS only -->
        <title>Nuevo Porcentaje</title>
        
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
                            <h5>Actidad 2 - Operaciones CRUD - Porcentajes</h5>
                        </div>       
                    </div>
                </a>
            </nav>

         <div class="row">
                <div class="col-4" id="referencias2">
                    
                    <h3>
                        Registrar nuevo porcentaje
                    </h3>
                     
                    <br>

                    <form action="SAlumnos" method="POST">                       
                        <button type="submit" name="accion" value="regresarPorcentaje" class="btn btn-dark btnAtras">Regresar</button>
                    </form>
                    
                </div>
                <div class="col-7">
                    <form action="SAlumnos" method="POST">
                        <div class="form-group">
                            <label>Descripcion</label>
                            <input type="text" class="form-control" name="tfDescripcion">
                        </div>
                        <div class="form-group">
                            <label>Porcentaje</label>
                            <input type="number" class="form-control" name="tfPorcentaje">
                        </div>
                                                
                        <button type="submit" name="accion" value="agregarPorcentaje" class="btn-fm btn-primary btnGuardar">Guardar</button>
                    </form>
                </div>
            </div>
            
                <footer>
                <div class="row">
                    <div class="col-3">
                        <img src="./publico/img/icono.png">
                        <img src="./publico/img/UTlogo.png">
                    </div>
                    <div class="col">
                        <h4>Actidad 2 - Operaciones CRUD - Porcentajes</h4>
                    </div>       
                </div>

                <div id="lineaFooter"></div>
                <p class="font-italic">actividad 2 - ©copyright</p>
            </footer>
        </div>
    </body>
</html>
