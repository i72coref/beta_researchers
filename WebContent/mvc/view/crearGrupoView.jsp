w<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>

    <link rel="stylesheet" href="../../css/style.css">
    <link rel="stylesheet" href="../../css/header_footer.css">
    <link rel="stylesheet" href="../../css/stylecreargrupo.css">
        <meta charset="utf-8">
        <title>Researchers Beta Web | Bienvenidos </title>
        <meta name="viewport" content="width-device-width"> <!--la etiqueta meta viewport para controlar la composición en los navegadores móviles, width es  para controlar el tamaño del viewport-->
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta name="description" content="Web para crear grupos de investigacion con profesionales, conocer profesionales de tu entorno, noticias, etc.">
        <meta name="keywords" content="researchers,investigadores,grupos de investigacion,profesionales">
        <meta name="author" content="Antonio Sanchez,Carlos Freire, Francisco Cordoba, Angel Cañuelo">
        <script src="../js/barra_miembros.js"></script>
</head>

<body>
        <%@include file="./../../include/header.html"%>
        <center>
            <p id="p0">CREAR GRUPO</p>
            <p id="p1">Comunidad ><p id="p2">Crear grupo</p></p>
        </center>

    <!-------------------------------------------------------------->
	<form action="../control/nuevoGrupoController.jsp" method="POST">
	
	    <div class="contenedor">
	        <div class="nombre-grupo">
	            <h4>Nombre del Grupo</h4>
	            <div class=introduce-nombre>
	            <input type="text" placeholder="Introduce el nombre del Grupo" name="nombre" required style="width: 500px; height: 50px">
	            
	            
	            <!-- COMPROBAR LA EXISTENCIA DE UN GRUPO CON ESE NOMBRE -->
	            <input type="submit" value="Comprobar" style="width: 100px; height: 58px"><br>
	            
	            
	            </div>
	        </div>
	
	        <div class="bloque-izquierda">
	        <div class="fotos-grupo">
	            <h4>Fotos del Grupo</h4>
	            <input type="file">
	        <h6> > Fotos ya subidas</h6>
	        <img src="../img/notica1.jpg" width="80"  height="80"></a>
	        <img src="../img/notica2.jpg" width="80"  height="80"></a>
	        <img src="../img/notica3.jpg" width="80"  height="80"></a>
	        <img src="../img/logo2.png" width="80"  height="80"></a>
	        </div>
	        <div class="integrantes-grupo">
	            <h4>Añadir Contactos al Grupo</h4>
	            <input type="search" placeholder="Buscar Contacto">
	            <input type="submit" value="Añadir"><br>
	            <h6> > Contacto ya añadidos</h6>
	            <a href="../html/perfil.html"><img src="../img/logo3.png" width="80"  height="80"></a>
	            <a href="../html/perfil.html"><img src="../img/chica.png" width="80"  height="80"></a>
	            <a href="../html/perfil.html"><img src="../img/chica.png" width="80"  height="80"></a>
	            <a href="../html/perfil.html"><img src="../img/logo3.png" width="80"  height="80"></a>
	            <a href="../html/perfil.html"><img src="../img/logo3.png" width="80"  height="80"></a>
	            <a href="../html/perfil.html"><img src="../img/chica.png" width="80"  height="80"></a>
	            <a href="../html/perfil.html"><img src="../img/logo3.png" width="80"  height="80"></a>
	            <a href="../html/perfil.html"><img src="../img/chica.png" width="80"  height="80"></a>
	        </div>
	        </div> <!--Bloque Izquierda.-->
	
	        <div class="bloque-derecha">
	        <div class="descripcion-grupo">
	            <h4>Descripción del grupo</h4>
	           <textarea name="descripcion" rows="10" cols="40" style="margin: 0px; width: 562px; height: 185px" >Descripción del Grupo</textarea>
	
	        </div>
	
	            <div class="privacidad">
	            <h4>Privado</h4>
	            <input type="radio" name="privacidad" value="1" checked> Si<br>
	            <input type="radio" name="privacidad" value="0"> No<br>
	            </div>
	            <div class="categoria-grupo">
	                    <h4>Categoría del Grupo</h4>
	                    <input type="text" placeholder="Introduce la Categoría del grupo" name="categoria" required style="margin: 0px; width: 300px; height: 30px">
	            </div>
	            <div class="barra">
	                <form action="#">
	                    Seleccione el numero máximo de participantes
	                    <input type="range" name="n_participantes" id="miembros" min="0" max="100">
	                    <span id="miemb">0</span>
	                    <br>
	                </form>
	                <!--
	                    <form name="ejemplo" action="13-html5-range-input.php" method="POST">
	                    Introduce tu edad:
	                    <input type="range" name="edad" min="18" max="99" step="1" value="40">
	                    <input type="submit" value="Enviar">
	                    </form>
	
	                     <?php
	                    //recojo el valor y lo saco por pantalla
	                    if ($_POST['edad'])
	                    echo "la edad recibida es: " .$_POST['edad'];
	                    ?>  -->
	            </div>
	        <div class="crearya">
	            <input type="submit" value="Crear Grupo"><br>
	           </div>
	           
    </form>
    </div> <!--Bloque Derecha-->

    </div>

    </div> <!--Contenedor-->
    <!-------------------------------------------------------------->
    <%@include file="./../../include/footer.html" %>

</body>

<script>

</script>

</html>
