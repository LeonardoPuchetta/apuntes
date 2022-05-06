package datos;

import java.sql.*;

public class Conexion {
//variables para realizar la conexion a la base de datos 

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/test?useSSL=false&serverTimezone=UTC";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASS = "admin";

    public static Connection getConnection() throws SQLException {
        //regresamos una conexion 
        return DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASS);
        // con esto creamos la conexion a la base de datos 

    }
// metodos para cerrar las conexiones previamente abiertas

    // tiene como argumento un objeto de tipo ResultSet 
    public static void close(ResultSet rs) {

        try {
            rs.close();
        } catch (SQLException ex) {

            ex.printStackTrace(System.out);

        }
    }
// tiene como argumento un objeto de tipo PreparedStatement 

    public static void close(PreparedStatement stmt) {

        try {
            stmt.close();
        } catch (SQLException ex) {

            ex.printStackTrace(System.out);

        }

    }
// tiene como argumento un objeto de tipo Connection

    public static void close(Connection con) {

        try {
            con.close();
        } catch (SQLException ex) {

            ex.printStackTrace(System.out);

        }

    }

}
