
package es.uco.pw.data.BD;
import java.sql.*;

public class DBConexion {
	
    private Connection jdbConnection;
    private String jdbURL;
    private String jdbUsername;
    private String jdbPassword;
    
    //constructor
    public DBConexion(String jdbURL, String jdbUsername, String jdbPassword) {
		this.jdbURL = jdbURL;
		this.jdbUsername = jdbUsername;
		this.jdbPassword = jdbPassword;
	}
    
	public void conectar() throws SQLException {
        if (jdbConnection == null || jdbConnection.isClosed()) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                throw new SQLException(e);
            }
            jdbConnection = DriverManager.getConnection(jdbURL, jdbUsername, jdbPassword);
        }
    }
     
    public void desconectar() throws SQLException {
        if (jdbConnection != null && !jdbConnection.isClosed()) {
            jdbConnection.close();
        }
    }
 
	public Connection getJdbcConnection() {
		return jdbConnection;
	} 
}
