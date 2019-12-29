package es.uco.pw.display.beans;

import java.io.Serializable;
import java.io.SerializablePermission;

public class b_avanzadaBean extends SerializablePermission implements Serializable {

	
	private static final long serialVersionUID = 1L;
	private String nombre;
	private String apellidos;
	
	public b_avanzadaBean() { 
		
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
