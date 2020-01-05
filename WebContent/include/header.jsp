<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<header>
	<div class="container">
	    <a href="/beta_web/mvc/control/indexController.jsp">
	    	<h1 class="logo">
	    		<img src="/beta_web/img/bueno.png" alt="" width="60px">
	    	</h1>
	    </a>
	
	    <nav>
	    <ul>
	        <li><a href="/beta_web/mvc/control/indexController.jsp">Inicio</a></li>
	        <li><a href="/beta_web/mvc/view/perfilView.jsp">Perfil</a></li>
	        <li><a href="/beta_web/mvc/control/verGruposController.jsp">Comunidad</a></li>
	        <li><a href="/beta_web/mvc/view/b_avanzadaView.jsp">Búsqueda Avanzada</a></li>
	        <li>
	        	<form action="/beta_web/mvc/control/buscarapidoController.jsp" method="post">
					<input class="busqueda" type="search" name="palabrasclave" placeholder="Buscar Aquí..." size="20px" >
					<button  type="submit"  data-placement="top" title="Click para buscar">Search</button>
				</form>
	        </li>
	    </ul>
	    </nav>
	</div>
</header>