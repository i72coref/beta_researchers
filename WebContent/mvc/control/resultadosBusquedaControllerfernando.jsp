<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="es.uco.pw.data.dao.ResultadosBusquedaDao"%>
<%@page import="es.uco.pw.display.beans.resultadoBusquedaInvestigadorBean"%>
<%@page import="es.uco.pw.display.beans.resultadoBusquedaPublicacionBean"%>
<%@page import="es.uco.pw.display.beans.resultadoBusquedaBlogBean"%>
<%@page import="es.uco.pw.display.beans.customerBean"%> 
<%@page import="java.util.ArrayList"%>   
<%@page import="java.util.List"%>    


<jsp:useBean id="entradaBusqueda" class="es.uco.pw.display.beans.entradaBusquedaBean" scope="page"></jsp:useBean>  
<jsp:setProperty property="*" name="entradaBusqueda"/>
 

<%
 	String jdbcURL = getServletContext().getInitParameter("jdbcURL");
 	String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
 	String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
 	
 	String nextPage = "../view/errorPages/register-error.jsp";
 	
 	List<resultadoBusquedaInvestigadorBean> listaResultadosInvestigador=new ArrayList<resultadoBusquedaInvestigadorBean>();
 	List<resultadoBusquedaBlogBean> listaResultadosBlog=new ArrayList<resultadoBusquedaBlogBean>(); 
 	List<resultadoBusquedaPublicacionBean> listaResultadosPublicacion=new ArrayList<resultadoBusquedaPublicacionBean>();

 	//incluir lista
 	try {

 		ResultadosBusquedaDao resultadosBusquedaDao = new ResultadosBusquedaDao(jdbcURL, jdbcUsername, jdbcPassword);	
 		listaResultadosInvestigador=resultadosBusquedaDao.ListarResultadosInvestigador(entradaBusqueda);
 		
 		if (listaResultadosInvestigador!=null){
 	nextPage = "../view/resultadosBusquedaView.jsp";  
 		}	
 	}catch(Exception e){
 		System.out.println("Error en busqueda de Investigadores");
 		
 	}
 	//Busqueda Publicaciones
 	
 	try {
 		
 		ResultadosBusquedaDao resultadosPublicacionesDao = new ResultadosBusquedaDao(jdbcURL, jdbcUsername, jdbcPassword);	
 		listaResultadosPublicacion=resultadosPublicacionesDao.ListarResultadosPublicacion(entradaBusqueda);
 		
 		if (listaResultadosPublicacion!=null){
 	nextPage = "../view/resultadosBusquedaView.jsp";  
 		}
 		
 	}catch(Exception e){
 		System.out.println("Error en busqueda de Publicaciones");
 		
 	}
 	
 	//Busqueda Microblogin
 	try {

 		ResultadosBusquedaDao resultadosBlogDao = new ResultadosBusquedaDao(jdbcURL, jdbcUsername, jdbcPassword);	
 		listaResultadosBlog=resultadosBlogDao.ListarResultadosBlog(entradaBusqueda);
 	
 		
 		if (listaResultadosBlog!=null){
 	nextPage = "../view/resultadosBusquedaView.jsp";  
 		}	
 	}catch(Exception e){
 		System.out.println("Error en busqueda de Blogs");
 		
 	}
 	

 	request.setAttribute("listInvestigador",listaResultadosInvestigador);
 	request.setAttribute("listPublicacion",listaResultadosPublicacion);
 	request.setAttribute("listBlog",listaResultadosBlog);
 %>

 <jsp:forward page="<%=nextPage%>"></jsp:forward>