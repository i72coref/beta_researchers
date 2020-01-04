package es.uco.pw.data.DAO;

import java.sql.*;

import es.uco.pw.display.beans.sessionBean;
import es.uco.pw.data.BD.DBConexion;

public class modificarPerfilDao {
	
	private DBConexion con;
	private Connection connection;

	public modificarPerfilDao(String jdbURL, String jdbUsername, String jdbPassword) throws SQLException {
		System.out.println(jdbURL+jdbUsername);
		con = new DBConexion(jdbURL, jdbUsername, jdbPassword);
	}

	public void modificar(int id, String campo, String variable) throws SQLException {
		
			System.out.println(id+campo+variable);
			con.conectar();
			
			connection = con.getJdbcConnection();
			System.out.println(connection);
			
			PreparedStatement statement=connection.prepareStatement("update Usuario set ?=? where idUsuario=?");
			statement.setString(1, campo);
			statement.setString(2, variable);
			statement.setInt(3, id);
			
			statement.executeUpdate();
			statement.close();
			
			con.desconectar();
			
	}
	
}

	
