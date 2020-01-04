<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@page import="es.uco.pw.data.DAO.AccesoDao"%>  

<jsp:useBean id="accesoUsuario" class="es.uco.pw.display.beans.accesoBean" scope="page"></jsp:useBean>  
<jsp:setProperty property="*" name="accesoUsuario"/>
<!-- para que funcione adecuadamente, las variables del bean se han de llamar igual que las de el cuestionario --> 

<%
 String nextPage = "../view/errorpage.jsp";

	//Capturamos los datos para la conexión a la BD con los parametros del WEB-INF > XML
	String jdbURL = getServletContext().getInitParameter("jdbURL");
	String jdbUsername = getServletContext().getInitParameter("jdbUsername");
	String jdbPassword = getServletContext().getInitParameter("jdbPassword");
	
	try {
		
		AccesoDao AccesoDao = new AccesoDao(jdbURL, jdbUsername, jdbPassword);
		System.out.println(accesoUsuario.getApellidos()+"--"+accesoUsuario.getCorreoElectronico());
		if(AccesoDao.insertarUsuario(accesoUsuario))
			nextPage = "../view/registroCorrectoView.jsp";  
		
	} catch (Exception e) {
			// TODO: handle exception
	}
 %>
 
 <jsp:forward page="<%=nextPage%>"></jsp:forward>