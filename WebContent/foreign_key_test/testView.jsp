<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- CREAR ALUMNO -->
<h2>Crear alumno</h2>
<form action="./testController.jsp" method="POST">
	<input type="number" name="idAlumno" placeholder="ID Alumno (Numero)"/>
	<input type="text" name="nombreAlumno" placeholder="Nombre Alumno"/>
	<input type="submit" value="Añadir alumno">
</form>

<hr />

<!-- CREAR ASIGNATURA -->
<h2>Crear asignatura</h2>
<form action="./testController.jsp" method="POST">
	<input type="text" name="idAsignatura" placeholder="ID Asignatura (Numero)"/>
	<input type="text" name="nombreAsignatura" placeholder="Nombre Asignatura"/>
	<input type="submit" value="Añadir asignatura">
</form>

<hr />

<!-- AÑADIR ALUMNO A ASIGNATURA-->
<h2>Añadir alumno a una asignatura</h2>
<form action="./testController.jsp" method="POST">
	<select></select>
	<input type="submit" value="Añadir alumno a asignatura">
</form>

</body>
</html>