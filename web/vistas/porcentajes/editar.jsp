<%@page import="beans.Porcentaje"%>
<%@page import="dao.DAOPorcentaje"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Alumnos</title>

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
                            <h5>Actidad 5 -Comunicacion entre JPS - Servlet - JSP</h5>
                        </div>       
                    </div>
                </a>
            </nav>

            <div class="row">
                <div class="col-4" id="referencias2">

                    <h3>
                        Editar alumno:
                    </h3>

                    <br>

                    <a class="btn btn-dark btnAtras" href="SAlumnos">Regresar</a>

                </div>
                <div class="col-7">
                    <%
                        DAOPorcentaje dao = new DAOPorcentaje();
                        String id =  request.getAttribute("id").toString();
                        Porcentaje porcentaje = dao.buscar(id);
                    %>
                    <form action="SAlumnos" method="POST">
                        <div class="form-group">
                            <label>Descripción</label>
                            <input type="text"   class="form-control" name="tfDescripcion" value="<%=porcentaje.getDescripcion()%>"> 
                        </div>
                        <div class="form-group">
                            <label>Porcentaje</label>
                            <input type="number" class="form-control" name="tfPorcentaje" id="inputEcbd" value="<%=porcentaje.getPorcentaje()%>">

                            <input type="hidden" name="tfIdOld" value="<%=id%>">
                        </div>                       
                        <button type="submit" name="accion" value="actualizarPorcentaje" class="btn btn-primary btnGuardar">Editar</button>
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
                        <h4>Actidad 5 -Comunicacion entre JPS - Servlet - JSP</h4>
                    </div>       
                </div>

                <div id="lineaFooter"></div>
                <p class="font-italic">actividad 5 - ©copyright</p>
            </footer>
        </div>

    </body>
</html>
