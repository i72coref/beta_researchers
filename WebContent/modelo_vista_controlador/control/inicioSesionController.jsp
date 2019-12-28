<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="es.uco.pw.display.dao.inicioSesionDao"%>  
<%@page import="es.uco.pw.display.beans.customerBean"%>  

 <jsp:useBean id="login" class="es.uco.pw.display.beans.inicioSesionBean" scope="page"></jsp:useBean>  
 <jsp:useBean id="customerSesion" class="es.uco.pw.display.beans.customerBean" scope="session"></jsp:useBean>  
 
 <jsp:setProperty property="*" name="login"/>
<!-- //para que funcione adecuadamente, las variables del bean se han de llamar igual que las de el cuestionario 

Declaramos variables globales para recoger los datos del Bean del inicio de sesión y volcarlos al customerBean  usando jsp:setProperty 
--> 
<%!
String git;
int id;
boolean researcher;
String mail;
String pathAvatar;
%>

<%
	
	String jdbcURL = getServletContext().getInitParameter("jdbcURL"); //Con esta función leemos el web.xml important!!!!
	String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
	String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
		
	//////////////////////////////////////////Inicio Sesion
		
		try {
			inicioSesionDao inicioSesionDao = new inicioSesionDao(jdbcURL, jdbcUsername, jdbcPassword);

			boolean status=inicioSesionDao.log(login);
			System.out.println("login: "+status);
			
			if (status){
				
				System.out.println("ok");
				try {
					inicioSesionDao inicioSesionDao2 = new inicioSesionDao(jdbcURL, jdbcUsername, jdbcPassword);

					customerBean Auxiliar=new customerBean();

					Auxiliar=inicioSesionDao2.logueoAplicacion(login);
					System.out.println("aquí está el tamano: " +Auxiliar.getCorreoElectronico());

					System.out.println(Auxiliar.getGithub());
					System.out.println(Auxiliar.getIdUsuario());
					System.out.println(Auxiliar.getCorreoElectronico());
					System.out.println(Auxiliar.isInvestigador());
					System.out.println(Auxiliar.getPathAvatar());

					git=Auxiliar.getGithub();
					id=Auxiliar.getIdUsuario();
					researcher=Auxiliar.isInvestigador();
					mail=Auxiliar.getCorreoElectronico();
					pathAvatar=Auxiliar.getPathAvatar();
					
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
					  <jsp:setProperty name="customerSesion" property="github" value="<%=git%>"/>  
					  <jsp:setProperty name="customerSesion" property="idUsuario" value="<%=id%>"/>  
					  <jsp:setProperty name="customerSesion" property="correoElectronico" value="<%=mail%>"/>  
					  <jsp:setProperty name="customerSesion" property="investigador" value="<%=researcher%>"/>  
					  <jsp:setProperty name="customerSesion" property="pathAvatar" value="<%=pathAvatar%>"/>  
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
 




 
 
  