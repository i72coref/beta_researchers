<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Acceso</title>
    <meta name="viewport" content="width-device-width">
    <link rel="stylesheet" href="css/styleacceso.css">
    <meta name="description" content="Web para crear grupos de investigacion con profesionales, conocer profesionales de tu entorno, noticias, etc.">
    <meta name="keywords" content="researchers,investigadores,grupos de investigacion,profesionales">
    <meta name="author" content="Antonio Sanchez,Carlos Freire, Francisco Cordoba, Angel Cañuelo">
</head>
<body>
    <div class="contenedor-form">
        <div class="toggle">
            <span>Crear Cuenta</span>
        </div>

        <div class="formulario">
        <h2> Iniciar Sesión </h2>
        <form action="mvc/control/validaAccesoController.jsp" method="POST">
                Email<br>
                <input type="text" placeholder="Introduce tu Email" id="log" name="correoElectronico" required><br>
                Contraseña<br>
                <input type="password" placeholder="Introduce tu Contraseña" id="pass" name="password" required><br>
                <input type="submit" value="Iniciar Sesión">
        </form>
        <div class="olvido-password">
            <a href="#">Olvidé mi contraseña</a>
         </div>
        </div>

        <div class="formulario">
                <h2> Crear cuenta </h2>
                <form action="../control/accesoController.jsp" method="POST">
                    Nombre<br>
                    <input type="text" placeholder="Introduce tu Nombre" name="nombre" required><br>
                    Apellidos<br>
                    <input type="text" placeholder="Introduce tus Apellidos" name="apellidos" required><br>
                    Email<br>
                    <input type="email" placeholder="Introduce tu Email" name="correoElectronico" required><br>
                    Contraseña<br>
                    <input type="password" placeholder="Introduce tu Contraseña" name="password" required><br>
                    Edad<br>
                    <input type="text" name="edad" required><br>
                    Provincia<br>
                    <input type="text" placeholder="Introduce tu Provincia" name="provincia" required><br>
                    Dirección<br>
                    <input type="text" placeholder="Introduce tu Direccion" name="direccion" required><br>
                    Codigo Postal<br>
                    <input type="text" placeholder="Introduce tu CP" name="CP" required><br>
                    Telefono<br>
                    <input type="text" placeholder="Introduce tu Telefono" name="telefono" required><br>
                    Universidad<br>
                    <input type="text" placeholder="Introduce tu Universidad" name="universidad">
                   	Curso<br>
                    <input type="text" placeholder="Introduce tu último año de Matriculación" name="curso">
                    Grado<br>
                    <input type="text" placeholder="Introduce el título de tu Grado" name="carrera">
         			Experiencia<br>
					<input type="text" placeholder="Introduce tus Años de Experiencia" name="experiencia">
                    Redes Sociales<br>
                    <input type="text" placeholder="Perfil de Facebook" name="facebook"><br>
            		<input type="text" placeholder="Perfil de Google+" name="google"><br>
            		<input type="text" placeholder="Perfil de GitHub" name="github"><br>
           			<input type="text" placeholder="Perfil de Twitter" name="twitter"><br>
            		<input type="text" placeholder="Nombre de Telegram" name="telegram"><br>
            		Más sobre mi<br>
            		<input type="text" placeholder="Introduce Información relevante sobre ti" name="actividades"><br>
            		<input type="submit" value="Registrarse"><br>
                </form>
                <div class="acepta-terminos">
                    <form action="acepta">
                       <input type="checkbox" required>Estoy de acuerdo con <a href="./termino_condiciones.html">Terminos y Condiciones</a><br>
                    </form>
                </div>
         </div>


    </div>
    <script src="/js/jquery-3.4.1.min.js"></script>
    <script src="/js/acceso.js"></script>
</body>
</html>

