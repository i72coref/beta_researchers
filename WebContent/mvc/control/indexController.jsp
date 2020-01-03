<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="es.uco.pw.data.DAO.indexDao"%>
<%@page import="es.uco.pw.display.beans.gestionBean"%>
<%@page import="es.uco.pw.display.beans.sessionBean"%>
<%@page import="java.util.ArrayList"%>   
<%@page import="java.util.List"%> 
  
<%

String nextPage = "../vistas/errorpage.jsp";
String jdbURL = getServletContext().getInitParameter("jdbURL");
String jdbUsername = getServletContext().getInitParameter("jdbUsername");
String jdbPassword = getServletContext().getInitParameter("jdbPassword");

try {
	
	indexDao indexDao= new indexDao(jdbURL, jdbUsername, jdbPassword);
	
	
	ArrayList<gestionBean> resultado=indexDao.grupo();
	request.setAttribute("resultado",resultado);
	
	ArrayList<gestionBean> resultado2=indexDao.noticia();
	request.setAttribute("resultado",resultado);

}

catch (Exception e) {
		// TODO: handle exception
}


%>

<jsp:forward page="../view/indexView.jsp" />