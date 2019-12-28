/**
 * 
 */
package es.uco.pw.display.beans;

import java.io.Serializable;

/**
 * @author root
 *
 */
public class customerBean implements Serializable {


	private static final long serialVersionUID = 1L;

	public customerBean(){}
	
	private int idUsuario=-1;
	private String github;
	private String correoElectronico=null;
	private boolean investigador=false;
	private String pathAvatar=null;

	
	public String getCorreoElectronico() {
		return correoElectronico;
	}
	public void setCorreoElectronico(String correoElectronico) {
		this.correoElectronico = correoElectronico;
	}
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	public String getGithub() {
		return github;
	}
	public void setGithub(String github) {
		this.github = github;
	}
	
	public boolean isInvestigador() {
		return investigador;
	}
	public void setInvestigador(boolean investigador) {
		this.investigador = investigador;
	}
	
	
	public String getPathAvatar() {
		return pathAvatar;
	}
	public void setPathAvatar(String pathAvatar) {
		this.pathAvatar = pathAvatar;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	
	
}
