<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="es.uco.pw.data.DAO.gestionDao"%>
<%@page import="es.uco.pw.display.beans.gestionBean"%>
<%@page import="es.uco.pw.display.beans.customerBean"%> 
<%@page import="java.util.ArrayList"%>   
<%@page import="java.util.List"%>    

<%
 	String nextPage = "../vistas/errorpage.jsp";
	String jdbURL = getServletContext().getInitParameter("jdbURL");
	String jdbUsername = getServletContext().getInitParameter("jdbUsername");
	String jdbPassword = getServletContext().getInitParameter("jdbPassword");
try {
		gestionDao gestionDao = new gestionDao(jdbURL, jdbUsername, jdbPassword);
		ArrayList<gestionBean> resultado=gestionDao.getGrupos();
		request.setAttribute("resultado",resultado);
	}

catch (Exception e) {
			// TODO: handle exception
	}


%>
<jsp:forward page="../vistas/gestionView.jsp" />