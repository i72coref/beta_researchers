<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

   
<% String variable = request.getParameter("variable"); %>

<%String campo = (String)application.getAttribute("campo"); %>
<p>Me han pasado un <%= campo%> cuyo valor es <%= variable %></p>