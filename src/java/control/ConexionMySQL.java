package control;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionMySQL {
    public Connection conectar(){
        String host="localhost:3306", usuario="root";
        // String host="192.168.1.73:3306", usuario="dev";
        String contrasena="stmsc0nt";
        String sid="intranet";
        
        String cadenaconexion;
        cadenaconexion="jdbc:mysql://" + host +"/"+ sid;
        Connection connx=null;
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connx=DriverManager.getConnection(cadenaconexion, usuario, contrasena);
            return connx;
        }
        catch(ClassNotFoundException | SQLException e){
        	System.out.println("Error al Conectar a " + sid);
        	System.out.println("Error: " + e.toString());
            return null;
        }
    }
}



