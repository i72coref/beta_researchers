<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="es.uco.pw.data.DAO.TestDao"%>

<jsp:useBean id="alumno" class="es.uco.pw.display.beans.alumnoBean" scope="page"></jsp:useBean>
<%--<jsp:useBean id="asignatura" class="es.uco.pw.display.beans.AsignaturaBean" scope="page"></jsp:useBean> --%>

<jsp:setProperty property="*" name="alumno" />
<jsp:setProperty property="*" name="asignatura" />

<%
	String nextPage = "../mvc/view/errorpage.jsp";
	
	//Capturamos los datos para la conexión a la BD con los parametros del WEB-INF > XML
	String jdbURL = getServletContext().getInitParameter("jdbURL");
	String jdbUsername = getServletContext().getInitParameter("jdbUsername");
	String jdbPassword = getServletContext().getInitParameter("jdbPassword");
	
	TestDao testDao = new TestDao(jdbURL, jdbUsername, jdbPassword);
	
	try {
		if(testDao.insertarAlumno(alumno))
			nextPage = "./testView.jsp";
	} catch (Exception e) {
		System.out.println("No se inserta Alumno");
	}
	
	try {
		if(testDao.insertarAsignatura(asignatura))
			nextPage = "./testView.jsp";
	} catch (Exception e) {
		System.out.println("No se inserta Asignatura");
	}
	
	/*try {
		if(testDao.insertarAlumnoAsignatura(alumno, asignatura))
			nextPage = "./testView.jsp";
	} catch (Exception e) {
		System.out.println("No se añade un alumno a una asignatura");
	}*/
 %>
 
 <jsp:forward page="<%=nextPage%>"></jsp:forward>