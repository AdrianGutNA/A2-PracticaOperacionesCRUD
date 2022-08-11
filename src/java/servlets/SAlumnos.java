package servlets;

import beans.Alumno;

import dao.DAOAlumno;

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
    
    private String inicio;
    
    private String accion;
    private String acceso;
    
    private Alumno alumno;
    private DAOAlumno daoAlumno;
    

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
           alumno = new Alumno();
           alumno.setMatricula(request.getParameter("tfMatricula"));
           alumno.setNombre(request.getParameter("tfNombre"));
           alumno.setApellidos(request.getParameter("tfApellidos"));
           alumno.setDdi(Integer.parseInt(request.getParameter("tfDdi")));
           alumno.setDwi(Integer.parseInt(request.getParameter("tfDwi")));
           alumno.setEcbd(Integer.parseInt(request.getParameter("tfEcbd")));
           
           daoAlumno = new DAOAlumno();
           daoAlumno.agregar(alumno);
           
           acceso=mostrarPorcentaje;
           
       }
       else if(accion!=null && accion.equalsIgnoreCase("editarPorcentaje"))
       {
          request.setAttribute("matricula", request.getParameter("matricula"));
          acceso=editarPorcentaje;
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
           acceso=mostrarPorcentaje;
       }else if(accion!=null && accion.equalsIgnoreCase("eliminarPorcentaje"))
       {
           String matricula=request.getParameter("matricula");
           daoAlumno = new DAOAlumno();
           daoAlumno.eliminar(matricula);
           acceso=mostrarPorcentaje;
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
