package es.uco.pw.data.dao;

import java.sql.*;
import java.util.ArrayList;  
import java.util.List;  

import es.uco.pw.display.beans.entradaBusquedaBean;
import es.uco.pw.display.beans.resultadoBusquedaBlogBean;
import es.uco.pw.display.beans.resultadoBusquedaInvestigadorBean;
import es.uco.pw.display.beans.resultadoBusquedaPublicacionBean;
import es.uco.pw.utils.DBConexion;


public class ResultadosBusquedaDao {

	private DBConexion con;
	private Connection connection;

	public  ResultadosBusquedaDao(String jdbcURL, String jdbcUsername, String jdbcPassword) throws SQLException {
		System.out.println(jdbcURL+jdbcUsername);
		con = new DBConexion(jdbcURL, jdbcUsername, jdbcPassword);
	}
	
	//Búsqueda investigadores
	public List<resultadoBusquedaInvestigadorBean> ListarResultadosInvestigador(entradaBusquedaBean entradaBusqueda) throws SQLException {
		
		List<resultadoBusquedaInvestigadorBean> listaResultadosInvestigador=new ArrayList<resultadoBusquedaInvestigadorBean>();  
		
		try {
			
			//String sql = "SELECT idUsuario, nombre, apellidos, github, Institucion FROM Usuario WHERE nombre+apellidos COLLATE SQL_Latin1_General_Cp1_CI_AI like ? OR github COLLATE SQL_Latin1_General_Cp1_CI_AI like ? COLLATE ";
			String sql = "SELECT idUsuario, nombre, apellidos, github, Institucion FROM Usuario WHERE nombre like ? OR github like ? OR apellidos like ? ";
			//meter lista de string a null y el controlador se encarga de separar la cadena golda
			con.conectar();
			
			connection = con.getJdbcConnection();
			System.out.println(connection);
		
			PreparedStatement statement = connection.prepareStatement(sql);
			
			statement.setString(1,entradaBusqueda.getCadenaBusqueda());
			statement.setString(2, entradaBusqueda.getCadenaBusqueda());
			statement.setString(3, entradaBusqueda.getCadenaBusqueda());
			
			
			ResultSet rs=statement.executeQuery();
			/*
				System.out.println("HOLA"+ rs);
				status=rs.next();
			*/
			while(rs.next()){
				//System.out.println("Entro si o si");
				resultadoBusquedaInvestigadorBean resultadoBusquedaInvestigador=new resultadoBusquedaInvestigadorBean();  
				
				resultadoBusquedaInvestigador.setIdUsuario(rs.getInt("idUsuario"));  
				resultadoBusquedaInvestigador.setGithub(rs.getString("github"));  
				resultadoBusquedaInvestigador.setNombre(rs.getString("nombre"));  
				resultadoBusquedaInvestigador.setApellidos(rs.getString("apellidos"));
				resultadoBusquedaInvestigador.setInstitucion(rs.getString("Institucion"));
				listaResultadosInvestigador.add(resultadoBusquedaInvestigador);

			}
			
			statement.close();
			con.desconectar();
			
		}catch(Exception e){}
		
		return listaResultadosInvestigador;
	}

