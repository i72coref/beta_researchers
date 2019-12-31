<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@page import="es.uco.pw.data.DAO.AccesoDao"%>  
<jsp:useBean id="accesoUsuario" class="es.uco.pw.display.beans.accesoBean" scope="page"></jsp:useBean>  
<jsp:setProperty property="*" name="accesoUsuario"/>
<%
 String nextPage = "../vistas/errorpage.jsp";

	//Capturamos los datos para la conexión 
	String jdbURL = getServletContext().getInitParameter("jdbURL");
	String jdbUsername = getServletContext().getInitParameter("jdbUsername");
	String jdbPassword = getServletContext().getInitParameter("jdbPassword");
	try {
		
		AccesoDao AccesoDao = new AccesoDao(jdbURL, jdbUsername, jdbPassword);
		System.out.println(accesoUsuario.getApellidos()+"--"+accesoUsuario.getCorreoElectronico());
		if(AccesoDao.insertarUsuario(accesoUsuario))
			nextPage = "../../jsp/perfil.jsp";  
		
	
	} catch (Exception e) {
			// TODO: handle exception
	}
 %>
 
 <jsp:forward page="<%=nextPage%>"></jsp:forward>