package es.uco.pw.data.DAO;

//Paquetes para conexion con la BD
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

//Paquetes creados por el equipo para la conexion con la BD
import es.uco.pw.data.BD.DBConexion;
import es.uco.pw.display.beans.alumnoBean;
import es.uco.pw.display.beans.AsignaturaBean;
import es.uco.pw.display.beans.TestBean;

public class TestDao {
	private DBConexion con;
	private Connection connection;
	
	// CONSTRUCTOR para conectar con la BD //
	public  TestDao(String jdbURL, String jdbUsername, String jdbPassword) throws SQLException {
		con = new DBConexion(jdbURL, jdbUsername, jdbPassword);
	}
	
	// Inserta un nuevo alumno en la BD //
	public boolean insertarAlumno(alumnoBean alumno) throws SQLException {
		String sql = "INSERT INTO Alumnos_Test (idAlumno, nombre) VALUES (?,?)";
		
		con.conectar();
		connection = con.getJdbcConnection();
		
		PreparedStatement statement = connection.prepareStatement(sql);
		
		statement.setInt(1, alumno.getIdAlumno());
		statement.setString(2, alumno.getNombreAlumno());
		
		boolean rowInserted = statement.executeUpdate() > 0;
		statement.close();
		con.desconectar();
		
		return rowInserted;
	}
	
	// Inserta una nueva asignatura en la BD //
	public boolean insertarAsignatura(AsignaturaBean asignatura) throws SQLException {
		String sql = "INSERT INTO Asignaturas_Test (idAsignatura, nombre) VALUES (?,?)";
		
		con.conectar();
		connection = con.getJdbcConnection();
		
		PreparedStatement statement = connection.prepareStatement(sql);
		
		statement.setInt(1, asignatura.getIdAsignatura());
		statement.setString(2, asignatura.getNombreAsignatura());
		
		boolean rowInserted = statement.executeUpdate() > 0;
		statement.close();
		con.desconectar();
		
		return rowInserted;
	}
	
	// Asigna una asignatura a un alumno(o viceversa) en la BD //
	public boolean insertarAlumnoAsignatura(alumnoBean alumno, AsignaturaBean asignatura) throws SQLException {
		String sql = "INSERT INTO Alum_Asig_Test (idAlumno, idAsignatura) VALUES (?,?)";
		
		con.conectar();
		connection = con.getJdbcConnection();
		
		PreparedStatement statement = connection.prepareStatement(sql);
		
		statement.setInt(1, alumno.getIdAlumno());
		statement.setInt(2, asignatura.getIdAsignatura());
		
		boolean rowInserted = statement.executeUpdate() > 0;
		statement.close();
		con.desconectar();
		
		return rowInserted;
	}
}