	//Búsqueda Publicaciones
	public List<resultadoBusquedaPublicacionBean> ListarResultadosPublicacion(entradaBusquedaBean entradaBusqueda) throws SQLException {
		
		List<resultadoBusquedaPublicacionBean> listaResultadosPublicacion=new ArrayList<resultadoBusquedaPublicacionBean>();
		
		try {
			
			String sql = "SELECT * FROM PublicacionesCientificas WHERE tipo REGEXP ? OR Titulo REGEXP ? OR descripcion REGEXP ? OR ISBN like ? OR DOI REGEXP ?";
			con.conectar();
			
			connection = con.getJdbcConnection();
			System.out.println(connection);
		
			PreparedStatement statement = connection.prepareStatement(sql);
			
			statement.setString(1, entradaBusqueda.getCadenaBusqueda()+"?");
			statement.setString(2, entradaBusqueda.getCadenaBusqueda()+"?");
			statement.setString(3, entradaBusqueda.getCadenaBusqueda()+"?");
			statement.setString(4, entradaBusqueda.getCadenaBusqueda()+"?");
			statement.setString(5, entradaBusqueda.getCadenaBusqueda()+"?");
				
			ResultSet rs=statement.executeQuery();

			while(rs.next()){
				resultadoBusquedaPublicacionBean resultadoBusquedaPublicacion=new resultadoBusquedaPublicacionBean();
				
				resultadoBusquedaPublicacion.setIdPublicacion(rs.getInt("idPublicacion"));
				resultadoBusquedaPublicacion.setTipo(rs.getString("tipo"));
				resultadoBusquedaPublicacion.setTitulo(rs.getString("Titulo"));
				resultadoBusquedaPublicacion.setDescripcion(rs.getString("descripcion"));
				resultadoBusquedaPublicacion.setISBN(rs.getString("ISBN"));
				resultadoBusquedaPublicacion.setDOI(rs.getString("DOI"));
				resultadoBusquedaPublicacion.setEditorial(rs.getString("Editorial"));
				resultadoBusquedaPublicacion.setAnyoPublicacion(rs.getString("anyoPublicacion"));
				resultadoBusquedaPublicacion.setMesPublicacion(rs.getString("mesPublicacion"));
				resultadoBusquedaPublicacion.setVolumen(rs.getString("Volumen"));
				resultadoBusquedaPublicacion.setPaginas(rs.getString("paginas"));
				resultadoBusquedaPublicacion.setNombreRevista(rs.getString("nombreRevista"));
				resultadoBusquedaPublicacion.setIndiceImpacto(rs.getString("IndiceImpacto"));
				resultadoBusquedaPublicacion.setTituloEvento(rs.getString("tituloEvento"));
				resultadoBusquedaPublicacion.setUsuario(rs.getInt("usuario"));

				listaResultadosPublicacion.add(resultadoBusquedaPublicacion); //LA LISTA QUE DEVOLVEMOS

			}
			
			statement.close();
			con.desconectar();
			
		}catch(Exception e){}
		
		return listaResultadosPublicacion;
	}
	
	//Búsqueda Microbloggin
	public List<resultadoBusquedaBlogBean> ListarResultadosBlog(entradaBusquedaBean entradaBusqueda) throws SQLException {
			
		List<resultadoBusquedaBlogBean> listaResultadosBlog=new ArrayList<resultadoBusquedaBlogBean>();
			
		try {
			//Editar consulta	
			String sql = "SELECT * FROM Blog WHERE titulo REGEXP ? OR descripcion REGEXP ? OR palabrasClave REGEXP ? OR contenido REGEXP ?";
			con.conectar();
				
			connection = con.getJdbcConnection();
			System.out.println(connection);
			
			PreparedStatement statement = connection.prepareStatement(sql);
				
			statement.setString(1, entradaBusqueda.getCadenaBusqueda()+"?");
			statement.setString(2, entradaBusqueda.getCadenaBusqueda()+"?");
			statement.setString(3, entradaBusqueda.getCadenaBusqueda()+"?");
			statement.setString(4, entradaBusqueda.getCadenaBusqueda()+"?");
					
			ResultSet rs=statement.executeQuery();

			while(rs.next()){
				
				resultadoBusquedaBlogBean resultadoBusquedaBlog=new resultadoBusquedaBlogBean();
				
				resultadoBusquedaBlog.setIdBlog(rs.getInt("idBlog"));
				resultadoBusquedaBlog.setUsuario(rs.getInt("usuario"));
				resultadoBusquedaBlog.setTitulo(rs.getString("titulo"));
				resultadoBusquedaBlog.setDescripcion(rs.getString("descripcion"));
				resultadoBusquedaBlog.setPalabrasClave(rs.getString("palabrasClave"));	
				resultadoBusquedaBlog.setContenido(rs.getString("contenido"));
				resultadoBusquedaBlog.setPathImagenBlog(rs.getString("pathImagenBlog"));
				
				listaResultadosBlog.add(resultadoBusquedaBlog);
			}
				
			statement.close();
			con.desconectar();
				
		}catch(Exception e){}
			
		return listaResultadosBlog;
	}
		
}
