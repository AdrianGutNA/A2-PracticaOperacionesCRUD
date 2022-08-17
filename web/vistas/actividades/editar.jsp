<%@page import="beans.Actividad"%>
<%@page import="dao.DAOActividad"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Actividad</title>

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
                            <h5>Actidad 2 - Operaciones CRUD - Actividades</h5>
                        </div>       
                    </div>
                </a>
            </nav>

            <div class="row">
                <div class="col-4" id="referencias2">

                    <h3>
                        Editar Actividad:
                    </h3>

                    <br>

                    <form action="SAlumnos" method="POST">                       
                        <button type="submit" name="accion" value="regresarActividad" class="btn btn-dark btnAtras">Regresar</button>
                    </form>
                    
                </div>
                <div class="col-7">
                    <%
                        DAOActividad dao = new DAOActividad();
                        String id = request.getAttribute("id").toString();
                        Actividad actividad = dao.buscar(id);
                    %>
                    <form action="SAlumnos" method="POST">
                        <div class="form-group">
                            <label>Actividad</label>
                            <input type="text"   class="form-control" name="tfActividad" value="<%=actividad.getActividad()%>"> 
                        </div>
                        <div class="form-group">
                            <label>Categoria</label>
                            <input type="text" class="form-control" name="tfCategoria" id="inputEcbd" value="<%=actividad.getCategoria()%>">

                            <input type="hidden" class="form-control" name="tfIdOld" id="inputMatri" value="<%=id%>">
                        </div>                       
                        <button type="submit" name="accion" value="actualizarActividad" class="btn btn-primary btnGuardar">Editar</button>
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
                        <h4>Actidad 2 - Operaciones CRUD - Actividades</h4>
                    </div>       
                </div>

                <div id="lineaFooter"></div>
                <p class="font-italic">actividad 2 - ©copyright</p>
            </footer>
        </div>

    </body>
</html>
