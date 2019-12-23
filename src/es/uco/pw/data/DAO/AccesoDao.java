/**
 * 
 */
package es.uco.pw.data.DAO;

import java.sql.*;

import es.uco.pw.display.beans.accesoBean;
import es.uco.pw.data.BD.DBConexion;

/**
 * @author root
 *
 */
public class AccesoDao {
	
	private DBConexion con;
	private Connection connection;

	public  AccesoDao(String jdbURL, String jdbUsername, String jdbPassword) throws SQLException {
		System.out.println(jdbURL+jdbUsername);
		con = new DBConexion(jdbURL, jdbUsername, jdbPassword);
	}
	
	public boolean insertarUsuario(accesoBean accesoUsuario) throws SQLException {
		
		
		
		String sql = "INSERT INTO Usuario (idUsuario,nombre, apellidos, correoElectronico, password) VALUES (?,?,?,?,?)";
		System.out.println(accesoUsuario.getNombre()+"-"+accesoUsuario.getApellidos()+"-"+accesoUsuario.getCorreoElectronico());
		con.conectar();
		connection = con.getJdbcConnection();
			
		PreparedStatement statement = connection.prepareStatement(sql);

		statement.setString(1, null);
		statement.setString(2, accesoUsuario.getNombre());
		statement.setString(3, accesoUsuario.getApellidos());
		statement.setString(4, accesoUsuario.getCorreoElectronico());
		statement.setString(5, accesoUsuario.getPassword());
	    
		boolean rowInserted = statement.executeUpdate() > 0;
		statement.close();
		con.desconectar();
		return rowInserted;
	}
	
	
}
