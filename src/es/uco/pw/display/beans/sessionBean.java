
package es.uco.pw.display.beans;

import java.io.Serializable;

public class sessionBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	public sessionBean(){}
	
	private int idUsuario=-1;
	private String nombre;
	private String apellidos;
	private String correoElectronico=null;
	private boolean administrador;

	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
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
	public String getCorreoElectronico() {
		return correoElectronico;
	}
	public void setCorreoElectronico(String correoElectronico) {
		this.correoElectronico = correoElectronico;
	}
	
	public boolean isAdministrador() {
		return administrador;
	}
	public void setAdministrador(boolean administrador) {
		this.administrador = administrador;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
