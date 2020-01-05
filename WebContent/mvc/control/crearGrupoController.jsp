<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="es.uco.pw.data.DAO.grupoDao"%>

<jsp:useBean id="grupoCreado" class="es.uco.pw.display.beans.grupoBean" scope="page"></jsp:useBean>

<%--
	En caso de que las propiedades del bean tengan el mismo nombre que los 
	parámetros HTTP, la asignación de todos los parámetros
	se puede hacer mediante una única etiqueta setProperty, 
	con el parámetro property="*" 
--%>
<jsp:setProperty property="*" name="grupoCreado"/>
			
<%
	String nextPage = "../../errors/error-404.jsp";
	
	//Capturamos los datos para la conexión a la BD con los parametros del WEB-INF > XML
	String jdbURL = getServletContext().getInitParameter("jdbURL");
	String jdbUsername = getServletContext().getInitParameter("jdbUsername");
	String jdbPassword = getServletContext().getInitParameter("jdbPassword");
	
	try {
		grupoDao grupoDao = new grupoDao(jdbURL, jdbUsername, jdbPassword);
		if(grupoDao.insertarGrupo(grupoCreado)) {
			nextPage = "../../info_grupo.jsp";
		}
	} catch (Exception e) {
		System.out.println(e);			
	}
 %>
 
 <jsp:forward page="<%=nextPage%>"></jsp:forward>