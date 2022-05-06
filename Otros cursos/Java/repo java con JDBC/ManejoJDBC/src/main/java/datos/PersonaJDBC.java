package datos;

import domain.Persona;
import java.sql.*;
import java.util.ArrayList;

import java.util.List;
//se encargara de hacer las modificaciones en la tabla de personas

public class PersonaJDBC {
//sentencias SQL para realizar las acciones en la base de datos 

    private static final String SQL_SELECT = "SELECT id_persona , nombre , apellido , email,telefono  FROM persona ";
    private static final String SQL_INSERT = "INSERT INTO persona(nombre , apellido , email,telefono) VALUES (?,?,?,?) ";
    private static final String SQL_UPDATE = "UPDATE persona SET nombre=? , apellido=? , email=?,telefono=? WHERE  id_persona= ? ";
    private static final String SQL_DELETE = "DELETE FROM  persona WHERE  id_persona= ? ";

    // METODO PARA MODIFICAR UN REGISTRO 
    public List<Persona> select() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Persona persona = null;
        List<Persona> personas = new ArrayList<Persona>();

        try {

            // obtenemos la conexion a la base de datos 
            conn = Conexion.getConnection();
            //inicializamos objeto de tipo Statement 
            stmt = conn.prepareStatement(SQL_SELECT);
            //ejecucion del query 
            rs = stmt.executeQuery();

            //iteracion de cada registro 
            while (rs.next()) {
                // recuperamos cada valor de la sentencia 
                int id_persona = rs.getInt("id_persona");
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                String email = rs.getString("email");
                String telefono = rs.getString("telefono");

                //construimos objeto de tipo persona 
                persona = new Persona();
                persona.setNombre(nombre);
                persona.setApellido(apellido);
                persona.setEmail(email);
                persona.setTelefono(telefono);

                // agrego la persona creada a la lista de personas 
                personas.add(persona);

            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            // cerramos las conexiones abiertas 
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);

        }
        return personas;

    }

}
