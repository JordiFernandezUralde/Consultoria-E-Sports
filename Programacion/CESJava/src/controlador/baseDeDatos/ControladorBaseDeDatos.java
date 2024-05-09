package controlador.baseDeDatos;

import controlador.ControladorPrincipal;
import modelo.Usuarios;

import java.sql.*;

public class ControladorBaseDeDatos {

    private TablaUsuarios tu;
    private Connection con;

    public ControladorBaseDeDatos(ControladorPrincipal cp) {
        conexionBD(cp);
        tu = new TablaUsuarios(con);
    }

    public void conexionBD(ControladorPrincipal cp){

        /* ----------------- Conexion con la BD Clase ----------------- */

//        try {
//            String url = "jdbc:oracle:thin:@SrvOracle:1521:orcl";
//            String user = "eqdaw04";
//            String passwd = "eqdaw04";
//            Connection con = DriverManager.getConnection (url,user,passwd);
//            System.out.println("Conexion exitosa");
//                tu = new TablaUsuarios(con);
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }

        /* ----------------- Conexion con la BD Local Casa (Test)  ----------------- */

            String url = "jdbc:oracle:thin:@localhost:1521:XE";
            String user = "userproyecto";
            String passwd = "userproyecto";

            try {
                Class.forName("oracle.jdbc.OracleDriver");
                con = DriverManager.getConnection(url, user, passwd);
                System.out.println("Conexión exitosa a la base de datos");

                tu = new TablaUsuarios(con);
            } catch (SQLException e) {
                System.out.println("Error al conectar a la base de datos: " + e.getMessage());
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
    }

    public String login (Usuarios usu) throws SQLException {
        System.out.println("cbd");
        return tu.login(usu);
    }
}
