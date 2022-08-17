package dao;
import beans.Actividad;
import conexion.ConexionMySQL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DAOActividad
{
 private Connection con;
 private PreparedStatement ps;
 private ResultSet rs;
 private Actividad actividad;   
 
 public ArrayList mostrar() 
 {
  ArrayList<Actividad> list=new ArrayList<>();
  String sql="SELECT * FROM actividades";
  try
  {
      con=ConexionMySQL.getConnection();
      ps=con.prepareStatement(sql);
      rs=ps.executeQuery();
      while(rs.next())
      {
          actividad=new Actividad();
          actividad.setId(rs.getInt("Id"));
          actividad.setActividad(rs.getString("Actividad"));
          actividad.setCategoria(rs.getString("Categoria"));
          list.add(actividad);
      }
      rs.close();
      ps.close();
      con.close();
  }
  catch (SQLException e){ }
  return list; 
 }

 public boolean agregar (Actividad actividad)  
 {
   String sql = "INSERT INTO `actividades` (`id`, `actividad`, `categoria`) VALUES (NULL, '" + 
           actividad.getActividad() + "', '" + actividad.getCategoria() + "')";
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

 
 public boolean editar(Actividad actividad, String old)
 {
     String sql= "UPDATE `actividades` SET "
             + "`actividad` = '"   + actividad.getActividad()  + 
               "', `categoria` = '" + actividad.getCategoria()   + 
               "' WHERE `actividades`.`id` = " + old;
     
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
 
 public boolean eliminar(String id)
 {
     String sql= "DELETE FROM actividades WHERE Id ='" + id + "'";
     
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
 
 public Actividad buscar(String id)
    {
        String sql="SELECT * FROM actividades WHERE id = '" + id + "'";
        try {
                 con=ConexionMySQL.getConnection();
                 ps=con.prepareStatement(sql);
                 rs=ps.executeQuery();
                while (rs.next()) 
                {
                    actividad= new Actividad();
                    actividad.setActividad(rs.getString("Actividad"));
                    actividad.setCategoria(rs.getString("Categoria"));

                }
                rs.close();
                ps.close();
                con.close();
            }catch (SQLException e) {}
        return actividad;
    }

}
