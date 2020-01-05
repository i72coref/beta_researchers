package es.uco.pw.data.DAO;

import java.sql.*;
import java.util.ArrayList;

import es.uco.pw.data.BD.DBConexion;
import es.uco.pw.display.beans.b_avanzadaBean;


public class b_avanzadaDao {
	
	private DBConexion con;
	private Connection connection;

	public  b_avanzadaDao(String jdbURL, String jdbUsername, String jdbPassword) throws SQLException {
		System.out.println(jdbURL+jdbUsername);
		con = new DBConexion(jdbURL, jdbUsername, jdbPassword);
		}
	
	
		public ArrayList<b_avanzadaBean> getbusqueda(String nombreabuscar){
		
		ArrayList<b_avanzadaBean> resultado=new ArrayList<b_avanzadaBean>();  
				
				try {
					con.conectar();
					connection = con.getJdbcConnection();
					System.out.println(connection);
					
					
					PreparedStatement statement = connection.prepareStatement("SELECT idUsuario, nombre, apellidos, correoElectronico FROM Usuario WHERE nombre like concat('%', ?, '%')");
					statement.setString(1, nombreabuscar);
					ResultSet rs=statement.executeQuery();

					while(rs.next()){
						//System.out.println("Entro si o si");
						b_avanzadaBean result=new b_avanzadaBean();
						
						result.setNombre(rs.getString("nombre"));  
						result.setApellidos(rs.getString("apellidos"));  
						resultado.add(result);

					}
					
					
					statement.close();
					con.desconectar();
					
				}catch(Exception e){}
				return resultado;
			}
				
		public ArrayList<b_avanzadaBean> getbusqueda_grupos(String nombreabuscar){
			
		ArrayList<b_avanzadaBean> resultado_grupos=new ArrayList<b_avanzadaBean>();  
				
				try {
					con.conectar();
					connection = con.getJdbcConnection();
					System.out.println(connection);
					
					//select nombre_grupo from Grupos where nombre_grupo = ?
					//
					PreparedStatement statement = connection.prepareStatement("select nombre_grupo from Grupos where id_grupo in (select idGrupo from Usuario_Grupo where idUsuario in (select idUsuario from Usuario where nombre like concat('%' , ?, '%')) )");
					statement.setString(1, nombreabuscar);
					ResultSet rs=statement.executeQuery();

					while(rs.next()){
						//System.out.println("Entro si o si");
						b_avanzadaBean result=new b_avanzadaBean();  
						
						result.setNombre_grupo(rs.getString("nombre_grupo"));   
						resultado_grupos.add(result);

					}
					
					statement.close();
					con.desconectar();
					
				}catch(Exception e){}
				
				return resultado_grupos;
			}
				
		public ArrayList<b_avanzadaBean> getbusqueda_av(
				int curso, 
				String provincia,
				int edad,
				String uni,
				int cp,
				int exp
				){
			
		ArrayList<b_avanzadaBean> resultado_av=new ArrayList<b_avanzadaBean>();  
				
				try {
					con.conectar();
					connection = con.getJdbcConnection();
					System.out.println(connection);
					
					
						System.out.println(curso);
						System.out.println(provincia);
						System.out.println(edad);
						System.out.println(uni);
						System.out.println(cp);
						System.out.println(exp);
									
						PreparedStatement statement = connection.prepareStatement(
								"Select nombre from Usuario where curso = ? and provincia = ? and edad < ? and universidad = ? and CP = ? and experiencia = ?");
							
								statement.setInt(1, curso);
								statement.setString(2, provincia);
								statement.setInt(3, edad);
								statement.setString(4, uni);
								statement.setInt(5, cp);
								statement.setInt(6, exp);
								ResultSet rs=statement.executeQuery();
					
					

					while(rs.next()){
						//System.out.println("Entro si o si");
						b_avanzadaBean result=new b_avanzadaBean();  
						
						result.setNombre(rs.getString("nombre"));
						//result.setAvatar(rs.getBlob("avatar"));
						resultado_av.add(result);

					}
					
					statement.close();
					con.desconectar();
					
				}catch(Exception e){}
				
				return resultado_av;
			}
	
}
