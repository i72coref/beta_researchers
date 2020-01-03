package es.uco.pw.display.beans;

import java.io.Serializable;

public class alumnoBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	// Atributos de la clase AlumnoBean
	private int idAlumno;
	private String nombreAlumno;
	
	alumnoBean() {};
	
	public int getIdAlumno() { return idAlumno; }
	public String getNombreAlumno() { return nombreAlumno; }
	
	public void setIdAlumno(int id) { idAlumno = id; }
	public void setNombreAlumno(String nombre) { nombreAlumno = nombre; }
}