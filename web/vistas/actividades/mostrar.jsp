<%@page import="java.util.ArrayList"%>
<%@page import="beans.Actividad"%>
<%@page import="dao.DAOActividad"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Mostrar Actividades</title>
        <link rel="shortcut icon" href="./publico/img/libreta.ico" />
        <link rel="stylesheet" href="./publico/css/style.css">
        <link rel="stylesheet" href="./publico/css/styleActividades.css">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    </head>
    <body>

        <div id="contenedor">

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

            <div id="main">

                <div class="row" id="referencias">

                    <div class="col-2">
                        <h3>
                            Actividades
                        </h3>

                        <a class="btn btn-outline-dark btnAtras" href="SAlumnos">Regresar</a>

                    </div>
                    <div class="col-7">
                        <table class="table" id="tabla">
                            <thead class="table-success">
                                <tr>
                                    <th>Actividad</th>
                                    <th>Categoria</th>
                                    <th colspan="2" >Opciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    DAOActividad daoActividad = new DAOActividad();
                                    ArrayList<Actividad> listActividades = daoActividad.mostrar();
                                    Actividad actividad = null;
                                    for (int i = 0; i < listActividades.size(); i++) {
                                        actividad = listActividades.get(i);

                                %>
                                <tr>
                                    <td><%=actividad.getActividad()%></td>
                                    <td><%=actividad.getCategoria()%></td>
                                    <td><a class="btn btn-info" href="SAlumnos?accion=editarActividad&id=<%=actividad.getId()%>">Editar</a></td>
                                    <td><a class="btn btn-danger" href="SAlumnos?accion=eliminarActividad&id=<%=actividad.getId()%>">Eliminar</a></td>
                                </tr>
                                <% }%>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-1">
                        <div id="btnRegistrar">
                            <form action="SAlumnos" method="POST">                       
                                <button type="submit" name="accion" value="nuevoActividad" class="btn btn-success">Registrar Actividad</button>
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
                        <h4>Actidad 2 - Operaciones CRUD - Actividades</h4>
                    </div>       
                </div>

                <div id="lineaFooter"></div>
                <p class="font-italic">actividad 2 - ©copyright</p>
            </footer>

        </div>

    </body>
</html>
