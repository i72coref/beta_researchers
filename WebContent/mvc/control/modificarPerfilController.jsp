<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="es.uco.pw.display.beans.sessionBean"%>
<%@page import="es.uco.pw.data.DAO.modificarPerfilDao"%>
<jsp:useBean id="usuarioSession" class="es.uco.pw.display.beans.sessionBean" scope="session"></jsp:useBean> 

<%
String nextPage = "../vistas/errorpage.jsp";
int id = usuarioSession.getIdUsuario();

String variablecorreo = request.getParameter("variablecorreo");
String variablepass = request.getParameter("variablepassword");
String variabletelefono = request.getParameter("variabletelefono");
String variabledireccion = request.getParameter("variabledireccion");
String variableCP = request.getParameter("variableCP");
String variableprovincia = request.getParameter("variableprovincia");
String variableactividades = request.getParameter("variableactividades");
int variableCPint;

String jdbURL = getServletContext().getInitParameter("jdbURL");
String jdbUsername = getServletContext().getInitParameter("jdbUsername");
String jdbPassword = getServletContext().getInitParameter("jdbPassword");

	try{
		
		//System.out.println("el usuario " + id + " para cambiar el "+ campo + " con el valor "+ variable);
		
		modificarPerfilDao modificarPerfilDao = new modificarPerfilDao(jdbURL, jdbUsername, jdbPassword);
		
		if(variablecorreo != null){
			System.out.println("entro en el primer if");
			modificarPerfilDao.modificar(id, "correoElectronico", variablecorreo);
			%>
			<jsp:setProperty name="usuarioSession" property="correoElectronico" value="<%=variablecorreo%>"/>
			<%
		}
		
		if(variablepass != null){
			modificarPerfilDao.modificar(id, "password", variablepass);
		}
		
		if(variabletelefono != null){
			modificarPerfilDao.modificar(id, "telefono", variabletelefono);
			%>
			<jsp:setProperty name="usuarioSession" property="telefono" value="<%=variabletelefono%>"/>
			<%
		}
		
		if(variabledireccion != null){
			modificarPerfilDao.modificar(id, "direccion", variabledireccion);
			%>
			<jsp:setProperty name="usuarioSession" property="direccion" value="<%=variabledireccion%>"/>
			<%
		}
		
		if(variableCP != null){
			modificarPerfilDao.modificar(id, "CP", variableCP);
			variableCPint = Integer.parseInt(variableCP);
			%>
			<jsp:setProperty name="usuarioSession" property="CP" value="<%=variableCPint%>"/>
			<%
		}
		if(variableprovincia != null){
			modificarPerfilDao.modificar(id, "provincia", variableprovincia);
			%>
			<jsp:setProperty name="usuarioSession" property="provincia" value="<%=variableprovincia%>"/>
			<%
		}
		
		if(variableactividades != null){
			modificarPerfilDao.modificar(id, "actividades", variableactividades);
			%>
			<jsp:setProperty name="usuarioSession" property="actividades" value="<%=variableactividades%>"/>
			<%
		}
		
		nextPage = "../view/perfilView.jsp"; 
	}catch (Exception e) {
		// TODO: handle exception

}
%>
 <jsp:forward page="<%=nextPage%>"></jsp:forward>
 
