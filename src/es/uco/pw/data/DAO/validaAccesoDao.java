package es.uco.pw.data.DAO;

import java.sql.*;

import es.uco.pw.data.BD.DBConexion;
import es.uco.pw.display.beans.validaAccesoBean;
import es.uco.pw.display.beans.sessionBean;

public class validaAccesoDao {
	
	private DBConexion con;
	private Connection connection;

	public  validaAccesoDao(String jdbURL, String jdbUsername, String jdbPassword) throws SQLException {
		System.out.println(jdbURL+jdbUsername);
		con = new DBConexion(jdbURL, jdbUsername, jdbPassword);
	}
	
	public sessionBean logueoAplicacion(validaAccesoBean login) throws SQLException {
		
		sessionBean session=null;
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
				session=new sessionBean();  
				session.setIdUsuario(rs.getInt("idUsuario"));  
				session.setNombre(rs.getString("nombre"));  
				session.setApellidos(rs.getString("apellidos"));  
				session.setCorreoElectronico(rs.getString("correoElectronico"));
				session.setAdministrador(rs.getBoolean("administrador"));
				session.setEdad(rs.getInt("edad"));
				session.setProvincia(rs.getString("provincia"));
				session.setDireccion(rs.getString("direccion"));
				session.setCP(rs.getInt("CP"));
				session.setTelefono(rs.getString("telefono"));
				session.setUniversidad(rs.getString("universidad"));
				session.setCurso(rs.getInt("curso"));
				session.setExperiencia(rs.getInt("experiencia"));
				
				session.setGithub(rs.getString("github"));
				session.setTwitter(rs.getString("twitter"));
				session.setFacebook(rs.getString("facebook"));
				session.setTelegram(rs.getString("telegram"));
				session.setGoogle(rs.getString("google"));
				session.setActividades(rs.getString("actividades"));
				session.setCarrera(rs.getString("carrera"));
				session.setFechaAlta(rs.getDate("fechaAlta"));
				
	        } 
			
			statement.close();
			con.desconectar();
		}catch(Exception e){}
		System.out.println(connection );

		return session;
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

