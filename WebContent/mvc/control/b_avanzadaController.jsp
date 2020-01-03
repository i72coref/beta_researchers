<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="es.uco.pw.data.DAO.b_avanzadaDao"%>
<%@page import="es.uco.pw.display.beans.b_avanzadaBean"%>
<%@page import="es.uco.pw.display.beans.sessionBean"%>
<%@page import="java.util.ArrayList"%>   
<%@page import="java.util.List"%> 
  
<%

String nextPage = "../vistas/errorpage.jsp";
String jdbURL = getServletContext().getInitParameter("jdbURL");
String jdbUsername = getServletContext().getInitParameter("jdbUsername");
String jdbPassword = getServletContext().getInitParameter("jdbPassword");

try {
	int grado = Integer.parseInt(request.getParameter("GRADO"));
	String provincia = request.getParameter("PROVINCIA");
	int edad = Integer.parseInt(request.getParameter("EDAD"));
	String uni = request.getParameter("UNI");
	int cp = Integer.parseInt(request.getParameter("CP"));
	int exp = Integer.parseInt(request.getParameter("EXPERIENCIA"));
	
	System.out.println(grado);
	b_avanzadaDao b_avanzadaDao = new b_avanzadaDao(jdbURL, jdbUsername, jdbPassword);
	
	
	ArrayList<b_avanzadaBean> resultado_av=b_avanzadaDao.getbusqueda_av(
	grado, provincia,edad,uni,cp,exp);
	request.setAttribute("resultado_av",resultado_av);	
	
}

catch (Exception e) {
		// TODO: handle exception
}


%>

<jsp:forward page="../view/result_avanzadaView.jsp" />