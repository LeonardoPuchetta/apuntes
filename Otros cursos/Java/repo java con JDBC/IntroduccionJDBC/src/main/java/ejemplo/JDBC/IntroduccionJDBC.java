package ejemplo.JDBC;

import java.sql.*;

public class IntroduccionJDBC {

    public static void main(String[] args) {
        // PASO 1 : creamos cadena de conexion para comunicarnos con la base de datos de MySql .

        String url = "jdbc:mysql://localhost:3306/test?useSSL=false&serverTimezone=UTC";

        try {
            //PASO 2 : creamos el objeto de conexion a la base de datos .
            Connection conexion = DriverManager.getConnection(url, "root", "admin");
            //getConnection requiere direccion url , usuario y contrasena en String 

            //PASO 3 : creamos el objeto de tipo statement o sentencia 
            Statement instruccion = conexion.createStatement();
            // PASO 4 : creamos el query 
            String sql = "select id_persona ,nombre  ,apellido  , email, telefono from persona ";

            //PASO 5 : ejecucion del query
            //creamos variable para poder procesar el resultado
            ResultSet resultado = instruccion.executeQuery(sql);

            //PASO 6 : procesamos el resultado mediante un while para recorrer los registros que contiene ResultSet
            //el metodo .next mueve el cursor hacia adelante en los registros de resultado
            while (resultado.next()) {
                System.out.print("id_persona : " + resultado.getInt(1));  // donde estan los id
                System.out.print("nombre : " + resultado.getString(2));  // donde estan los nombres
                System.out.print("apellido : " + resultado.getString(3));  // donde estan los apellidos
                System.out.print("id_persona : " + resultado.getString(4));  // donde estan los email
                System.out.println("id_persona : " + resultado.getString(5));  // donde estan los telefonos
            }

            //PASO 7 :  cerramos cada objeto utilizado para no dejar abiertas conexiones 
            //las cuales son finitas
            resultado.close();
            conexion.close();
            instruccion.close();
            
            
            
            
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);

        }
    }

}
