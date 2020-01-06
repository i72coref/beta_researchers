<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="es.uco.pw.data.DAO.gestionDao"%>
<%@page import="es.uco.pw.display.beans.gestionBean"%>

<jsp:useBean id="usuarioSession" class="es.uco.pw.display.beans.sessionBean" scope="session"></jsp:useBean> 

<%
	String nextPage = "../../errors/error-404.jsp";
	
	//Capturamos los datos para la conexión a la BD con los parametros del WEB-INF > XML
	String jdbURL = getServletContext().getInitParameter("jdbURL");
	String jdbUsername = getServletContext().getInitParameter("jdbUsername");
	String jdbPassword = getServletContext().getInitParameter("jdbPassword");
	
	try {
		
		int idUsuario = usuarioSession.getIdUsuario();
		int idGrupo = Integer.parseInt(request.getParameter("id_grupo"));
		
		System.out.println("idUsuario: "+idUsuario+" - IDGrupo: "+idGrupo);
		
		gestionDao gestionDao = new gestionDao(jdbURL, jdbUsername, jdbPassword);
		if(gestionDao.insertarUsuarioGrupo(idUsuario, idGrupo)) {
			nextPage = "/info_grupo.jsp";
		}
	} catch (Exception e) {
		System.out.println(e);			
	}
 %>
 
 <jsp:forward page="<%=nextPage%>" />