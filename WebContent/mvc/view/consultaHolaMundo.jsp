<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="es.uco.pw.display.beans.sessionBean"%> 
<%@page import="java.util.ArrayList"%>   
<%@page import="java.util.List"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Personas</h1>
	
<%
    ArrayList<sessionBean> res=(ArrayList<sessionBean>)request.getAttribute("resultado");   
    	System.out.println("Vista " + res.size());
       for (int i=0; i<res.size();i++){
          %>
          
       <div class="box1">
       <div class="number"><%out.println(res.get(i).getIdUsuario());%> </div>
       <div class="name"><%out.println(res.get(i).getNombre());%></div>
       <div class="name"><%out.println(res.get(i).getApellidos());%></div>
       </div>
                        	<%
                           	}
                            %>
</body>
</html>