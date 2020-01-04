<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="usuarioSession" class="es.uco.pw.display.beans.sessionBean" scope="session"></jsp:useBean> 
<%@page import="es.uco.pw.display.beans.sessionBean"%>


<!DOCTYPE html>
<html lang="es">
<head>

    <link rel="stylesheet" href="./../../css/styleperfil.css">
    <link rel="stylesheet" href="../../css/header_footer.css">
    <link rel="stylesheet" href="../../css/esto.css">
        <meta charset="utf-8">
        <title>Perfil </title>
        <meta name="viewport" content="width-device-width"> <!--la etiqueta meta viewport para controlar la composición en los navegadores móviles, width es  para controlar el tamaño del viewport-->
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta name="description" content="Web para crear grupos de investigacion con profesionales, conocer profesionales de tu entorno, noticias, etc.">
        <meta name="keywords" content="researchers,investigadores,grupos de investigacion,profesionales">
        <meta name="author" content="Antonio Sanchez,Carlos Freire, Francisco Cordoba, Angel Cañuelo">
</head>

<body>
       <%@include file="./../../include/header.html"%>
        
        <center>
            <p id="p0">Perfil</p>
            <p id="p1">Perfil ><p id="p2"><jsp:getProperty property="nombre" name="usuarioSession"/>
                <jsp:getProperty property="apellidos" name="usuarioSession"/></p></p>
        </center>
    <!-------------------------------------------------------------->
    <div class="contenedor">
        <div class="banner-superior">
            <div class="foto-perfil">
                <img src="../../img/foto_perfil.png" width="150px" border-radius="50%">
            </div>
            <div class="miembro-desde">
                 <h6>miembro desde X</h6>

             <img src="../img/modificar.png" id="btn-abrir-popup" class="btn-abrir-popup" width="40px" >

             </div>
            <div class="nombre">

                <h4><jsp:getProperty property="nombre" name="usuarioSession"/>
                <jsp:getProperty property="apellidos" name="usuarioSession"/></h4> 
                
                <h4><jsp:getProperty property="edad" name="usuarioSession"/></h4>
            </div>
            <div class="estudios">
					<jsp:getProperty property="universidad" name="usuarioSession"/>
            </div>
            <div class="ubicacion">
                        <h4>Ubicación:</h4>
                        <h5><jsp:getProperty property="direccion" name="usuarioSession"/>,
                         <jsp:getProperty property="CP" name="usuarioSession"/>
                        Provincia de <jsp:getProperty property="provincia" name="usuarioSession"/></h5>
             </div>
        </div> <!--Banner Superior-->

        <div class="info-izquierda">
            <div class="educacion">
            <h4>Educación</h4>
            <ul>
                <li>
					<jsp:getProperty property="idUsuario" name="usuarioSession"/>
                </li>
                <li>
 					<jsp:getProperty property="github" name="usuarioSession"/>
                </li>

            </ul>
                <h4>Aptitudes y Validaciones</h4>
                <ul>
					 <jsp:getProperty property="provincia" name="usuarioSession"/>
                </ul>

            <h4>Curriculum</h4>
            <embed src="../files/curriculum.pdf" type="application/pdf" width="95%" height="500px" />
             </div>
            <div class="info-contacto">
            <h4>Información de Contacto</h4>
            <div class="footer-social-icons">
                <ul>
                        <li><a href="#" target="blank"><i class="fa fa-phone"></i></a></li>
                    <li><a href="#" target="blank"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="#" target="blank"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="#" target="blank"><i class="fa fa-google-plus"></i></a></li>
                    <li><a href="#" target="blank"><i class="fa fa-github"></i></a></li>
                    <li><a href="#" target="blank"><i class="fa fa-paper-plane"></i></a></li>

                </ul>
            </div>
            </div>

        </div> <!--Info Izquierda-->

        <div class="info-derecha">
           <div class="contactos">
            <h4>Contactos</h4>
            <a href="#"><img src="../img/logo3.png" width="80"  height="80"></a>
            <a href="#"><img src="../img/chica.png" width="80"  height="80"></a>
            <a href="#"><img src="../img/chica.png" width="80"  height="80"></a>
            <a href="#"><img src="../img/logo3.png" width="80"  height="80"></a>
            <a href="#"><img src="../img/logo3.png" width="80"  height="80"></a>
            <a href="#"><img src="../img/chica.png" width="80"  height="80"></a>
            <a href="#"><img src="../img/logo3.png" width="80"  height="80"></a>
            <a href="#"><img src="../img/chica.png" width="80"  height="80"></a>
            <a href="#"><img src="../img/logo3.png" width="80"  height="80"></a>
            <a href="./personas_entorno.html"><u>Explorar tu entorno...</u></a>
            </div>

           <div class="grupos">
            <h4>Grupos</h4>
            <a href="../html/info_grupo.html"><img src="../img/grupo.png" width="80"  height="80"></a>
            <a href="../html/info_grupo.html"><img src="../img/grupo.png" width="80"  height="80"></a>
            <a href="../html/info_grupo.html"><img src="../img/grupo.png" width="80"  height="80"></a>
            <a href="../html/info_grupo.html"><img src="../img/grupo.png" width="80"  height="80"></a>
            <a href="../html/info_grupo.html"><img src="../img/grupo.png" width="80"  height="80"></a>
            <a href="../html/info_grupo.html"><img src="../img/grupo.png" width="80"  height="80"></a><br>
            <a href="./grupos.html"><u>Ver más...</u></a><br>
            <input type="submit" value="Crear un grupo" onclick="location.href = './../../crear_grupo.jsp'">
            </div>
        </div> <!--Info Derecha-->
    </div> <!--Contenedor-->

    <div class="overlay" id="overlay">

        <div class="datos-overlay">
            <h1>Ajustes de Usuario</h1>
            <div class="ajustes-cuenta">
            <h3>Ajustes de Cuenta</h3>
             <h4>Cambiar Email</h4>
             Tu email actual es: <jsp:getProperty property="correoElectronico" name="usuarioSession"/> <br>
             
             
             <form action="../control/modificarPerfilController.jsp" method="POST">
             <%application.setAttribute("campo", new String("correoElectronico")); %>
             <input type="email" placeholder="Introduce tu Nuevo Email" name="variable"><br>
             <input type="submit" value="verificar"><br>
             </form>
             
             <h4>Cambiar Contraseña</h4>
             <input type="password" placeholder="Introduce tu Contraseña actual"><br>
             <input type="submit" value="verificar">
             <h4>Cambiar Teléfono</h4>
             Tu Teléfono actual es: <br>
             <input type="text" placeholder="Introduce tu nuevo Teléfono"><br>
             <input type="submit" value="verificar">
            </div>
            <div class="ajustes-datos">
            <h3>Modificar Perfil</h3>
            <h4>Cambiar Ubicación</h4>
            <input type="text" placeholder="Introduce tu Nueva Ubicación"><br>
            <h4>Curriculum</h4>
            <input type="file"><br>
            Mostrar<br>
            <input type="radio" value="Si" name="sino" checked>Si
            <input type="radio" value="No" name="sino">No
            </div>
            <h4>Redes Sociales</h4>
            <input type="text" placeholder="Perfil de Facebook"><br>
            <input type="text" placeholder="Perfil de Google+"><br>
            <input type="text" placeholder="Perfil de GitHub"><br>
            <input type="text" placeholder="Perfil de Twitter"><br>
            <input type="text" placeholder="Nombre de Telegram"><br>
            <div class="botones-overlay">
                <img src="../../img/salir.png" width="150px" class="btn-submit" id="btn-cerrar-popup" class="btn-cerrar-popup" >
            </div>
    </div>

    </div> <!--Overlay-->
    <!-------------------------------------------------------------->
    <%@include file="./../../include/footer.html" %>

    <script scr="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="../../js/perfil.js"></script>

</body>

</html>
