/**
 * 
 */
package es.uco.pw.display.dao;

import java.sql.*;

import es.uco.pw.display.beans.inicioSesionBean;
import es.uco.pw.display.beans.customerBean;
import es.uco.pw.utils.DBConexion;

/**
 * @author root
 *
 */
public class inicioSesionDao {
	
	private DBConexion con;
	private Connection connection;

	public inicioSesionDao(String jdbcURL, String jdbcUsername, String jdbcPassword) throws SQLException {
		System.out.println(jdbcURL+jdbcUsername);
		con = new DBConexion(jdbcURL, jdbcUsername, jdbcPassword);
	}
	/*
	public boolean logueo(inicioSesionBean login) throws SQLException {
		
		boolean status=false; 
		try {
			
			String sql = "SELECT * from Usuario where correoElectronico=? and password=?";
			con.conectar();
			

			connection = con.getJdbcConnection();
			System.out.println(connection);
		
			PreparedStatement statement = connection.prepareStatement(sql);
			
			statement.setString(1, login.getCorreoElectronico());
			statement.setString(2, login.getPassword());
			
			
			ResultSet rs=statement.executeQuery();
			status=rs.next(); 
			statement.close();
			con.desconectar();
		}catch(Exception e){}
		
		return status;
	}
	
	*/
	
public customerBean logueoAplicacion(inicioSesionBean login) throws SQLException {
		
		customerBean customer=null;
		try {
			
			String sql = "SELECT * from Usuario where correoElectronico=? and password=?";
			con.conectar();
			

			connection = con.getJdbcConnection();
		
			PreparedStatement statement = connection.prepareStatement(sql);
			
			statement.setString(1, login.getCorreoElectronico());
			statement.setString(2, login.getPassword());
			
			
			ResultSet rs=statement.executeQuery();
		
			while(rs.next()){
				System.out.println("Entro si o si");
				customer=new customerBean();  
				customer.setIdUsuario(rs.getInt("idUsuario"));  
				customer.setGithub(rs.getString("github"));  
				customer.setInvestigador(rs.getBoolean("Investigador"));  
				customer.setCorreoElectronico(rs.getString("correoElectronico"));
				customer.setPathAvatar(rs.getString("pathAvatar"));
	        } 
			statement.close();
			con.desconectar();
		}catch(Exception e){}
		System.out.println(connection );

		return customer;
	}

public boolean log(inicioSesionBean login) throws SQLException {
	
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
