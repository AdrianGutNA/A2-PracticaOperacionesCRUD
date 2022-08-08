package conexion;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionMySQL 
{
  public static Connection getConnection() throws SQLException
  {
      try
      {
        Class.forName("com.mysql.jdbc.Driver");
      }catch (ClassNotFoundException ex )
      {
            System.out.println("Falló el driver");
      }
      
      return DriverManager.getConnection("jdbc:mysql://localhost:3306/dwi_ejemplo1","root", "");
  }
  

}
