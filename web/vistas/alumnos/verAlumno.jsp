<%@page import="beans.Alumno"%>
<%@page import="dao.DAOAlumno"%>

<%@page import="java.util.ArrayList"%>
<%@page import="beans.Actividad"%>
<%@page import="dao.DAOActividad"%>

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
        <div id="contenedor">

            <nav class="navbar navbar-dark bg-dark" id="navBar">
                <a class="navbar-brand">
                    <div class="row">
                        <div class="col-1">
                            <img src="./publico/img/icono.png">
                        </div>
                        <div class="col">
                            <h5>Actidad 2 - Operaciones CRUD - Alumnos</h5>
                        </div>       
                    </div>
                </a>
            </nav>

            <div class="row">
                <div class="col-4" id="referencias2">

                    <%
                        DAOAlumno dao = new DAOAlumno();
                        String matricula = request.getAttribute("matricula").toString();
                        Alumno alumno = dao.buscar(matricula);
                    %>

                    <h3>
                        Asignar Califificacion al Alumno:
                    </h3>

                    <h3>
                        <%=alumno.getNombre()%>
                    </h3>

                    <a class="btn btn-success" id="btnAtras2" href="SAlumnos?accion=asignarCalif&matricula=<%=alumno.getMatricula()%>">Asignar</a>

                    <form action="SAlumnos" method="POST">                       
                        <button type="submit" name="accion" value="regresarAlumno" class="btn btn-outline-dark btnAtrass">Regresar</button>
                    </form>

                </div>
                <div class="col-7">

                    <%
                        DAOPorcentaje daoPorcentaje = new DAOPorcentaje();
                        ArrayList<Porcentaje> listPorcentajes = daoPorcentaje.mostrar();
                        Porcentaje porcentaje = null;

                        DAOActividad daoActividad = new DAOActividad();
                        ArrayList<Actividad> listActividades = daoActividad.mostrar();
                        Actividad actividad = null;

                        for (int i = 0; i < listPorcentajes.size(); i++) {
                            porcentaje = listPorcentajes.get(i);

                    %>

                    <br>

                    <div class="card">
                        <div class="card-header">
                            <div class="row">
                                <div class="col-8">
                                    <%=porcentaje.getDescripcion()%>
                                </div>
                                <diV class="col-4">
                                    Porcentaje: <%=porcentaje.getPorcentaje()%>
                                </diV>
                            </div>
                        </div>
                        <div class="card-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">No.</th>
                                        <th scope="col">Actividad</th>
                                        <th scope="col">Cal</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>Mark</td>
                                        <td>10</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>Jacob</td>
                                        <td>8</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>


                    <% }%>


                </div>
            </div>

            <footer>
                <div class="row">
                    <div class="col-3">
                        <img src="./publico/img/icono.png">
                        <img src="./publico/img/UTlogo.png">
                    </div>
                    <div class="col">
                        <h4>Actidad 2 - Operaciones CRUD - Alumnos</h4>
                    </div>       
                </div>

                <div id="lineaFooter"></div>
                <p class="font-italic">actividad 2 - ©copyright</p>
            </footer>
        </div>

    </body>
</html>
