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
		
		try {
			System.out.println("Me llega" + id+campo+variable);
			con.conectar();
			
			connection = con.getJdbcConnection();
			System.out.println(connection);
			String sql="update Usuario set "+campo;
			
			PreparedStatement statement=connection.prepareStatement(sql +"=? where idUsuario=?");
			
			//statement.setString(1, campo);
			statement.setString(1, variable);
			statement.setString(2, String.valueOf(id));
			
			statement.executeUpdate();
			statement.close();
			
			con.desconectar();
			
		}catch(Exception e){}
		
			//return true;
	}
	
}

	
