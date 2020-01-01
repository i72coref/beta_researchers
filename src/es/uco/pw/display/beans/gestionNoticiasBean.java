package es.uco.pw.display.beans;

import java.io.Serializable;


public class gestionNoticiasBean implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private Integer idNoticia;
	private Integer Usuario;
	private String titulo;
	private String descripcion;
	private String palabrasClave;
	private String contenido;
	private String imagen;
	
	public Integer getIdNoticia() {
		return idNoticia;
	}
	public void setIdNoticia(Integer idNoticia) {
		this.idNoticia = idNoticia;
	}
	public Integer getUsuario() {
		return Usuario;
	}
	public void setUsuario(Integer usuario) {
		Usuario = usuario;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getPalabrasClave() {
		return palabrasClave;
	}
	public void setPalabrasClave(String palabrasClave) {
		this.palabrasClave = palabrasClave;
	}
	public String getContenido() {
		return contenido;
	}
	public void setContenido(String contenido) {
		this.contenido = contenido;
	}
	public String getImagen() {
		return imagen;
	}
	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
