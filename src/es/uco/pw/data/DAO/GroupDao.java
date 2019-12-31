package es.uco.pw.data.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import es.uco.pw.data.BD.DBConexion;
import es.uco.pw.display.beans.grupoBean;

public class GroupDao {
	private DBConexion con;
	private Connection connection;

	public  GroupDao(String jdbURL, String jdbUsername, String jdbPassword) throws SQLException {
		System.out.println(jdbURL+jdbUsername);
		con = new DBConexion(jdbURL, jdbUsername, jdbPassword);
	}
	
	public boolean insertarGrupo(grupoBean nuevoGrupo) throws SQLException {
		
		String sql = "INSERT INTO Grupos (id_grupo,nombre_grupo, categoria, descripcion, privacidad, n_participantes, fecha_creacion, actividades, puntuacion) VALUES (?,?,?,?,?,?,?,?,?)";
		//System.out.println(nuevoGrupo.getNombre()+"-"+nuevoGrupo.getApellidos()+"-"+nuevoGrupo.getCorreoElectronico());
		con.conectar();
		connection = con.getJdbcConnection();
			
		PreparedStatement statement = connection.prepareStatement(sql);

		statement.setString(1, null);
		statement.setInt(2, nuevoGrupo.getNombre());
		statement.setString(3, nuevoGrupo.getCategoria());
		statement.setString(4, nuevoGrupo.getDescripcion());
		statement.setBoolean(5, nuevoGrupo.isPrivacidad());
		statement.setInt(6, nuevoGrupo.getN_participantes());
		statement.setString(7, nuevoGrupo.getFecha_creacion());
		statement.setString(8, nuevoGrupo.getActividades());
		statement.setFloat(9, nuevoGrupo.getPuntuacion());
		
		boolean rowInserted = statement.executeUpdate() > 0;
		statement.close();
		con.desconectar();
		return rowInserted;
	}
}
