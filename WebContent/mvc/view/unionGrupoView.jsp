<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="usuarioSession" class="es.uco.pw.display.beans.sessionBean" scope="session"></jsp:useBean> 

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Researchers Beta Web | Bienvenidos </title>
    <meta name="viewport" content="width-device-width"> <!--la etiqueta meta viewport para controlar la composición en los navegadores móviles, width es  para controlar el tamaño del viewport-->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../css/form.css" >
    <meta name="description" content="Web para crear grupos de investigacion con profesionales, conocer profesionales de tu entorno, noticias, etc.">
    <meta name="keywords" content="researchers,investigadores,grupos de investigacion,profesionales">
    <meta name="author" content="Antonio Sanchez,Carlos Freire, Francisco Cordoba, Angel Cañuelo">
</head>
<body>
	<%
		String idgrupo = request.getParameter("id_grupo");
		System.out.println(idgrupo);
	%>
	<form action="../control/unionGrupoController.jsp" class="formulario" method="POST">
		<h2 class="formulario__titulo">Motivo de la unión</h2>
		<input type="text" class="formulario__input" placeholder=<jsp:getProperty property="nombre" name="usuarioSession"/>>
		<label for="" class="formulario__label">Nombre</label>
		<input type="text" class="formulario__input" placeholder=<jsp:getProperty property="apellidos" name="usuarioSession"/>>
		<label for="" class="formulario__label">Apellidos</label>
		<input type="text" class="formulario__input" placeholder=<jsp:getProperty property="telefono" name="usuarioSession"/>>
		<label for="" class="formulario__label">Telefono</label>
		<textarea name="comentarios" rows="10" cols="40">Motivo de la unión...</textarea>
		<label for="" class="formulario__label">Motivo</label>
		<input type="submit" class="formulario__submit">
		<input type="hidden" name="id_grupo" value=<%=idgrupo%>>
	</form>
</body>

<script src="../js/form.js">

</script>
</html>
