<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html> <!-- !DOCTYPE indica que trabajamos con HTML5 -->
<html>
<head>
	<meta charset="utf-8">
	<title>Sobre nosotros</title>
	<meta name="viewport" content="width-device-width">
	<!-- Ajusta la página para móviles (diseño casi responsive)
		la etiqueta meta viewport para controlar la composición en los navegadores móviles, width es  para controlar el tamaño del viewport-->
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="./css/index.css" >
	<link rel="stylesheet" href="./css/information_pages.css" >
	<meta name="description" content="Web para crear grupos de investigacion con profesionales, conocer profesionales de tu entorno, noticias, etc.">
	<meta name="keywords" content="researchers,investigadores,grupos de investigacion,profesionales">
	<meta name="author" content="Antonio Sanchez,Carlos Freire, Francisco Cordoba, Angel Cañuelo">
</head>
<body>

	<%@include file="./include/header.html"%>

   	<div class="content">

		<div class="text">
   			<h2>SOBRE NOSOTROS</h2>
            <p>
                La visión de Beta es <strong>crear oportunidades</strong>
                económicas para cada miembro del mercado laboral global gracias
                al desarrollo continuo del primer gráfico económico del mundo.
            </p>

            <p>
                La misión de Beta es sencilla: <strong>conectar a profesionales
                </strong> de todo el mundo para ayudarles a ser más productivos
                y a alcanzar todas sus metas laborales.
            </p>

            <p>
                Beta nació en el año 2002 en la sala de la casa de Toni, cofundador
                de Beta, y se lanzó oficialmente el 30 de octubre de 2019.<br />
                Antonio José Sánchez es el consejero delegado (CEO) y el equipo
                de gestión de la empresa está formado por ejecutivos con gran
                experiencia provenientes de empresas como <em>Yahoo!, Google,
                Microsoft, TiVo, PayPal, Electronic Arts o la UCO</em>.<br />Beta
                cuenta con un modelo de negocio diversificado e ingresos
                provenientes de suscripciones de usuarios, publicidad y
                soluciones para selección de personal. En el mes de diciembre
                de 2016, Microsoft completó la compra de Beta, lo que unió a la
                principal nube profesional del mundo con la principal red
                profesional del mundo.
            </p>
        </div>

   		<div class="blank">
   		</div>

   		<div class="image">
   			<img src="../img/about_us.jpg" alt="" width="600px">
   		</div>

   	</div>
   	
	<%@include file="./include/footer.html" %>
	
</body>
</html>
