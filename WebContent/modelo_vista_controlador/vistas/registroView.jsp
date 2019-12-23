<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="customerSesion" class="es.uco.pw.display.beans.customerBean" scope="session"></jsp:useBean>  

<!--
  Archivo:registro.html
  Descripción:registro de usuarios 

-->

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
  


   	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width" initial-scale=1 >
    <meta name="description" content="La web para los investigadores 101">
    <meta name="keywords" content="comunidad investigadores, informÃ¡tica, articulos investigaciÃ³n, blockchain">
    <meta name="author" content="Equipo III ProgramaciÃ³n Web 2019-2020 UCO">
    
    <link rel="stylesheet" href="<%=ruta%>css/registro2.css">
    <link rel="stylesheet" href="<%=ruta%>css/style2.css">
    

    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto+Condensed">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Inconsolata">
    <link rel="stylesheet" href="<%=ruta%>img/font-awesome-4.7.0/css/font-awesome.min.css">

	
	
	<%
		
		if(customerSesion.getIdUsuario()!=-1){
			System.out.println("sesion iniciada: ");
			
	%>
			<jsp:forward page="../view/researcherUserView.jsp"></jsp:forward>
			
	<%	}
	
		else{%>
			
			
			
		<% }%>
   	
   	
   	
   	<script type="text/javascript">
		function isChecked1()
		{
			let estado = document.getElementById('check').checked;
		    if(estado)
		    {
		      return true;
		    }
			return false;
		}
		function equals(p1,p2)
		{
			let cadena1 = p1;
			let cadena2 = p2;
			cadena1.trim();
			cadena2.trim();
			if(cadena1 === cadena2)
			{
				if(cadena1 == "" || cadena2 == "")
				{
					return false;
				}
				else
				{
					if(cadena1.search(" ") != -1)
					{
						return false;
					}
					else
					{
						return true;
					}	
				}
				
			}
			else
			{
				return false;
			}
		}
		function isEmail(cadena){
			//Se usarán funciones de subcadenas para comprobar que es un email
			//let email = document.getElementById(id_elemento).value;
			var email = cadena;
			//Expresión regular para saber si el email tiene el formato correcto
		  	var expresion = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;
		  
		  if(!expresion.test(email)) 
		  {
			  return false;
		  } 
		  
		  return true;
		  
		}
		function validaFormularioRegistro(f) {
			  var ok = true;
			  var msg = "Problemas detectados.\nComprueba los siguientes campos: \n";
			  if(f.elements[0].value == "")
			  {
			    msg += "- Nombre\n";
			    ok = false;
			  }
			  if(f.elements["apellidos"].value == "")
			  {
			    msg += "- Apellidos\n";
			    ok = false;
			  }
			  
			  if(f.institucion.value == "")
		  	  {
		  	    msg += "- Institución\n";
		  	    ok = false;
		  	  }
			  
			  if(!isEmail(f.email.value))
		  	  {
		  		  msg += "- Email incorrecto\n";
		  		  ok = false;
		  	  }
			  
			  
		  	  if(!equals(f.password.value, f.password2.value))
		  	  {
		  		  msg += "- Incidencia con los passwords\n"
		  		  ok = false;
		  	  }
		  	  
		  	  
		  	  if(!isChecked1())
		  	  {
		  		msg += "- Debes aceptar los términos y condiciones\n"
		    	ok = false;
		  	  }
		  	    
			  
			  //en caso de que falle algo, imprime una alerta
		  	  if(ok == false)
		    	alert(msg);
			  
		 	  return ok;
		}
	</script>
   	
    <title>Registro de Usuario</title>
    
    
  </head>
  
  <body>


    <!-- No es necesario modificar según roles porque siempre será No registrado -->
   	<%@include file="../../include/header.jsp" %>
   

    <div class="contenedor">

      <div class="container">

          <div id="contenido1">

            <div id="inicio">
              <h2>REGISTRO USUARIO</h2>
            </div>

            <img id="img1" src="../../img/ico/add-user-plugin.png" >
          </div>

          <div id="contenido2">
          	  <div id="FormularioRegistro">
			    <form onsubmit="return validaFormularioRegistro(this)" action="../control/registroController.jsp" method="post">
			      <input type="text" id="nombre" name="nombre" placeholder="Nombre *" onchange="empty('nombre')">
			      <input type="text" id="apellidos" name="apellidos" placeholder="Apellidos *" onchange="empty('apellidos')">      
			      <input type="text" id="email" name="email" placeholder="Correo Electrónico *" onchange="isEmail('email')">
			      <input type="text" id="institucion" name="institucion" placeholder="Institución *" onchange="empty('institucion')">
			      <input type="password" id="password" name="password" placeholder="Password *" />
			      <input type="password" id="password2" name="password2" placeholder="Retype Password *" />
			             
			      <p>¿Eres investigador?<input type="checkbox" id="investigador" name="investigador"></p>
			              
			      <p>Aceptas los Términos y Condiciones
			      <input type="checkbox" id="check" name="check" value="check" placeholder="Aceptas los Términos y Condiciones"/>
			      </p><br />
			      <input type="submit" id="submit" value="Regístrate">
			    </form>
			    <br />¿Ya eres usuario de 101Researcher?
			    <form action="inicioSesionView.jsp">
			    <input type="submit" id="submit2" value="Inicia sesión">
			    </form>
			    
			  </div>
          </div>

        </div>

      </div>


    
   	<%@include file="../../include/footer.jsp" %>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

  </body>
</html>

