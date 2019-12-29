<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="es.uco.pw.data.DAO.b_avanzadaDao"%>
<%@page import="es.uco.pw.display.beans.b_avanzadaBean"%>
<%@page import="java.util.ArrayList"%>   
<%@page import="java.util.List"%> 

<%

String nextPage = "../vistas/errorpage.jsp";
String jdbURL = getServletContext().getInitParameter("jdbURL");
String jdbUsername = getServletContext().getInitParameter("jdbUsername");
String jdbPassword = getServletContext().getInitParameter("jdbPassword");

try {

	b_avanzadaDao b_avanzadaDao = new b_avanzadaDao(jdbURL, jdbUsername, jdbPassword);
	ArrayList<b_avanzadaBean> resultado=b_avanzadaDao.getbusqueda();
	request.setAttribute("resultado",resultado);
}

catch (Exception e) {
		// TODO: handle exception
}


%>

<jsp:forward page="../vistas/result_avanzadaView.jsp" />