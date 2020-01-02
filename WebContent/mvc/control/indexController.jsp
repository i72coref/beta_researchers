<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="es.uco.pw.data.DAO.indexDao"%>
<%@page import="es.uco.pw.display.beans.indexBean"%>
<%@page import="es.uco.pw.display.beans.sessionBean"%>
<%@page import="java.util.ArrayList"%>   
<%@page import="java.util.List"%> 
  
<%

String nextPage = "../vistas/errorpage.jsp";
String jdbURL = getServletContext().getInitParameter("jdbURL");
String jdbUsername = getServletContext().getInitParameter("jdbUsername");
String jdbPassword = getServletContext().getInitParameter("jdbPassword");

try {
	
	indexDao indexDao = new b_avanzadaDao(jdbURL, jdbUsername, jdbPassword);
	
	
	ArrayList<indexDao> resultado=indexDao.noticias();
	request.setAttribute("resultado",resultado);
	
	
	
	ArrayList<b_avanzadaBean> resultado_grupos=b_avanzadaDao.getbusqueda_grupos(palabraabuscar);
	request.setAttribute("resultado_grupos",resultado_grupos);
}

catch (Exception e) {
		// TODO: handle exception
}


%>

<jsp:forward page="../vistas/result_avanzadaView.jsp" />