package es.uco.pw.data.DAO;
import java.sql.*;
import java.util.ArrayList;

import es.uco.pw.display.beans.sessionBean;
import es.uco.pw.data.BD.DBConexion;

public class holaMundoDao {
	private DBConexion con;
	private Connection connection;

	public  holaMundoDao(String jdbURL, String jdbUsername, String jdbPassword) throws SQLException {
		System.out.println(jdbURL+jdbUsername);
		con = new DBConexion(jdbURL, jdbUsername, jdbPassword);
	}
	
	public ArrayList<sessionBean> getholamundo(){

		ArrayList<sessionBean> resultado = new ArrayList<sessionBean>();
		try {
			String sql="select * from Usuario where IdUsuario > ?";
			con.conectar();
			connection = con.getJdbcConnection();
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, "1");
			ResultSet rs=statement.executeQuery();
				while(rs.next()){
					sessionBean session=new sessionBean(); 
					session.setIdUsuario(rs.getInt("idUsuario"));
					session.setNombre(rs.getString("nombre"));
					session.setApellidos(rs.getString("apellidos"));
					resultado.add(session);
			}
		} catch(Exception e){}
			
		return resultado;
	}
}
