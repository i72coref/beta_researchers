<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="es.uco.pw.display.beans.gestionBean"%>
<%@page import="es.uco.pw.display.beans.gestionNoticiasBean"%>
<%@page import="java.util.ArrayList"%>   
<%@page import="java.util.List"%>    

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Researchers Beta Web | Bienvenidos </title>
        <meta name="viewport" content="width-device-width"> <!--la etiqueta meta viewport para controlar la composiciÃ³n en los navegadores mÃ³viles, width es  para controlar el tamaÃ±o del viewport-->
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="./../../css/index.css" >
        <link rel="stylesheet" href="./../../css/contenthome.css" >
        <meta name="description" content="Web para crear grupos de investigacion con profesionales, conocer profesionales de tu entorno, noticias, etc.">
        <meta name="keywords" content="researchers,investigadores,grupos de investigacion,profesionales">
        <meta name="author" content="Antonio Sanchez,Carlos Freire, Francisco Cordoba, Angel CaÃ±uelo">
    </head>
    <body>
    <%@include file="./../../include/header.jsp"%>


    <div class="content">
        <div class="gruyper">
                            <%
                           	ArrayList<gestionBean> res=(ArrayList<gestionBean>)request.getAttribute("resultado");                         
                           	for (int i=0; i<res.size();i++){
                           	%>
                <div class="box2">
                        <div class="lognom2">
                            <a href="../../info_grupo.jsp"><img src="../../img/colegio-logo.png" alt="" width="100px" ></a>
                            <h3> <strong><%out.println(res.get(i).getNombre_grupo());%></strong></h3>
                        </div>
                        <div class="contentbox2">
                            <p><%out.println(res.get(i).getDescripcion());%></p>
                            <h6><strong><i>Lider: <%out.println(res.get(i).getLider());%></i></strong></h6>
                        </div>
                </div>
                            <%
                           	}
                            %>                

        </div>
        <div class="espacio">
        </div>
        <div class="notices">
            <div class="titulonot">
                        <a href="../view/noticias.jsp"><h2>NOTICIAS</h2></a>
            </div>
                            <%
                           	ArrayList<gestionNoticiasBean> res2=(ArrayList<gestionNoticiasBean>)request.getAttribute("result");                         
                           	for (int i=0; i<res2.size();i++){
                           	%>
            <div class="notice1">

                        <div class="noticelogo1">
                            <img src="../../img/logo2.png" alt="" width="80px" >
                        </div>
                        <div class="contentnotice1">
                        	<h3>><%out.println(res2.get(i).getTitulo());%></h3>
                            <p><%out.println(res2.get(i).getContenido());%><a href="../view/noticias.jsp"><u>Leer mas...</u></a></p>
                        </div>
            </div>
                        <%
                        }
                        %>

        </div>



    <%@include file="./../../include/footer.html" %>

    </body>
</html>
