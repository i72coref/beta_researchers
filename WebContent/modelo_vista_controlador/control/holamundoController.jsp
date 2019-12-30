<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="es.uco.pw.data.DAO.holaMundoDao"%> 
<%@page import="es.uco.pw.display.beans.sessionBean"%> 
<%@page import="java.util.ArrayList"%>   
<%@page import="java.util.List"%>  

<%

//Capturamos los datos para la conexión a la BD con los parametros del WEB-INF > XML
	String jdbURL = getServletContext().getInitParameter("jdbURL");
	String jdbUsername = getServletContext().getInitParameter("jdbUsername");
	String jdbPassword = getServletContext().getInitParameter("jdbPassword");
	String nextPage = "../view/errorpage.jsp";
	ArrayList<sessionBean> resultado = new ArrayList<sessionBean>();
	
	try{
		
		holaMundoDao holaMundoDao = new holaMundoDao(jdbURL, jdbUsername, jdbPassword);
		
		resultado = holaMundoDao.getholamundo();
 		if (resultado!=null){
 			System.out.println(resultado.size());
 			request.setAttribute("resultado",resultado);
 		}	
		
	} catch(Exception e){
 		System.out.println("Error en la busqueda");
 		
 	}
%>
 <jsp:forward page="../vistas/consultaHolaMundo.jsp"></jsp:forward>