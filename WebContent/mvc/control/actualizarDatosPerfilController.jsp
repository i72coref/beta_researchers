<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="es.uco.pw.display.beans.sessionBean"%>
<jsp:useBean id="usuarioSession" class="es.uco.pw.display.beans.sessionBean" scope="session"></jsp:useBean>

<% 

String valora = request.getParameter("correo");
String contrase�aa = request.getParameter("contrase�aa");
	

	if(valora != null){
		System.out.println("hola correo "+ valora);
	}

	if(contrase�aa != null){
		System.out.println("hola contrase�a "+ contrase�aa);
	}

%>