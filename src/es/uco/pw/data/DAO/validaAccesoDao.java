package es.uco.pw.data.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import es.uco.pw.data.BD.DBConexion;
import es.uco.pw.display.beans.validaAccesoBean;

public class validaAccesoDao {
	private DBConexion con;
	private Connection connection;

	public  validaAccesoDao(String jdbURL, String jdbUsername, String jdbPassword) throws SQLException {
		System.out.println(jdbURL+jdbUsername);
		con = new DBConexion(jdbURL, jdbUsername, jdbPassword);
	}
	
	public boolean login(validaAccesoBean login) throws SQLException {
		
		boolean status=false;
		
		try {
			
			String sql = "SELECT * from Usuario where correoElectronico=? and password=?";
			con.conectar();
			
			connection = con.getJdbcConnection();
		
			PreparedStatement statement = connection.prepareStatement(sql);
			
			statement.setString(1, login.getCorreoElectronico());
			statement.setString(2, login.getPassword());
			
			ResultSet rs=statement.executeQuery();
	 
			status=rs.next();  
		
			statement.close();
			con.desconectar();
			
		}catch(Exception e){}
		
		
		System.out.println(connection );

		return status;
		}
	
	
	
}

