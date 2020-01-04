<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="es.uco.pw.display.beans.sessionBean"%>
<%@page import="es.uco.pw.data.DAO.modificarPerfilDao"%>
<jsp:useBean id="usuarioSession" class="es.uco.pw.display.beans.sessionBean" scope="session"></jsp:useBean> 


<%
String nextPage = "../vistas/errorpage.jsp";
int id = usuarioSession.getIdUsuario();
String campo = (String)application.getAttribute("campo"); 
String variable = request.getParameter("variable");

String jdbURL = getServletContext().getInitParameter("jdbURL");
String jdbUsername = getServletContext().getInitParameter("jdbUsername");
String jdbPassword = getServletContext().getInitParameter("jdbPassword");

	try{
		
		System.out.println("el usuario " + id + " para cambiar el "+ campo + " con el valor "+ variable);
		
		modificarPerfilDao modificarPerfilDao = new modificarPerfilDao(jdbURL, jdbUsername, jdbPassword);
		
		modificarPerfilDao.modificar(id, campo, variable);
		
		nextPage = "validaAccesoController.jsp"; 
	}catch (Exception e) {
		// TODO: handle exception
}
%>
 <jsp:forward page="<%=nextPage%>"></jsp:forward>