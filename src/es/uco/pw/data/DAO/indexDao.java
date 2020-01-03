package es.uco.pw.data.DAO;

import java.sql.*;
import java.util.ArrayList;

import es.uco.pw.data.BD.DBConexion;
import es.uco.pw.display.beans.gestionBean;


public class indexDao {
	
	private DBConexion con;
	private Connection connection;

	public  indexDao(String jdbURL, String jdbUsername, String jdbPassword) throws SQLException {
		System.out.println(jdbURL+jdbUsername);
		con = new DBConexion(jdbURL, jdbUsername, jdbPassword);
		}
	
	
		public ArrayList<gestionBean> grupo(){
		
		ArrayList<gestionBean> resultado=new ArrayList<gestionBean>();  
				
				try {
					String sql = "SELECT nombre_grupo, descripcion, lider FROM Grupos";
					
					con.conectar();
					connection = con.getJdbcConnection();
					
					PreparedStatement statement = connection.prepareStatement(sql);
					
					ResultSet rs=statement.executeQuery();

					while(rs.next()){
						//System.out.println("Entro si o si");
						gestionBean result=new gestionBean();  
						
						result.setNombre_grupo(rs.getString("nombre_grupo"));  
						result.setDescripcion(rs.getString("descripcion"));
						result.setLider(rs.getString("lider"));
						resultado.add(result);

					}
					
					statement.close();
					con.desconectar();
					
				}catch(Exception e){}
				
				System.out.println("RESULTADO----------------------->>>>>>>>>>>>>>>> " + resultado.size());
				return resultado;
			}
		
		public ArrayList<gestionBean> noticia(){
			
		ArrayList<gestionBean> resultado=new ArrayList<gestionBean>();  
				
			
				try {
					String sql = "SELECT titulo, contenido FROM Noticias where valid = 1";
					
					con.conectar();
					connection = con.getJdbcConnection();
					
					PreparedStatement statement = connection.prepareStatement(sql);
					
					ResultSet rs=statement.executeQuery();

					while(rs.next()){
						//System.out.println("Entro si o si");
						gestionBean result=new gestionBean();  
						
					
						resultado.add(result);

					}
					
					statement.close();
					con.desconectar();
					
				}catch(Exception e){}
				
				return resultado;
			}
}