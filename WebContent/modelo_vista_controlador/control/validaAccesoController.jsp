<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="es.uco.pw.data.DAO.validaAccesoDao"%>  

<jsp:useBean id="login" class="es.uco.pw.display.beans.validaAccesoBean" scope="page"></jsp:useBean>  
<jsp:setProperty property="*" name="login"/>



<%
	String nextPage = "../vistas/errorpage.jsp";

	//Capturamos los datos para la conexión a la BD con los parametros del WEB-INF > XML
	String jdbURL = getServletContext().getInitParameter("jdbURL");
	String jdbUsername = getServletContext().getInitParameter("jdbUsername");
	String jdbPassword = getServletContext().getInitParameter("jdbPassword");
	
	try {
		
		validaAccesoDao validaAccesoDao = new validaAccesoDao(jdbURL, jdbUsername, jdbPassword);
		boolean status=validaAccesoDao.login(login);
		
		System.out.println("login: "+status);
		
		nextPage = "../../jsp/perfil.jsp";  
	
	} catch (Exception e) {
			// TODO: handle exception
	}

%>

 <jsp:forward page="<%=nextPage%>"></jsp:forward>