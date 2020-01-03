package es.uco.pw.data.DAO;

import java.sql.*;
import java.util.ArrayList;

import es.uco.pw.display.beans.gestionNoticiasBean;
import es.uco.pw.data.BD.DBConexion;


public class gestionNoticiasDao {
	
	private DBConexion con;
	private Connection connection;

	public  gestionNoticiasDao(String jdbURL, String jdbUsername, String jdbPassword) throws SQLException {
		System.out.println(jdbURL+jdbUsername);
		con = new DBConexion(jdbURL, jdbUsername, jdbPassword);
	}
	public ArrayList<gestionNoticiasBean> getNoticias(){
		
ArrayList<gestionNoticiasBean> resultado=new ArrayList<gestionNoticiasBean>();  
		


		try {
			
	
			String sql = "SELECT idNoticia,titulo,descripcion, Usuario FROM Noticias";
			//meter lista de string a null y el controlador se encarga de separar la cadena golda
			con.conectar();
			
			connection = con.getJdbcConnection();
			System.out.println(connection);
		
			PreparedStatement statement = connection.prepareStatement(sql);
			
			ResultSet rs=statement.executeQuery();
			/*
				System.out.println("HOLA"+ rs);
				status=rs.next();
			*/
			while(rs.next()){
				//System.out.println("Entro si o si");
				gestionNoticiasBean result=new gestionNoticiasBean();  
				
				result.setIdNoticia(rs.getInt("idNoticia"));
				result.setTitulo(rs.getString("titulo"));  
				result.setDescripcion(rs.getString("descripcion"));
				result.setUsuario(rs.getInt("Usuario"));
				resultado.add(result);

			}
			
			statement.close();
			con.desconectar();
			
		}catch(Exception e){}
		
		return resultado;
	}
	
	public boolean borrarNoticia(String noticia) {
		try {
			
			con.conectar();
			
			connection = con.getJdbcConnection();
			System.out.println(connection);
			
			PreparedStatement statement=connection.prepareStatement("delete from Noticias where idNoticia=?");
			statement.setString(1,noticia);
			statement.executeUpdate();
			statement.close();
			
			con.desconectar();
			
		}catch(Exception e){return false;}
		
		return true;
	}
	
	public boolean validarNoticia(String noticia) {
		try {
			
			con.conectar();
			
			connection = con.getJdbcConnection();
			System.out.println(connection);
			
			PreparedStatement statement=connection.prepareStatement("update Noticias SET valid=1 WHERE idNoticia =?");
			statement.setString(1,noticia);
			statement.executeUpdate();
			statement.close();
			
			con.desconectar();
			
		}catch(Exception e){return false;}
		
		return true;
	}
	
	public ArrayList<gestionNoticiasBean> getNoticiasValidar(Integer validado){
		
		ArrayList<gestionNoticiasBean> resultado=new ArrayList<gestionNoticiasBean>();  
				


				try {
			
					//meter lista de string a null y el controlador se encarga de separar la cadena golda
					con.conectar();
					
					connection = con.getJdbcConnection();
					System.out.println(connection);
				
					PreparedStatement statement = connection.prepareStatement("SELECT idNoticia,titulo,descripcion, Usuario FROM Noticias WHERE valid=?");
					
					statement.setInt(1,validado);
					
					ResultSet rs=statement.executeQuery();
					/*
						System.out.println("HOLA"+ rs);
						status=rs.next();
					*/
					while(rs.next()){
						//System.out.println("Entro si o si");
						gestionNoticiasBean result=new gestionNoticiasBean();  
						
						result.setIdNoticia(rs.getInt("idNoticia"));
						result.setTitulo(rs.getString("titulo"));  
						result.setDescripcion(rs.getString("descripcion"));
						result.setUsuario(rs.getInt("Usuario"));
						resultado.add(result);

					}
					
					statement.close();
					con.desconectar();
					
				}catch(Exception e){}
				
				return resultado;
			}
			
	
}
