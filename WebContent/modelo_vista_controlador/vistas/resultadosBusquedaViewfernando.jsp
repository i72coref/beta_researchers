<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<%@page import="java.util.ArrayList"%>   
<%@page import="java.util.List"%>
<%@page import="es.uco.pw.display.beans.resultadoBusquedaInvestigadorBean"%>
<%@page import="es.uco.pw.display.beans.resultadoBusquedaPublicacionBean"%>
<%@page import="es.uco.pw.display.beans.resultadoBusquedaBlogBean"%>

<%
List<resultadoBusquedaInvestigadorBean> listaResultadosInvestigador=new ArrayList<resultadoBusquedaInvestigadorBean>(); 
listaResultadosInvestigador=(List<resultadoBusquedaInvestigadorBean>)request.getAttribute("listInvestigador");

List<resultadoBusquedaPublicacionBean> listaResultadosPublicacion=new ArrayList<resultadoBusquedaPublicacionBean>(); 
listaResultadosPublicacion=(List<resultadoBusquedaPublicacionBean>)request.getAttribute("listPublicacion");

List<resultadoBusquedaBlogBean> listaResultadosBlog=new ArrayList<resultadoBusquedaBlogBean>(); 
listaResultadosBlog=(List<resultadoBusquedaBlogBean>)request.getAttribute("listBlog");


	
System.out.println(listaResultadosInvestigador.size());
System.out.println("resultados desde vista: "+listaResultadosInvestigador.size());
String mostrarInvestigador="visible";
String mostrarPublicacion="visible";
String mostrarBlog="visible";
boolean investigador = true;
boolean publicacion = true;
boolean blog = true;

if(listaResultadosInvestigador.size()==0){
	mostrarInvestigador="nonVisible";
	System.out.println("Visiblidad:"+mostrarInvestigador);
	investigador = false;

}

if(listaResultadosPublicacion.size()==0){
	mostrarPublicacion="nonVisible";
	System.out.println("Visiblidad:"+mostrarPublicacion);
	publicacion = false;
}

if(listaResultadosBlog.size()==0){
	mostrarBlog="nonVisible";
	System.out.println("Visiblidad:"+mostrarBlog);
	blog = false;
}


%>
<!--
  Archivo:registro.html
  Descripción:registro de usuarios 

-->

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
  
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width" initial-scale=1 >
    <meta name="description" content="La web para los investigadores 101">
    <meta name="keywords" content="comunidad investigadores, informática, articulos investigación, blockchain">
    <meta name="author" content="Equipo III Programación Web 2019-2020 UCO">

    <link rel="stylesheet" href="../../css/resultadoBusqueda2.css">
    <link rel="stylesheet" href="../../css/style2.css">

    <title></title>

    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto+Condensed">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Inconsolata">
    <link rel="stylesheet" href="../../img/font-awesome-4.7.0/css/font-awesome.min.css">


    
	<jsp:useBean id="customerSesion" class="es.uco.pw.display.beans.customerBean" scope="session"></jsp:useBean>  
	
	

   	
    <title>Registro de Usuario</title>
        <link rel="stylesheet" href="../../css/resultadoBusqueda2.css">
    
    
  </head>
  
<body>

    <header class="header">
         	<%@include file="../../include/header.jsp" %>


    </header>

    <div class="contenedor">
      <div class="container">
        <div class="fondoHeader">
          <h1></h1>
        </div>
        <!-- previamente había un elemento de tipo form -->
        <div class="formBusqueda">
			<div class="form-inline">
			
			<!-- 
				<input class="form-control" id="search" type="search" placeholder="Científicos, comunidades, publicaciones científicas..." aria-label="Search" action="../control/resultadosBusquedaController">

	            <button onClick="historial(0)" class="btn2" type="submit" data-toggle="tooltip" data-placement="top" title="Click para buscar">Search</button>
          	-->    	
			<!-- De la siguiente forma no registra historial de búsqueda -->
				<form class="form-inline" action="../control/resultadosBusquedaController.jsp">
		
				   <input class="form-control" type="search" name="cadenaBusqueda" placeholder="Científicos, comunidades, publicaciones científicas..." aria-label="Search" size="50px" >
				   <button class="btn2" type="submit" onClick="historial(0)" data-toggle="tooltip" data-placement="top" title="Click para buscar">Search</button>
		
				</form>			       
          	</div>
        </div>
        
        <div class="encontrados">
          <h2>Resultados búsqueda</h2>
          <%
          if(investigador || publicacion || blog)
          {
          %>     
	          <table class="<%=mostrarInvestigador%>" border="1" width="90%">  
				<tr>
				<th>Id</th><th>Nombre</th><th>Apellidos</th><th>github</th><th>Institución</th><th>Perfil</th>
				</tr>  
				<c:forEach items="${listInvestigador}" var="u">  
				<tr>
				<td>${u.getIdUsuario()}</td><td>${u.getNombre()}</td><td>${u.getApellidos()}</td><td>${u.getGithub()}</td><td>${u.getInstitucion()}</td><td><a href="../control/userProfileController.jsp?id=${u.getIdUsuario()}">Link</a></td>
				</tr>  
				</c:forEach>  
			  </table>
			  
			  <table class="<%=mostrarPublicacion%>" border="1" width="90%">  
				<tr>
				<th>Tipo</th><th>Título</th><th>Descripción</th><th>ISBN</th><th>DOI</th>
				</tr>  
				<c:forEach items="${listPublicacion}" var="u">  
				<tr>
				<td>${u.getTipo()}</td><td>${u.getTitulo()}</td><td>${u.getDescripcion()}</td><td>${u.getISBN()}</td><td>${u.getDOI()}</td>
				</tr>  
				</c:forEach>  
			  </table>
			  
			  <table class="<%=mostrarBlog%>" border="1" width="90%">  
				<tr>
				<th>Título</th><th>Descripción</th><th>KeyWords</th>
				</tr>  
				<c:forEach items="${listBlog}" var="u">  
				<tr>
				<td>${u.getTitulo()}</td><td>${u.getDescripcion()}</td><td>${u.getPalabrasClave()}</td>
				</tr>  
				</c:forEach>  
			  </table>
			<%
          }
          else
          {
        	out.println("<h4>No se han encontrado resultados</h4>");
          }
		   %>
        </div>
        <div class="filtro">
          <h1>filtro</h1>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
        
	    <div class="historial">
          <h1>historial</h1>
	          <ol id="searchResults">
	          </ol>
	          <button onClick="borrarHistorial()">Borrar historial</button>
        </div>

        <div class="fondoColumna">
          <h1></h1>
        </div>
        <div class="fondoFooter">
          <h1></h1>
        </div>

      </div>

     </div>
 
<%@include file="../../include/footer.jsp" %>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="../../js/historialBusquedas.js"> </script>
    
    <!--
    
    info ventana emergente
    
    <script src="../../js/emergente.js"> </script>
    
    
 
    <div id="popup" style="display: none;">
	    <div class="content-popup">
	        <div class="close"><a href="#" id="close"><img src="img/close.png"/></a></div>
	           <div>
	            <h1>Regístrate o inicia sesión para acceder a mas contenido</h1>
	           <div style="float:left; width:100%;">
	    	</div>
	        </div>
	    </div>
	</div>
	<div class="popup-overlay"></div>
	
	-->
  </body>
</html>
