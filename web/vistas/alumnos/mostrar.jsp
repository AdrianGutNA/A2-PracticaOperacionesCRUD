<%@page import="java.util.ArrayList"%>
<%@page import="beans.Alumno"%>
<%@page import="dao.DAOAlumno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Mostrar Alumnos</title>
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
                            <h5>Actidad 2 - Operaciones CRUD - Alumnos</h5>
                        </div>       
                    </div>
                </a>
            </nav>
            <div class="row" id="referencias">
                <div class="col-2">
                    <h3>
                        Alumnos:
                    </h3>

                    <a class="btn btn-warning btnAtras" href="SAlumnos">Regresar al inicio</a>

                </div>
                <div class="col-10">

                    <div class="row">
                        <div class="col-8">
                        </div>
                        <div class="col-4">
                            <div id="btnNuevo">
                                <a class="btn btn-success" href="SAlumnos?accion=nuevo">Registrar alumno</a>
                            </div>
                        </div>
                    </div>


                    <table class="table" id="tabla">
                        <thead class="table-success">
                            <tr>
                                <th>Matricula</th>
                                <th>Nombre Completo</th>
                                <th>DDI</th>
                                <th>DWI</th>
                                <th>ECBD</th>
                                <th>Promedio</th>
                                <th colspan="2" >Opciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                DAOAlumno daoAlumno = new DAOAlumno();
                                ArrayList<Alumno> listAlumnos = daoAlumno.mostrar();
                                Alumno alumno = null;
                                for (int i = 0; i < listAlumnos.size(); i++) {
                                    alumno = listAlumnos.get(i);

                            %>
                            <tr>
                                <td><%=alumno.getMatricula()%></td>
                                <td><%=alumno.getNombre() + " " + alumno.getApellidos()%></td>
                                <td><%=alumno.getDdi()%></td>
                                <td><%=alumno.getDwi()%></td>
                                <td><%=alumno.getEcbd()%></td>
                                <td><%=alumno.promediar()%></td>
                                <td><a class="btn btn-info" href="SAlumnos?accion=editar&matricula=<%=alumno.getMatricula()%>">Editar</a></td>
                                <td><a class="btn btn-danger" href="SAlumnos?accion=eliminar&matricula=<%=alumno.getMatricula()%>">Eliminar</a></td>
                            </tr>
                            <% }%>
                        </tbody>
                    </table>

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
