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

         <%@include file="./../../include/header.html"%>



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
                           	ArrayList<b_avanzadaBean> res=(ArrayList<b_avanzadaBean>)request.getAttribute("resultado_av");                         
                           	for (int i=0; i<res.size();i++){             
                           	%>
                           	<td><a href="perfil.html"><img src="./../../img/logo3.png" alt="" width="80px"></img></a><p><%out.println(res.get(i).getNombre() + " " + res.get(i).getApellidos());%></p></td>
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
                  

                    
                  </tr>
                </table>
              </div>
          </div>





          <%@include file="./../../include/footer.html" %>

        </body>

</html>
