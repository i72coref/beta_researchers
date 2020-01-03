<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="es.uco.pw.data.DAO.indexDao"%>
<%@page import="es.uco.pw.data.DAO.gestionDao"%>
<%@page import="es.uco.pw.data.DAO.gestionNoticiasDao"%>
<%@page import="es.uco.pw.display.beans.gestionBean"%>
<%@page import="es.uco.pw.display.beans.sessionBean"%>
<%@page import="es.uco.pw.display.beans.gestionNoticiasBean"%>
<%@page import="java.util.ArrayList"%>   
<%@page import="java.util.List"%> 
  
<%

String nextPage = "../vistas/errorpage.jsp";
String jdbURL = getServletContext().getInitParameter("jdbURL");
String jdbUsername = getServletContext().getInitParameter("jdbUsername");
String jdbPassword = getServletContext().getInitParameter("jdbPassword");

try {
	
	gestionDao gestionDao= new gestionDao(jdbURL, jdbUsername, jdbPassword);
	
	

		ArrayList<gestionBean> resultado=gestionDao.getGruposValidar(1);
		request.setAttribute("resultado",resultado);

	gestionNoticiasDao gestionNoticiasDao= new gestionNoticiasDao(jdbURL, jdbUsername, jdbPassword);
	
		//Lo hemos borrado, pero hay que actualizar la página.
		ArrayList<gestionNoticiasBean> resultNoticias=gestionNoticiasDao.getNoticiasValidar(1);
		request.setAttribute("result",resultNoticias);
		
	


}

catch (Exception e) {
		// TODO: handle exception
}


%>

<jsp:forward page="../view/indexView.jsp" />