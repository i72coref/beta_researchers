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
boolean admin;
String direccion;
String twitter;
String github;
String telegram;
String google;
int cp;
int grado;
int experiencia;
String uni;
int edad;
String provincia;
%>

<%
	//Capturamos los datos para la conexión a la BD con los parametros del WEB-INF > XML
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
					
					//System.out.println("aquí está el tamano: " +Auxiliar.getCorreoElectronico());

					//System.out.println(Auxiliar.getIdUsuario());
					//System.out.println(Auxiliar.getCorreoElectronico());
					admin=Auxiliar.isAdministrador();
					//System.out.println("valor del bool "+admin);
					
					id=Auxiliar.getIdUsuario();
					correo=Auxiliar.getCorreoElectronico();
					nombre=Auxiliar.getNombre();
					apellidos=Auxiliar.getApellidos();
					github=Auxiliar.getGithub();
					twitter=Auxiliar.getTwitter();
					telegram=Auxiliar.getTelegram();
					google=Auxiliar.getGoogle();
					direccion=Auxiliar.getDireccion();
					cp=Auxiliar.getCP();
					grado=Auxiliar.getGrado();
					experiencia=Auxiliar.getExperiencia();
					uni=Auxiliar.getUniversidad();
					edad=Auxiliar.getEdad();
					provincia=Auxiliar.getProvincia();
					
					//Comprobamos si el usuario es administrador
					if(admin){
						response.sendRedirect("gestionController.jsp");	
					}
					else{
						response.sendRedirect("../view/perfilView.jsp");	
					}

					%> 
					  <jsp:setProperty name="usuarioSession" property="idUsuario" value="<%=id%>"/>  
					  <jsp:setProperty name="usuarioSession" property="correoElectronico" value="<%=correo%>"/>  
					  <jsp:setProperty name="usuarioSession" property="nombre" value="<%=nombre%>"/>
					  <jsp:setProperty name="usuarioSession" property="apellidos" value="<%=apellidos%>"/>
					  <jsp:setProperty name="usuarioSession" property="github" value="<%=github%>"/>
					  <jsp:setProperty name="usuarioSession" property="twitter" value="<%=twitter%>"/>
					  <jsp:setProperty name="usuarioSession" property="telegram" value="<%=telegram%>"/>
					  <jsp:setProperty name="usuarioSession" property="google" value="<%=google%>"/>
					  <jsp:setProperty name="usuarioSession" property="direccion" value="<%=direccion%>"/>
					  <jsp:setProperty name="usuarioSession" property="cp" value="<%=cp%>"/>
					  <jsp:setProperty name="usuarioSession" property="grado" value="<%=grado%>"/>
					  <jsp:setProperty name="usuarioSession" property="experiencia" value="<%=experiencia%>"/>
					  <jsp:setProperty name="usuarioSession" property="universidad" value="<%=uni%>"/>
					  <jsp:setProperty name="usuarioSession" property="edad" value="<%=edad%>"/>
					  <jsp:setProperty name="usuarioSession" property="provincia" value="<%=provincia%>"/>
					  
					<%
								
				}
				catch (Exception e) {
						// TODO: handle exception
					
				}
				
			}
			else{
				
				System.out.println("no se puede iniciar");
				response.sendRedirect("../view/errorpage.jsp");

			}
						
		} 
		catch (Exception e) {
				// TODO: handle exception
			
		}

%>
