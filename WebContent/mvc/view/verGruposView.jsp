<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="es.uco.pw.display.beans.gestionBean"%>
<%@page import="es.uco.pw.display.beans.gestionNoticiasBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<jsp:useBean id="usuarioSession" class="es.uco.pw.display.beans.sessionBean" scope="session"></jsp:useBean> 

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Ver Grupos</title>
  <meta name="viewport" content="width-device-width">
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="./../../css/index.css" >
  <link rel="stylesheet" href="../../css/carrousel.css" >
  <link rel="stylesheet" href="./../../css/ver_grupos.css" >
  <meta name="description" content="Web para crear grupos de investigacion con profesionales, conocer profesionales de tu entorno, noticias, etc.">
  <meta name="keywords" content="researchers,investigadores,grupos de investigacion,profesionales">
  <meta name="author" content="Antonio Sanchez,Carlos Freire, Francisco Cordoba, Angel Cañuelo">
  <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
  <script src="../js/slider.js"></script>
</head>
<body>

<%@include file="./../../include/header.html"%>

<p id="p0">Ver Grupos</p>
<p id="p1">Comunidad ></p><p id="p2">&nbspVer Grupos</p>

<div class="principal">

  <div class="recomendados">

    <div class="titulo">
      <p>Recomendados</p>
      <hr>
    </div>

    <div class="info">
    
      	<div class="grupo-recomendado">
        	<a href="info_grupo.html" target="_blank" rel="alternate"><img id="foto-grupo" src="./../img/logo2.png" alt="" width="60px"></a>
        	<br>
        	<a href="form.html" target="_blank" rel="alternate"><button id="boton">Unirse</button></a>
        	<img id="foto-estrella" src="./../img/estrellas.png" alt="" width="100px" height="20px">
        	<hr width=220 size=1 color="black" >
      	</div>

     	<div class="grupo-recomendado">
	        <a href="info_grupo.html" target="_blank" rel="alternate"><img id="foto-grupo" src="./../img/logo2.png" alt="" width="60px"></a>
	        <br>
	        <a href="form.html" target="_blank" rel="alternate"><button id="boton">Unirse</button></a>
	        <img id="foto-estrella" src="./../img/estrellas.png" alt="" width="100px" height="20px">
	        <hr width=220 size=1 color="black" >
	    </div>

		<div class="grupo-recomendado">
			<a href="info_grupo.html" target="_blank" rel="alternate"><img id="foto-grupo" src="./../img/logo2.png" alt="" width="60px"></a>
			<br>
			<a href="form.html" target="_blank" rel="alternate"><button id="boton">Unirse</button></a>
			<img id="foto-estrella" src="./../img/estrellas.png" alt="" width="100px" height="20px">
			<hr width=220 size=1 color="black" >
		</div>

	    <div class="grupo-recomendado">
	        <a href="info_grupo.html" target="_blank" rel="alternate"><img id="foto-grupo" src="./../img/logo2.png" alt="" width="60px"></a>
	        <br>
	        <a href="form.html" target="_blank" rel="alternate"><button id="boton">Unirse</button></a>
	        <img id="foto-estrella" src="./../img/estrellas.png" alt="" width="100px" height="20px">
	        <hr width=220 size=1 color="black" >
	    </div>

		<div class="grupo-recomendado">
			<a href="info_grupo.html" target="_blank" rel="alternate"><img id="foto-grupo" src="./../img/logo2.png" alt="" width="60px"></a>
			<br>
			<a href="form.html" target="_blank" rel="alternate"><button id="boton">Unirse</button></a>
			<img id="foto-estrella" src="./../img/estrellas.png" alt="" width="100px" height="20px">
			<hr width=220 size=1 color="black" >
		</div>

      <div class="grupo-recomendado">
       <a href="info_grupo.html" target="_blank" rel="alternate"><img id="foto-grupo" src="./../img/logo2.png" alt="" width="60px"></a>
       <br>
       <a href="form.html" target="_blank" rel="alternate"><button id="boton">Unirse</button></a>
       <img id="foto-estrella" src="./../img/estrellas.png" alt="" width="100px" height="20px">
       <hr width=220 size=1 color="black" >
      </div>

      <div class="grupo-recomendado">
        <a href="info_grupo.html" target="_blank" rel="alternate"><img id="foto-grupo" src="./../img/logo2.png" alt="" width="60px"></a>
        <br>
        <a href="form.html" target="_blank" rel="alternate"><button id="boton">Unirse</button></a>
        <img id="foto-estrella" src="./../img/estrellas.png" alt="" width="100px" height="20px">
      </div>
      
    </div>

  </div>

  <div class="grupos">
    <div class="filtros">
      <nav>
      <ul>
        <li>
          <a href="#">
          <select class="select-css">
            <option value="-1">Categor&iacutea</option>
            <option value="0">Ingenier&iacutea</option>
            <option value="1">Ciencias</option>
            <option value="2">Matem&aacuteticas</option>
            <option value="3">Econom&iacutea</option>
            <option value="4">Contabilidad</option>
          </select>
          </a>
        </li>

        <li>
          <a href="#">
          <select class="select-css">
            <option value="-1">Puntuaci&oacuten</option>
            <option value="0">0,5 estrellas</option>
            <option value="1">1 estrellas</option>
            <option value="2">1,5 estrellas</option>
            <option value="3">2 estrellas</option>
            <option value="4">2,5 estrellas</option>
            <option value="5">3 estrellas</option>
            <option value="6">3,5 estrellas</option>
            <option value="7">4,5 estrellas</option>
            <option value="5">4,5 estrellas</option>
            <option value="6">5 estrellas</option>
          </select>
          </a>
        </li>

        <li>
          <a href="#">
          <select class="select-css">
            <option value="-1">Miembros</option>
            <option value="0">0-10</option>
            <option value="1">10-20</option>
            <option value="2">20-50</option>
            <option value="3">50-100</option>
            <option value="4">100-500</option>
            <option value="5">+500</option>
          </select>
          </a>
        </li>
      </ul>
      </nav>
    </div>
	
    <div class="grupo-individual">
    
    <%
    	ArrayList<gestionBean> res=(ArrayList<gestionBean>)request.getAttribute("resultado");                         
        for (int i=0; i<res.size();i++){
	%>
                           	
       <div class="grupo">
          <div id="carrusel">
              <a href="#" class="left-arrow"><img src="../img/left-arrow.png" /></a>
              <a href="#" class="right-arrow"><img src="../img/right-arrow.png" /></a>
              <div class="carrusel">
                  <div class="product" id="product_0">
                      <img src="../img/01.jpg" width="195" height="100" />
                      <h5>Lorem ipsum 1</h5>
                      <p>165.00 €</p>
                  </div>
                  <div class="product" id="product_1">
                      <img src="../img/02.jpg" width="195" height="100" />
                      <h5>Lorem ipsum 2</h5>
                      <p>100.00 €</p>
                  </div>
                  <div class="product" id="product_2">
                      <img src="../img/03.jpg" width="195" height="100" />
                      <h5>Lorem ipsum 3</h5>
                      <p>250.00 €</p>
                  </div>
                  <div class="product" id="product_3">
                      <img src="../img/01.jpg" width="195" height="100" />
                      <h5>Lorem ipsum 4</h5>
                      <p>75.00 €</p>
                  </div>
                  <div class="product" id="product_4">
                      <img src="../img/02.jpg" width="195" height="100" />
                      <h5>Lorem ipsum 5</h5>
                      <p>65.00 €</p>
                  </div>
                  <div class="product" id="product_5">
                      <img src="../img/03.jpg" width="195" height="100" />
                      <h5>Lorem ipsum 6</h5>
                      <p>40.00 €</p>
                  </div>
              </div>
          </div>

        <div class="texto">
            <p>
              <%out.println(res.get(i).getDescripcion());%>
            </p>
        </div>

        <div class="lista" >
          <ul>
            <li><a ><strong><%out.println(res.get(i).getNombre_grupo());%></strong></a></li>
            <li><a >Categoria: <%out.println(res.get(i).getCategoria());%></a></li>
            <li><a >Nº Participantes: <%out.println(res.get(i).getN_participantes());%></a></li>
            <li><a >Lider: <%out.println(res.get(i).getLider());%></a></li>
          </ul>
        </div>

        <div class="botones">
          <button id="boton">Seguir</button>
          <br>
          <form action="../view/unionGrupoView.jsp" method="post">
          	<a href="form.html" target="_blank" rel="alternate">
          		<button id="boton" name="id_grupo" value=<%out.println(res.get(i).getId_grupo());%>>Unirse</button>
          	</a>
          </form>
        </div>
      </div>
      	
   	<%
   		}
    %>
      </div>
    </div>
  </div>
</div>

      <%@include file="./../../include/footer.html" %>

</body>
</html>
