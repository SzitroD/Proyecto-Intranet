package control;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Consultas {

    public Boolean validarUsuario(String usuario, String contraseña) {
        Boolean status = false;
        Connection con = new ConexionMySQL().conectar();
        PreparedStatement ps = null;
        ResultSet rs = null;
        if (con != null) {
            String sql = "SELECT idUsuario AS ID, usuario AS USU, contraseña AS PASS \n" +
                "FROM intranet.usuarios \n" +
                "WHERE usuario = ? AND contraseña = ? ";
            try {
                ps = con.prepareStatement(sql);
                ps.setString(1, usuario);
                ps.setString(2, contraseña);
                // System.out.println("Query: \n" + ps.toString());
                rs = ps.executeQuery();
                if (rs.next()) {
                    status = true;
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
                    System.out.println("ERROR SQL: " + ee.getSQLState() + ee.getMessage());
                }
            }
        } else {
            System.out.println("ERROR SQL: Conexión nula");
        }
        return status;
    }
}
