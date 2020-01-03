package es.uco.pw.data.DAO;

import java.sql.*;
import java.util.ArrayList;

import es.uco.pw.display.beans.sessionBean;
import es.uco.pw.data.BD.DBConexion;


public class modificarPerfilDao {
	
	private DBConexion con;
	private Connection connection;

	public  modificarPerfilDao(String jdbURL, String jdbUsername, String jdbPassword) throws SQLException {
		System.out.println(jdbURL+jdbUsername);
		con = new DBConexion(jdbURL, jdbUsername, jdbPassword);
	}

	public boolean borrarGrupo(String grupo) {
		try {
			
			con.conectar();
			
			connection = con.getJdbcConnection();
			System.out.println(connection);
			
			PreparedStatement statement=connection.prepareStatement("update ? from Usuario where idUsuario=?");
			statement.setString(1,grupo);
			
			
			
			statement.executeUpdate();
			statement.close();
			
			con.desconectar();
			
		}catch(Exception e){return false;}
		
		return true;
	}
	
}

	
