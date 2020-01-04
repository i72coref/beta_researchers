// Nombre para el paquete
package es.uco.pw.data.DAO;

// Paquetes para conexion con la BD
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

// Paquetes creados por el equipo para la conexion con la BD
import es.uco.pw.data.BD.DBConexion;
import es.uco.pw.display.beans.gestionBean;
import es.uco.pw.display.beans.grupoBean;

public class GroupDao {
	// ATRIBUTOS DE LA CLASE GROUPDAO
	private DBConexion con;
	private Connection connection;

	// CONSTRUCTOR DE LA CLASE GROUPDAO
	public  GroupDao(String jdbURL, String jdbUsername, String jdbPassword) throws SQLException {
		System.out.println(jdbURL+jdbUsername);
		con = new DBConexion(jdbURL, jdbUsername, jdbPassword);
	}
	
	// METODOS DE LA CLASE GROUPDAO
	
	// Insertar un nuevo grupo en la BD
	public boolean insertarGrupo(grupoBean nuevoGrupo) throws SQLException {
		String sql = "INSERT INTO Grupos (id_grupo,nombre_grupo, categoria, descripcion, privacidad, n_participantes, fecha_creacion, actividades, puntuacion) VALUES (?,?,?,?,?,?,?,?,?)";
		con.conectar();
		connection = con.getJdbcConnection();
			
		PreparedStatement statement = connection.prepareStatement(sql);

		statement.setString(1, null);
		statement.setString(2, nuevoGrupo.getNombre());
		statement.setString(3, nuevoGrupo.getCategoria());
		statement.setString(4, nuevoGrupo.getDescripcion());
		statement.setInt(5, nuevoGrupo.getPrivacidad());
		statement.setInt(6, nuevoGrupo.getN_participantes());
		statement.setDate(7, new java.sql.Date(nuevoGrupo.getFecha_creacion().getTime()));
		statement.setString(8, nuevoGrupo.getActividades());
		statement.setFloat(9, nuevoGrupo.getPuntuacion());
		
		boolean rowInserted = statement.executeUpdate() > 0;
		statement.close();
		con.desconectar();
		return rowInserted;
	}
	
	public ArrayList<grupoBean> getGrupos() throws SQLException {
		
		ArrayList<grupoBean> resultado=new ArrayList<grupoBean>();
		
		try {
			
			String sql = "SELECT * FROM Grupos";
			con.conectar();
			connection = con.getJdbcConnection();
			
			PreparedStatement statement = connection.prepareStatement(sql);
			
			ResultSet rs=statement.executeQuery();
			
			while(rs.next()) {
				groupBean result=new groupBean();  
				
				result.setId_grupo(rs.getInt("id_grupo"));  
				result.setNombre_grupo(rs.getString("nombre_grupo"));  
				resultado.add(result);
			}
				
			statement.close();
			con.desconectar();
			
		} catch(Exception e) {
			System.out.println(e);
		}
			return resultado;
	}	
}
