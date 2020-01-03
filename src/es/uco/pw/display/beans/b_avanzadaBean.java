package es.uco.pw.display.beans;

import java.io.Serializable;
import java.sql.Blob;


public class b_avanzadaBean implements Serializable {

	
	private static final long serialVersionUID = 1L;
	private String nombre;
	private String apellidos;
	private String nombre_grupo;
	private Blob avatar;
	

	public b_avanzadaBean() { 
		
	}
	
	
	
	public Blob getAvatar() {
		return avatar;
	}

	public void setAvatar(Blob avatar) {
		this.avatar = avatar;
	}

	public String getNombre_grupo() {
		return nombre_grupo;
	}

	public void setNombre_grupo(String nombre_grupo) {
		this.nombre_grupo = nombre_grupo;
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
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
