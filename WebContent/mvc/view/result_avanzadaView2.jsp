<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="es.uco.pw.display.beans.b_avanzadaBean"%>
<%@page import="es.uco.pw.display.beans.customerBean"%> 
<%@page import="java.util.ArrayList"%>   
<%@page import="java.util.List"%>   
<!DOCTYPE html>

<html>
      <head>
        <meta charset="utf-8">
        <title>Resultados Búsqueda Avanzada </title>
        <meta name="viewport" content="width-device-width"> <!--la etiqueta meta viewport para controlar la composición en los navegadores móviles, width es  para controlar el tamaño del viewport-->
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="./../../css/index.css" >
        <link rel="stylesheet" href="./../../css/result_avanzada.css" >
        <meta name="description" content="Web para crear grupos de investigacion con profesionales, conocer profesionales de tu entorno, noticias, etc.">
        <meta name="keywords" content="researchers,investigadores,grupos de investigacion,profesionales">
        <meta name="author" content="Antonio Sanchez,Carlos Freire, Francisco Cordoba, Angel Cañuelo">
      </head>

        <body >

          <header>
              <div class="container">
                  <a href="../index.html"><h1 class="logo">  <img src="./../img/bueno.png" alt="" width="60px"></h1></a>
                  <nav>
                  <ul>
                      <li><a href="../index.html">Inicio</a></li>
                      <li><a href="perfil.html">Perfil</a></li>
                      <li><a href="ver_grupos.html">Comunidad</a></li>
                      <li><a href="b_avanzada.html">Búsqueda Avanzada</a></li>
                      <li><a href="result_avanzada.html" class=""></a>  <input type="text" id="bar" placeholder="Buscar aquí"></li>
                  </ul>
                  </nav>
              </div>
          </header>



          <div class="bavanzada">
            <center>
                  <br>
                  <p style="font-size:1.7em">Resultados de Búsqueda Avanzada</p>
                  <hr width=750 align="center" size=1 color="black" >
                  <hr width=700 align="center" size=1 color="black" >
            </center>
          </div>



          <div class="filas" >
              <div class="f1">
                <p style="font-size: 1.2em;">Personas Encontradas:</p>
              </div>

              <div class="f2">
                <table class="tabla1" cellpadding="45">
                  <tr>
                            <%
                           	ArrayList<b_avanzadaBean> res=(ArrayList<b_avanzadaBean>)request.getAttribute("resultado");                         
                           	for (int i=0; i<res.size();i++){
                           	%>
                           	<td><a href="./info_grupo.html"><img src="./../../img/logo3.png" alt="" width="80px"></img></a><p><%out.println(res.get(i).getNombre() + " " + res.get(i).getApellidos());%></p></td>
                           	<%
                           	}
                            %>
                  </tr>
                </table>
              </div>

              <div class="f3">
                <p style="font-size: 1.2em;">Grupos Encontrados:</p>
              </div>


              <div class="f4">
                <table class="tabla2" cellpadding="45" >
                  <tr>
                  
                            <%
                           	ArrayList<b_avanzadaBean> res_grupos=(ArrayList<b_avanzadaBean>)request.getAttribute("resultado_grupos");                         
                           	for (int i=0; i<res_grupos.size();i++){
                           	%>
                           	<td><a href="./info_grupo.html"><img src="./../../img/grupo.png" alt="" width="80px"></img></a><p><%out.println(res_grupos.get(i).getNombre_grupo());%></p></td>
                           	<%
                           	}
                            %>
                    
                  </tr>
                </table>
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
                      <li><a href="./aviso_legal.html">Aviso legal</a></li>
                      <li><a href="./termino_condiciones.html">Termino y condiciones de uso</a></li>
                      <li><a href="./politica_privacidad.html">Política y privacidad de datos</a></li>
                      <li><a href="./about_us.html">Acerca de nosotros</a></li>
                  </ul>
              </div>
              </div>
          </div>

        </body>

</html>
