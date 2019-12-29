package es.uco.pw.data.DAO;

import java.sql.*;
import java.util.ArrayList;

import es.uco.pw.display.beans.gestionBean;
import es.uco.pw.data.BD.DBConexion;


public class gestionDao {
	
	private DBConexion con;
	private Connection connection;

	public  gestionDao(String jdbURL, String jdbUsername, String jdbPassword) throws SQLException {
		System.out.println(jdbURL+jdbUsername);
		con = new DBConexion(jdbURL, jdbUsername, jdbPassword);
	}
	public ArrayList<gestionBean> getGrupos(){
		
ArrayList<gestionBean> resultado=new ArrayList<gestionBean>();  
		


		try {
			
			//String sql = "SELECT idUsuario, nombre, apellidos, github, Institucion FROM Usuario WHERE nombre+apellidos COLLATE SQL_Latin1_General_Cp1_CI_AI like ? OR github COLLATE SQL_Latin1_General_Cp1_CI_AI like ? COLLATE ";
			String sql = "SELECT id_grupo, nombre_grupo FROM Grupos";
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
				gestionBean result=new gestionBean();  
				
				result.setId_grupo(rs.getInt("id_grupo"));  
				result.setNombre_grupo(rs.getString("nombre_grupo"));  
				resultado.add(result);

			}
			
			statement.close();
			con.desconectar();
			
		}catch(Exception e){}
		
		return resultado;
	}
	
}

	
