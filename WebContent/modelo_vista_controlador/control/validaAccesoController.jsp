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
					
					System.out.println("aquí está el tamano: " +Auxiliar.getCorreoElectronico());

					System.out.println(Auxiliar.getIdUsuario());
					System.out.println(Auxiliar.getCorreoElectronico());

					id=Auxiliar.getIdUsuario();
					correo=Auxiliar.getCorreoElectronico();
					
					if(researcher)
					{
						response.sendRedirect("../view/researcherUserView.jsp");
					}
					else
					{
						response.sendRedirect("../control/resultadosBusquedaController.jsp");

						//response.sendRedirect("../view/resultadosBusquedaView.jsp");
					}
					%> 
					  <jsp:setProperty name="usuarioSession" property="idUsuario" value="<%=id%>"/>  
					  <jsp:setProperty name="usuarioSession" property="correoElectronico" value="<%=correo%>"/>  

					<%
								
				}
				catch (Exception e) {
						// TODO: handle exception
					
				}
				
			}
			else{
				
				System.out.println("no se puede iniciar");
				response.sendRedirect("../view/errorPages/register-error.jsp");

			}
						
		} 
		catch (Exception e) {
				// TODO: handle exception
			
		}

%>
