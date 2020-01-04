<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<header>
	<div class="container">
	    <!--  <a href="../index.html"><h1 class="logo">  <img src="./../img/bueno.png" alt="" width="60px"></h1></a>-->

	    <nav>
	    <ul>
	        <li><a href="../index.html">Inicio</a></li>
	        <li><a href="perfil.html">Perfil</a></li>
	        <li><a href="../control/verGruposController.jsp">Comunidad</a></li>
	        <li><a href="b_avanzada.html">B�squeda Avanzada</a></li>
					<li>
						<form action="./../mvc/control/buscarapidoController.jsp" method="post">
							<input class="busqueda" type="search" name="palabrasclave" placeholder="Buscar Aquí..." size="20px" >
							<button  type="submit"  data-placement="top" title="Click para buscar">Search</button>
			</form></li>
	    </ul>
	    </nav>
	</div>
</header>
