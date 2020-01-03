package es.uco.pw.display.beans;

import java.io.Serializable;
import es.uco.pw.display.beans.alumnoBean;
import es.uco.pw.display.beans.AsignaturaBean;


public class TestBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	// Atributos de la clase TestBean
	private alumnoBean alumno;
	private AsignaturaBean asignatura;
	
	TestBean() {};
}