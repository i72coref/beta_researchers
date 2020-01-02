<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--
  Archivo:registro.html
  Descripción:registro de usuarios 

-->

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
  

  </head>
  
  <body>


    <!-- No es necesario modificar según roles porque siempre será No registrado -->
   
	<a href="../control/EjemploController.jsp?FunctionFromVista=entrada">a Controlador: Función entrada</a>
	<br>
	<a href="../control/EjemploController.jsp?FunctionFromVista=salida">a Controlador: Función salida</a>
	
          	
            <div id="FormularioConfig">
          
            	<form name="form1" method="post" action="../control/EjemploController.jsp?action=pruebaBean">
					
					Nombre: </strong><input type="text" id="campo1" name="campo1" placeholder="Nombre *"  >				
			      	Apellidos: </strong><input type="text" id="campo2" name="campo2" placeholder="Apellidos *" >      
				 
					<input type="submit" id="submit" name="submit" value="Actualizar" />
					
				</form>
			</div>
						
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

  </body>
</html>