package es.uco.pw.display.beans;

import java.io.Serializable;

/**
 * @author root
 *
 */

public class inicioSesionBean implements Serializable {
	
	private static final long serialVersionUID = 1L;

	public inicioSesionBean(){}
	
	private String correoElectronico;
	private String password;

	public String getCorreoElectronico() {
		return correoElectronico;
	}
	public void setCorreoElectronico(String correoElectronico) {
		this.correoElectronico = correoElectronico;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
