<%@page import="java.util.ArrayList"%>
<%@page import="beans.Porcentaje"%>
<%@page import="dao.DAOPorcentaje"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Mostrar Porcentaje</title>
        <link rel="shortcut icon" href="./publico/img/libreta.ico" />
        <link rel="stylesheet" href="./publico/css/style.css">
        <link rel="stylesheet" href="./publico/css/stylePorcentajes.css">
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
                            <h5>Actidad 2 - Operaciones CRUD - Porcentajes</h5>
                        </div>       
                    </div>
                </a>
            </nav>

            <div id="main">
                <div class="row" id="referencias">
                    <div class="col-2">
                        <h3>
                            Porcentajes
                        </h3>

                        <a class="btn btn-outline-dark btnAtras" href="SAlumnos">Regresar</a>

                    </div>
                    <div class="col-7">

                        <table class="table" id="tabla">
                            <thead class="table-success">
                                <tr>
                                    <th>Descripción</th>
                                    <th>Porcentaje</th>
                                    <th colspan="2" >Opciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    DAOPorcentaje daoPorcentaje = new DAOPorcentaje();
                                    ArrayList<Porcentaje> listPorcentajes = daoPorcentaje.mostrar();
                                    Porcentaje porcentaje = null;
                                    int total = 0;
                                    for (int i = 0; i < listPorcentajes.size(); i++) {
                                        porcentaje = listPorcentajes.get(i);
                                        total = total + porcentaje.getPorcentaje();
                                %>
                                <tr>
                                    <td><%=porcentaje.getDescripcion()%></td>
                                    <td><%=porcentaje.getPorcentaje()%></td>
                                    <td><a class="btn btn-info" href="SAlumnos?accion=editarPorcentaje&id=<%=porcentaje.getId()%>">Editar</a></td>
                                    <td><a class="btn btn-danger" href="SAlumnos?accion=eliminarPorcentaje&id=<%=porcentaje.getId()%>">Eliminar</a></td>
                                </tr>
                                <% }%>
                            </tbody>
                        </table>
                            
                            <h5>Porcentaje asignado: <%=total%>%</h5>
                    </div>
                    <div class="col-1">
                        <div id="btnRegistrar">
                            <form action="SAlumnos" method="POST">                       
                                <button type="submit" name="accion" value="nuevoPorcentaje" class="btn btn-success">Registrar Porcentaje</button>
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
                        <h4>Actidad 2 - Operaciones CRUD - Porcentajes</h4>
                    </div>       
                </div>

                <div id="lineaFooter"></div>
                <p class="font-italic">actividad 2 - ©copyright</p>
            </footer>


        </div>
                            

    </body>
</html>
