package es.uco.pw.display.beans;

import java.io.Serializable;

public class grupoBean implements Serializable{
	private static final long serialVersionUID = 1L;
	private int nombre;
	private String categoria;
	private String descripcion;
	private boolean privacidad;
	private int n_participantes;
	private String fecha_creacion;
	private String actividades;
	private float puntuacion;
	
	
	public int getNombre() {
		return nombre;
	}
	public void setNombre(int nombre) {
		this.nombre = nombre;
	}
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public boolean isPrivacidad() {
		return privacidad;
	}
	public void setPrivacidad(boolean privacidad) {
		this.privacidad = privacidad;
	}
	public int getN_participantes() {
		return n_participantes;
	}
	public void setN_participantes(int n_participantes) {
		this.n_participantes = n_participantes;
	}
	public String getFecha_creacion() {
		return fecha_creacion;
	}
	public void setFecha_creacion(String fecha_creacion) {
		this.fecha_creacion = fecha_creacion;
	}
	public String getActividades() {
		return actividades;
	}
	public void setActividades(String actividades) {
		this.actividades = actividades;
	}
	public float getPuntuacion() {
		return puntuacion;
	}
	public void setPuntuacion(float puntuacion) {
		this.puntuacion = puntuacion;
	}
}
