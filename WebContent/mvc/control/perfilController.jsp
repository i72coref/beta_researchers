<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="es.uco.pw.data.DAO.validaAccesoDao"%>
<%@page import="es.uco.pw.display.beans.validaAccesoBean"%>
<%@page import="es.uco.pw.display.beans.sessionBean"%>

<jsp:useBean id="login" class="es.uco.pw.display.beans.validaAccesoBean" scope="page"></jsp:useBean>
<jsp:useBean id="usuarioSession" class="es.uco.pw.display.beans.sessionBean" scope="session"></jsp:useBean>

<jsp:setProperty property="*" name="login"/>

<%!
int id;
String nombre;
String apellidos;
String correo;
boolean researcher;
%>

<%
	//Capturamos los datos para la conexi�n a la BD con los parametros del WEB-INF > XML
	String jdbURL = getServletContext().getInitParameter("jdbURL");
	String jdbUsername = getServletContext().getInitParameter("jdbUsername");
	String jdbPassword = getServletContext().getInitParameter("jdbPassword");
	
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		try {
			validaAccesoDao validaAccesoDao = new validaAccesoDao(jdbURL, jdbUsername, jdbPassword);

			boolean status=validaAccesoDao.login(login);
			System.out.println("login: "+status);
			
			if (status){
				
				System.out.println("ok");
				try {
					validaAccesoDao validaAccesoDao2=new validaAccesoDao(jdbURL, jdbUsername, jdbPassword);

					sessionBean Auxiliar=new sessionBean();

					Auxiliar=validaAccesoDao2.logueoAplicacion(login);
					
					id=Auxiliar.getIdUsuario();
					correo=Auxiliar.getCorreoElectronico();
					
					%> 
					  <jsp:setProperty name="usuarioSession" property="idUsuario" value="<%=id%>"/>  
					  <jsp:setProperty name="usuarioSession" property="correoElectronico" value="<%=correo%>"/>  
					<%
					
					request.setAttribute("session", session);
				}
				catch (Exception e) {
						// TODO: handle exception
					
				}
				
			}
			else{
				
				System.out.println("no se puede iniciar");
				response.sendRedirect("../vistas/errorpage.jsp");

			}
						
		} 
		catch (Exception e) {
				// TODO: handle exception
			
		}

%>
