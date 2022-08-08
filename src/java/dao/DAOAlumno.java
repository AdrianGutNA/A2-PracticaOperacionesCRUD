package dao;
import beans.Alumno;
import conexion.ConexionMySQL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DAOAlumno
{
 private Connection con;
 private PreparedStatement ps;
 private ResultSet rs;
 private Alumno alumno;   
 
 public ArrayList mostrar() 
 {
  ArrayList<Alumno> list=new ArrayList<>();
  String sql="SELECT * FROM alumnos";
  try
  {
      con=ConexionMySQL.getConnection();
      ps=con.prepareStatement(sql);
      rs=ps.executeQuery();
      while(rs.next())
      {
          alumno=new Alumno();
          alumno.setMatricula(rs.getString("Matricula"));
          alumno.setNombre(rs.getString("Nombre"));
          alumno.setApellidos(rs.getString("Apellidos"));
          alumno.setDdi(rs.getInt("Ddi"));
          alumno.setDwi(rs.getInt("Dwi"));
          alumno.setEcbd(rs.getInt("Ecbd"));
          alumno.promediar();
          list.add(alumno);
      }
      rs.close();
      ps.close();
      con.close();
  }
  catch (SQLException e){ }
  return list; 
 }
 
 public boolean agregar (Alumno alumno)  
 {
   String sql = "INSERT INTO alumnos VALUES('"  +
                 alumno.getMatricula()  + "'," + 
           "'" + alumno.getNombre()     + "'," +
           "'" + alumno.getApellidos()  + "'," +
                 alumno.getDdi()        + ","  +
                 alumno.getDwi()        + ","  +
                 alumno.getEcbd()       + ")";
   
   try
   {
        con=ConexionMySQL.getConnection();
        ps=con.prepareStatement(sql);
        ps.executeUpdate();  // Se usa para insert, update y delete.
        ps.close();
        con.close();
   } catch (SQLException ex) { } 
   
   return true;          
 }       
 
 public boolean editar(Alumno alumno, String old)
 {
     String sql="UPDATE alumnos SET " +
            " Matricula  = '" + alumno.getMatricula()  + "',"  +
            " Nombre     = '" + alumno.getNombre()     + "'," +
            " Apellidos  = '" + alumno.getApellidos()  + "'," +
            " Ddi        = "  + alumno.getDdi()        + ","  +
            " Dwi        = "  + alumno.getDwi()        + ","  +
            " Ecbd        = " + alumno.getEcbd()       +
            " WHERE Matricula = '" + old + "'";
     
     try
     {
         con=ConexionMySQL.getConnection();
          ps=con.prepareStatement(sql);
          ps.executeUpdate();
          ps.close();
          con.close();
          
     } catch (SQLException ex) {}
     
     return true;
 }
 
 public boolean eliminar(String matricula)
 {
     String sql= "DELETE FROM alumnos WHERE Matricula ='" + matricula + "'";
     
     try
     {
         con=ConexionMySQL.getConnection();
         ps=con.prepareStatement(sql);
         ps.executeUpdate();
         ps.close();
         con.close();
     } catch (SQLException e) {}
     
     return true;
 }
 
 public Alumno buscar(String matricula)
    {
        String sql="SELECT * FROM alumnos WHERE Matricula = '" + matricula + "'";
        try {
                con=ConexionMySQL.getConnection();
                 ps=con.prepareStatement(sql);
                 rs=ps.executeQuery();
                while (rs.next()) 
                {
                    alumno= new Alumno();
                    alumno.setMatricula(rs.getString("Matricula"));
                    alumno.setNombre(rs.getString("Nombre"));
                    alumno.setApellidos(rs.getString("Apellidos"));
                    alumno.setDdi(rs.getInt("Ddi"));
                    alumno.setDwi(rs.getInt("Dwi"));
                    alumno.setEcbd(rs.getInt("Ecbd"));

                }
                rs.close();
                ps.close();
                con.close();
            }catch (SQLException e) {}
        return alumno;
    }
}
