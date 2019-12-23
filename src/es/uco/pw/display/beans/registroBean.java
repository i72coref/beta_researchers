/**
 * 
 */
package es.uco.pw.display.beans;

import java.io.Serializable;

/**
 * @author root
 *
 */
public class registroBean implements Serializable {


	private static final long serialVersionUID = 1L;

	public registroBean(){}
	
	private String nombre;
	private String apellidos;
	private String email;
	private String institucion;
	private String password;
	private boolean investigador;
	
	public boolean isInvestigador() {
		return investigador;
	}
	public void setInvestigador(boolean investigador) {
		this.investigador = investigador;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getInstitucion() {
		return institucion;
	}
	public void setInstitucion(String institucion) {
		this.institucion = institucion;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	
	
	
}
