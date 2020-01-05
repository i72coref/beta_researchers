// Nombre para el paquete
package es.uco.pw.display.beans;

// Llama al paquete "Serializable" de la libreria java.io
import java.io.Serializable;
import java.util.Date;

// SERIALIZACION DE OBJETOS
// Permite convertir cualquier objeto cuya clase implemente el 
// interface Serializable en una secuencia de bytes que pueden 
// ser posteriormente leídos para restaurar el objeto original. Esta 
// característica se mantiene incluso a través de la red, por lo que podemos 
// crear un objeto en un ordenador que corra bajo Windows 95/98, serializarlo 
// y enviarlo a través de la red a una estación de trabajo que corra bajo 
// UNIX donde será correctamente reconstruido.
public class grupoBean implements Serializable {
	
	// The serialVersionUID is a universal version identifier for a Serializable
	// class. Deserialization uses this number to ensure that a loaded class 
	// corresponds exactly to a serialized object. If no match is found, 
	// then an InvalidClassException is thrown
	private static final long serialVersionUID = 1L;
	
	// ATRIBUTOS DE LA CLASE GRUPO
	private String nombre;
	private String categoria;
	private String descripcion;
	private int privacidad;
	private int n_participantes;
	private Date fecha_creacion;
	private String actividades;
	private float puntuacion;
	private int validar;
	
	// CONSTRUCTOR DE LA CLASE GROUPBEAN
	public grupoBean() {
		this.setValidar(0);
		this.setFecha_creacion(new Date());
	}
	
	// METODOS DE LA CLASE GRUPO
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
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
	public int getPrivacidad() {
		return privacidad;
	}
	public void setPrivacidad(int privacidad) {
		this.privacidad = privacidad;
	}
	public int getN_participantes() {
		return n_participantes;
	}
	public void setN_participantes(int n_participantes) {
		this.n_participantes = n_participantes;
	}
	public Date getFecha_creacion() {
		return fecha_creacion;
	}
	public void setFecha_creacion(Date fecha_creacion) {
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
	public int getValidar() {
		return validar;
	}
	public void setValidar(int validar) {
		this.validar = validar;
	}
}
