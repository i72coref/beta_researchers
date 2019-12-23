<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
  <%
   
   String recibidoController=request.getParameter("functionFromController");
   String recibidoVistaHref=request.getParameter("FunctionFromVista");
   String action=request.getParameter("action");

   out.println("Recibido Controller: "+recibidoController+" Recibido Vista: "+recibidoVistaHref+" Recibido form: "+action);
   %>
   
   <%
   if(recibidoController!=null){
	   if(recibidoController.equals("entrada")){
			   out.println("<br>Desde Controlador: Soy el controlador y realizo funciones de entrada<br>");
	   }
   }
   
   if(recibidoVistaHref!=null){
	   if(recibidoVistaHref.equals("entrada")){
			   out.println("<br>Desde ViewSalida: Soy el controlador y realizo funciones de entrada<br>");
	   }
   }
   
   

   if(recibidoController!=null){
	   if(recibidoController.equals("salida")){
			   out.println("<br>Desde Controlador: Soy el controlador y realizo funciones de salida<br>");
	   }
   }   
   
   if(recibidoVistaHref!=null){
	   if(recibidoVistaHref.equals("salida")){
			   out.println("<br>Desde ViewSalida: Soy el controlador y realizo funciones de salida<br>");
	   }
   }
   
   %>
   
	<jsp:useBean id="ejemploBean" class="es.uco.pw.display.beans.EjemploBean" scope="page"></jsp:useBean>  
	<jsp:setProperty property="*" name="ejemploBean"/>
   
   <% 
   if(action!=null){
	   if(action.equals("pruebaBean")){
			   
		   out.println("<br>pruebaBean");
		   out.println("<br>--------"+ejemploBean.getCampo1()+"<br>--------"+ejemploBean.getCampo2());
		   
		   
		   
		   
	   }
   }
   
	
 
   
   
   
   %>
   

   

    