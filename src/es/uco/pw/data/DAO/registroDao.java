/**
 * 
 */
package es.uco.pw.display.dao;

import java.sql.*;

import es.uco.pw.display.beans.registroBean;
import es.uco.pw.utils.DBConexion;

/**
 * @author root
 *
 */
public class registroDao {
	
	private DBConexion con;
	private Connection connection;

	public  registroDao(String jdbURL, String jdbUsername, String jdbPassword) throws SQLException {
		System.out.println(jdbURL+jdbUsername);
		con = new DBConexion(jdbURL, jdbUsername, jdbPassword);
	}
	
	public boolean insertarUsuario(registroBean registro) throws SQLException {
		
		
		
		String sql = "INSERT INTO Usuario (idUsuario,nombre, apellidos, correoElectronico, password, Institucion, investigador) VALUES (?,?,?,?,?,?,?)";
		System.out.println(registro.getNombre()+"-"+registro.getApellidos()+"-"+registro.getEmail());
		System.out.println(registro.getNombre()+"-"+registro.getApellidos()+"-"+registro.getEmail());

		con.conectar();
		connection = con.getJdbcConnection();
			
		PreparedStatement statement = connection.prepareStatement(sql);

		statement.setString(1, null);
		statement.setString(2, registro.getNombre());
		statement.setString(3, registro.getApellidos());
		statement.setString(4, registro.getEmail());
		statement.setString(5, registro.getPassword());
		statement.setString(6, registro.getInstitucion());
		statement.setBoolean(7, registro.isInvestigador());
	    
		boolean rowInserted = statement.executeUpdate() > 0;
		statement.close();
		con.desconectar();
		return rowInserted;
	}
	
	
}
