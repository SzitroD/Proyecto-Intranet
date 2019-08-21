package control;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modelo.Usuario;

public class Consultas {

    public ArrayList<Usuario> validarUsuario(String usuario) {
        ArrayList<Usuario> Lista = new ArrayList<>();
        ResultSet rs = null;
        PreparedStatement ps = null;
        Connection con;
        ConexionMySQL coneccion = new ConexionMySQL();
        con = coneccion.conectar();
        if (con != null) {
            String sql = "SELECT "
                        + "     id_usuario,"
            		+ "	nombre_usuario, "
            		+ "	contraseña "
                        + "FROM "
            		+ "	usuarios"
            		+ "where "
            		+ "	nombre_usuario = '" + usuario + "' ";
            try {
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    Usuario objUsuario = new Usuario();
                    objUsuario.setId_Usuario(rs.getInt("id_usuario"));
                    objUsuario.setNombre_Usuario(rs.getString("nombre_usuario"));
                    objUsuario.setContraseña(rs.getString("contrasena"));
                    Lista.add(objUsuario);
                    objUsuario = null;
                }
            } catch (SQLException e) {
                System.out.println("ERROR validarUsuario: " + e.getSQLState() + ": " + e.getMessage());
            } finally {
                try {
                    if (ps != null) {
                        ps.close();
                    }
                    if (rs != null) {
                        rs.close();
                    }
                    ps = null;
                    rs = null;
                    con.close();
                } catch (SQLException ee) {
                    System.out.println("SQL ERROR-2 " + ee.getSQLState() + ee.getMessage());
                }
            }
        } else {
            System.out.println("CONECCION FAIL");
            return Lista;
        }
        return Lista;
    }
}
