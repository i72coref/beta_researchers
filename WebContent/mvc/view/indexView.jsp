<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="es.uco.pw.display.beans.gestionBean"%>
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
            <header>
                    <div class="container">
                      <a href="index.html"><h1 class="logo">  <img src="./img/bueno.png" alt="" width="60px"></h1></a>
                      <nav>
                        <ul>
                            <li><a href="index.html">Inicio</a></li>
                            <li><a href="./html/perfil.html">Perfil</a></li>
                            <li><a href="./html/ver_grupos.html">Comunidad</a></li>
                            <li><a href="./html/b_avanzada.html">BÃºsqueda Avanzada</a></li>
                            <li> <form action="./../control/buscarapidoController.jsp" method="post">
                        		<input class="busqueda" type="search" name="palabrasclave" placeholder="Buscar Aquí..." size="20px" >
            					<button  type="submit"  data-placement="top" title="Click para buscar">Search</button></li>
            				</form></li>
                        </ul>
                      </nav>
                    </div>
            </header>

    <div class="content">
        <div class="gruyper">
                <div class="box1">
                    <div class="lognom1">
                        <img src="./img/logo.png" alt="" width="200px" >
                        <h3> <strong>Hack and Beers</strong></h3>
                        <a href="./html/form.html"><button type="submit" id="btn-abrir-popup" class="btn-abrir-popup">Unirse</button></a>

                    </div>
                    <div class="contentbox1">
                        <p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estÃ¡ndar de las industrias desde el aÃ±o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usÃ³ una galerÃ­a de textos y los mezclÃ³ de tal manera que logrÃ³ hacer un libro de textos especimen. No sÃ³lo sobreviviÃ³ 500 aÃ±os, sino que tambien ingresÃ³ como texto de relleno en documentos electrÃ³nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaciÃ³n de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y mÃ¡s recientemente con software de autoediciÃ³n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>
                        <h6><strong><i>Lider:Miguel Angel Arroyo</i></strong></h6>
                    </div>
                </div>
                <div class="box2">
                            <%
                           	ArrayList<gestionBean> res=(ArrayList<gestionBean>)request.getAttribute("resultado");                         
                           	for (int i=0; i<res.size();i++){
                           	%>
                        <div class="lognom2">
                            <img src="./img/logo2.png" alt="" width="100px" >
                            <h3> <strong><%out.println(res.get(i).getNombre_grupo());%></strong></h3>
                            <a href="./html/form.html"><button type="submit" id="btn-abrir-popup" class="btn-abrir-popup">Unirse</button></a>
                        </div>
                        <div class="contentbox2">
                            <p><%out.println(res.get(i).getDescripcion());%></p>
                            <h6><strong><i>Lider:Juan Perez</i></strong></h6>
                        </div>
                            <%
                           	}
                            %>
                </div>

        </div>
        <div class="espacio">
        </div>
        <div class="notices">
            <div class="titulonot">
                        <a href="#"><h2>NOTICIAS</h2></a>
            </div>
            <div class="notice1">

                        <div class="noticelogo1">
                            <img src="./img/logo2.png" alt="" width="80px" >
                        </div>
                        <div class="contentnotice1">
                            <p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estÃ¡ndar de las industrias desde el aÃ±o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usÃ³ "<a href="./html/noticias.html"><u>Leer mÃ¡s...</u></a></p>
                        </div>
            </div>
                        

        </div>



    <div class="footer">
        <div class="footer-main-div">
        <div class="footer-social-icons">
            <ul>
                <li><a href="#" target="blank"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#" target="blank"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#" target="blank"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="#" target="blank"><i class="fa fa-youtube"></i></a></li>
            </ul>
        </div>
        <div class="footer-menu-one">
            <ul>
                <li><a href="./html/aviso_legal.html">Aviso legal</a></li>
                <li><a href="./html/termino_condiciones.html">Termino y condiciones de uso</a></li>
                <li><a href="./html/politica_privacidad.html">PolÃ­tica y privacidad de datos</a></li>
                <li><a href="./html/about_us.html">Acerca de nosotros</a></li>
            </ul>
        </div>
        </div>
    </div>

    </body>
</html>
