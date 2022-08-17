package servlets;

import beans.Alumno;
import beans.Porcentaje;
import beans.Actividad;

import dao.DAOAlumno;
import dao.DAOPorcentaje;
import dao.DAOActividad;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class SAlumnos extends HttpServlet 
{
    private String mostrarAlumno;
    private String nuevoAlumno;
    private String editarAlumno;
    
    private String mostrarPorcentaje;
    private String nuevoPorcentaje;
    private String editarPorcentaje;
    
    private String mostrarActividad;
    private String nuevoActividad;
    private String editarActividad;
    
    private String inicio;
    
    private String accion;
    private String acceso;
    
    private Alumno alumno;
    private DAOAlumno daoAlumno;
    
    private Porcentaje porcentaje;
    private DAOPorcentaje daoPorcentaje;
    
    private Actividad actividad;
    private DAOActividad daoActividad;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException  
    {
        response.setContentType("text/html;charset=UTF-8");
       // PrintWriter out = response.getWriter();
       
       nuevoAlumno   = "/vistas/alumnos/nuevo.jsp";
       editarAlumno  = "/vistas/alumnos/editar.jsp";
       mostrarAlumno = "/vistas/alumnos/mostrar.jsp";
       
       nuevoPorcentaje   = "/vistas/porcentajes/nuevo.jsp";
       editarPorcentaje  = "/vistas/porcentajes/editar.jsp";
       mostrarPorcentaje = "/vistas/porcentajes/mostrar.jsp";
       
       nuevoActividad   = "/vistas/actividades/nuevo.jsp";
       editarActividad  = "/vistas/actividades/editar.jsp";
       mostrarActividad = "/vistas/actividades/mostrar.jsp";
       
       inicio  = "/vistas/index.jsp";
       acceso  = "";
       
       accion=request.getParameter("accion");
       
       
       if(accion!=null && accion.equalsIgnoreCase("mostrar"))
       {
           acceso=mostrarAlumno;
       }else if(accion!=null && accion.equalsIgnoreCase("nuevo"))
       {
           acceso=nuevoAlumno;
       }else if(accion!=null && accion.equalsIgnoreCase("agregar"))
       {
           alumno = new Alumno();
           alumno.setMatricula(request.getParameter("tfMatricula"));
           alumno.setNombre(request.getParameter("tfNombre"));
           alumno.setApellidos(request.getParameter("tfApellidos"));
           alumno.setDdi(Integer.parseInt(request.getParameter("tfDdi")));
           alumno.setDwi(Integer.parseInt(request.getParameter("tfDwi")));
           alumno.setEcbd(Integer.parseInt(request.getParameter("tfEcbd")));
           
           daoAlumno = new DAOAlumno();
           daoAlumno.agregar(alumno);
           
           acceso=mostrarAlumno;
           
       }
       else if(accion!=null && accion.equalsIgnoreCase("editar"))
       {
          request.setAttribute("matricula", request.getParameter("matricula"));
          acceso=editarAlumno;
       }else if(accion!=null && accion.equalsIgnoreCase("actualizar"))
       {
           alumno = new Alumno();
           String matriculaOld=request.getParameter("tfMatriculaOld");
           alumno.setMatricula(request.getParameter("tfMatricula"));
           alumno.setNombre(request.getParameter("tfNombre"));
           alumno.setApellidos(request.getParameter("tfApellidos"));
           alumno.setDdi(Integer.parseInt(request.getParameter("tfDdi")));
           alumno.setDwi(Integer.parseInt(request.getParameter("tfDwi")));
           alumno.setEcbd(Integer.parseInt(request.getParameter("tfEcbd")));
           
           daoAlumno = new DAOAlumno();
           daoAlumno.editar(alumno, matriculaOld);
           acceso=mostrarAlumno;
       }else if(accion!=null && accion.equalsIgnoreCase("eliminar"))
       {
           String matricula=request.getParameter("matricula");
           daoAlumno = new DAOAlumno();
           daoAlumno.eliminar(matricula);
           acceso=mostrarAlumno;
       }
       else if(accion!=null && accion.equalsIgnoreCase("mostrarPorcentaje"))//Porcentaje
       {
           acceso=mostrarPorcentaje;
       }
       else if
               (accion!=null && accion.equalsIgnoreCase("nuevoPorcentaje"))
       {
           acceso=nuevoPorcentaje;
       }
       else if(accion!=null && accion.equalsIgnoreCase("agregarPorcentaje"))
       {
           porcentaje = new Porcentaje();
           porcentaje.setDescripcion(request.getParameter("tfDescripcion"));
           porcentaje.setPorcentaje(Integer.parseInt(request.getParameter("tfPorcentaje")));
           
           daoPorcentaje = new DAOPorcentaje();
           daoPorcentaje.agregar(porcentaje);
           
           acceso=mostrarPorcentaje;
           
       }
       else if(accion!=null && accion.equalsIgnoreCase("editarPorcentaje"))
       {
          request.setAttribute("id", request.getParameter("id"));
          acceso=editarPorcentaje;
       }else if(accion!=null && accion.equalsIgnoreCase("actualizarPorcentaje"))
       {
           porcentaje = new Porcentaje();
           String idOld= request.getParameter("tfIdOld");
           porcentaje.setDescripcion(request.getParameter("tfDescripcion"));
           porcentaje.setPorcentaje(Integer.parseInt(request.getParameter("tfPorcentaje")));
           
           daoPorcentaje = new DAOPorcentaje();
           daoPorcentaje.editar(porcentaje, idOld);
           acceso=mostrarPorcentaje;
           
       }else if(accion!=null && accion.equalsIgnoreCase("eliminarPorcentaje"))
       {
           String id=request.getParameter("id");
           daoPorcentaje = new DAOPorcentaje();
           daoPorcentaje.eliminar(id);
           acceso=mostrarPorcentaje;
       }
       else if(accion!=null && accion.equalsIgnoreCase("mostrarActividades"))//Actividades
       {
           acceso=mostrarActividad;
       }
       else if
               (accion!=null && accion.equalsIgnoreCase("nuevoActividad"))
       {
           acceso=nuevoActividad;
       }
       else if(accion!=null && accion.equalsIgnoreCase("agregarActividad"))
       {
           actividad = new Actividad();
           actividad.setActividad(request.getParameter("tfActividad"));
           actividad.setCategoria(request.getParameter("tfCategoria"));
           
           daoActividad = new DAOActividad();
           daoActividad.agregar(actividad);
           
           acceso=mostrarActividad;
           
       }
       else if(accion!=null && accion.equalsIgnoreCase("editarActividad"))
       {
          request.setAttribute("id", request.getParameter("id"));
          acceso=editarActividad;
       }else if(accion!=null && accion.equalsIgnoreCase("actualizarActividad"))
       {
           actividad = new Actividad();
           String idOld= request.getParameter("tfIdOld");
           actividad.setActividad(request.getParameter("tfActividad"));
           actividad.setCategoria(request.getParameter("tfCategoria"));
           
           daoActividad = new DAOActividad();
           daoActividad.editar(actividad, idOld);
           acceso=mostrarActividad;
           
       }
       else if(accion!=null && accion.equalsIgnoreCase("eliminarActividad"))
       {
           String id=request.getParameter("id");
           daoActividad = new DAOActividad();
           daoActividad.eliminar(id);
           acceso=mostrarActividad;
       }
       else if(accion!=null && accion.equalsIgnoreCase("regresarPorcentaje"))
       {
           acceso=mostrarPorcentaje;
       }
       else if(accion!=null && accion.equalsIgnoreCase("regresarAlumno"))
       {
           acceso=mostrarAlumno;
       }
       else if(accion!=null && accion.equalsIgnoreCase("regresarActividad"))
       {
           acceso=mostrarActividad;
       }
       else 
       {
           acceso=inicio;
       }
       
       request.getRequestDispatcher(acceso).forward(request, response);
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
