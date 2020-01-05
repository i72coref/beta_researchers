package es.uco.pw.display.beans;

import java.io.Serializable;

public class gestionBean implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private Integer id_grupo;
	private String nombre_grupo;
	private String categoria;
	private String descripcion;
	private String lider;
	private int n_participantes;

	public Integer getId_grupo() {
		return id_grupo;
	}

	public String getLider() {
		return lider;
	}

	public void setLider(String lider) {
		this.lider = lider;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public void setId_grupo(Integer id_grupo) {
		this.id_grupo = id_grupo;
	}
	public String getNombre_grupo() {
		return nombre_grupo;
	}
	public void setNombre_grupo(String nombre_grupo) {
		this.nombre_grupo = nombre_grupo;
	}
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	public int getN_participantes() {
		return n_participantes;
	}
	public void setN_participantes(int n_participantes) {
		this.n_participantes = n_participantes;
	}
	
}


