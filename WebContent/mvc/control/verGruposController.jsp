<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="es.uco.pw.data.DAO.gestionDao"%>
<%@page import="es.uco.pw.data.DAO.gestionNoticiasDao"%>
<%@page import="es.uco.pw.display.beans.gestionBean"%>
<%@page import="es.uco.pw.display.beans.gestionNoticiasBean"%> 
<%@page import="java.util.ArrayList"%>   
<%@page import="java.util.List"%>   

<%
 	String nextPage = "../vistas/errorpage.jsp";
	String jdbURL = getServletContext().getInitParameter("jdbURL");
	String jdbUsername = getServletContext().getInitParameter("jdbUsername");
	String jdbPassword = getServletContext().getInitParameter("jdbPassword");
	try {
		gestionDao gestionDao = new gestionDao(jdbURL, jdbUsername, jdbPassword);
		ArrayList<gestionBean> resultado=gestionDao.getGruposValidar(1);
		request.setAttribute("resultado",resultado);
		
		gestionNoticiasDao gestionNoticiasDao = new gestionNoticiasDao(jdbURL, jdbUsername, jdbPassword);
		ArrayList<gestionNoticiasBean> resultNoticias=gestionNoticiasDao.getNoticiasValidar(1);
		request.setAttribute("result",resultNoticias);
	}

	catch (Exception e) {
			// TODO: handle exception
	}
%>
<jsp:forward page="../view/verGruposView.jsp" />