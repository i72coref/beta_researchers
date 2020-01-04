<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="es.uco.pw.display.beans.sessionBean"%>
<jsp:useBean id="usuarioSession" class="es.uco.pw.display.beans.sessionBean" scope="session"></jsp:useBean>

<% 

String valora = request.getParameter("correo");
String contraseñaa = request.getParameter("contraseñaa");
	

	if(valora != null){
		System.out.println("hola correo "+ valora);
	}

	if(contraseñaa != null){
		System.out.println("hola contraseña "+ contraseñaa);
	}

%>