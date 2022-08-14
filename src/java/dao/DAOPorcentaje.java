package dao;
import beans.Porcentaje;
import conexion.ConexionMySQL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DAOPorcentaje
{
 private Connection con;
 private PreparedStatement ps;
 private ResultSet rs;
 private Porcentaje porcentaje;   
 
 public ArrayList mostrar() 
 {
  ArrayList<Porcentaje> list=new ArrayList<>();
  String sql="SELECT * FROM porcentajes";
  try
  {
      con=ConexionMySQL.getConnection();
      ps=con.prepareStatement(sql);
      rs=ps.executeQuery();
      while(rs.next())
      {
          porcentaje=new Porcentaje();
          porcentaje.setId(rs.getInt("Id"));
          porcentaje.setDescripcion(rs.getString("Descripcion"));
          porcentaje.setPorcentaje(rs.getInt("Porcentaje"));
          list.add(porcentaje);
      }
      rs.close();
      ps.close();
      con.close();
  }
  catch (SQLException e){ }
  return list; 
 }

 public boolean agregar (Porcentaje porcentaje)  
 {
   String sql = "INSERT INTO `porcentajes` (`id`, `descripcion`, `porcentaje`) VALUES (NULL, '" + 
           porcentaje.getDescripcion() + "', '" + porcentaje.getPorcentaje() + "')";
   
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

 
 public boolean editar(Porcentaje porcentaje, String old)
 {
     String sql= "UPDATE `porcentajes` SET "
             + "`descripcion` = '"   + porcentaje.getDescripcion()  + 
               "', `porcentaje` = '" + porcentaje.getPorcentaje()   + 
               "' WHERE `porcentajes`.`id` = " + old;
     
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
     String sql= "DELETE FROM porcentajes WHERE Id ='" + id + "'";
     
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
 
 public Porcentaje buscar(String id)
    {
        String sql="SELECT * FROM porcentajes WHERE id = '" + id + "'";
        try {
                con=ConexionMySQL.getConnection();
                 ps=con.prepareStatement(sql);
                 rs=ps.executeQuery();
                while (rs.next()) 
                {
                    porcentaje= new Porcentaje();
                    porcentaje.setDescripcion(rs.getString("Descripcion"));
                    porcentaje.setPorcentaje(rs.getInt("Porcentaje"));

                }
                rs.close();
                ps.close();
                con.close();
            }catch (SQLException e) {}
        return porcentaje;
    }
}
