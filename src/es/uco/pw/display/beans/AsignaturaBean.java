package es.uco.pw.display.beans;

import java.io.Serializable;

public class AsignaturaBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	// Atributos de la clase AsignaturaBean
	private int idAsignatura;
	private String nombreAsignatura;
	
	AsignaturaBean() {};
	
	public int getIdAsignatura() { return idAsignatura; }
	public String getNombreAsignatura() { return nombreAsignatura; }
	
	public void setIdAsignatura(int id) { idAsignatura = id; }
	public void setNombreAsignatura(String nombre) { nombreAsignatura = nombre; }
}
