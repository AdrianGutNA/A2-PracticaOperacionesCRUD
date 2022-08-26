<%@page import="beans.Alumno"%>
<%@page import="dao.DAOAlumno"%>

<%@page import="java.util.ArrayList"%>
<%@page import="beans.Actividad"%>
<%@page import="dao.DAOActividad"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Alumnos</title>

        <link rel="shortcut icon" href="./publico/img/libreta.ico" />
        <link rel="stylesheet" href="./publico/css/style.css">
        <link rel="stylesheet" href="./publico/css/styleAlumnos.css">
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
            <div id="main">
                <div class="row">
                    <div class="col-4" id="referencias2">

                        <%
                            DAOAlumno dao = new DAOAlumno();
                            String matricula = request.getAttribute("matricula").toString();
                            Alumno alumno = dao.buscar(matricula);
                        %>

                        <h3>
                            Asignar Calificación al Alumno:
                        </h3>

                        <h3>
                            <%=alumno.getNombre()%>
                        </h3>

                        <h3>
                            Tareas
                        </h3>

                        <form action="SAlumnos" method="POST">                       
                            <button type="submit" name="accion" value="regresarAlumno" class="btn btn-outline-dark btnAtras">Regresar</button>
                        </form>

                    </div>
                    <div class="col-5">

                        <form action="SAlumnos" method="POST">

                            <input type="hidden" class="form-control" name="tfMatriculaOld" id="inputMatri" value="<%=alumno.getMatricula()%>">

                            <%
                                DAOActividad daoActividad = new DAOActividad();
                                ArrayList<Actividad> listActividades = daoActividad.mostrar();
                                Actividad actividad = null;
                                for (int i = 0; i < listActividades.size(); i++) {
                                    actividad = listActividades.get(i);

                            %>

                            <div class="form-group row">
                                <label class="col-sm-9 col-form-label"><%=actividad.getActividad()%></label>
                                <div class="col-sm-3">
                                    <select id="inputState" class="form-control">
                                        <option selected>Calif...</option>
                                        <option value="0">0</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                    </select>                                
                                </div>
                            </div>
                                
                            <br>

                            <% }%>

                            <button type="submit" name="accion" value="Actualizar" class="btn btn-primary btnGuardar">Asignar</button>
                        </form>
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
                        <h4>Actidad 2 - Operaciones CRUD - Alumnos</h4>
                    </div>       
                </div>

                <div id="lineaFooter"></div>
                <p class="font-italic">actividad 2 - ©copyright</p>
            </footer>
        </div>

    </body>
</html>
