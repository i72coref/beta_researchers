<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="es.uco.pw.display.dao.registroDao"%>  



<jsp:useBean id="registro" class="es.uco.pw.display.beans.registroBean" scope="page"></jsp:useBean>  
<jsp:setProperty property="*" name="registro"/>
<!-- para que funcione adecuadamente, las variables del bean se han de llamar igual que las de el cuestionario --> 

<%
 
	int registrado=0;
	String nextPage = "../view/errorPages/register-error.jsp";

	//Capturamos los datos para la conexión a la base de datos que se encuentran en el xml
	String jdbcURL = getServletContext().getInitParameter("jdbURL");
	String jdbcUsername = getServletContext().getInitParameter("jdbUsername");
	String jdbcPassword = getServletContext().getInitParameter("jdbPassword");
	try {

		registroDao registroDao = new registroDao(jdbURL, jdbUsername, jdbPassword);
		System.out.println(registro.getApellidos()+"--"+registro.getEmail());
		if(registroDao.insertarUsuario(registro))
			nextPage = "../control/accesoInicioController.jsp";  
	
	} catch (Exception e) {
			// TODO: handle exception
	}
 %>
 <jsp:forward page="<%=nextPage%>"></jsp:forward>