<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>

	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width" initial-scale=1 >
    <meta name="description" content="La web para los investigadores 101">
    <meta name="keywords" content="comunidad investigadores, informÃ¡tica, articulos investigaciÃ³n, blockchain">
    <meta name="author" content="Equipo III Programacion Web 2019-2020 UCO">

    <link rel="stylesheet" href="<%=ruta%>css/inicioSesion2.css">
    <link rel="stylesheet" href="<%=ruta%>css/style2.css">

    

    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto+Condensed">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Inconsolata">
    <link rel="stylesheet" href="<%=ruta%>img/font-awesome-4.7.0/css/font-awesome.min.css">





<jsp:useBean id="customerSesion" class="es.uco.pw.display.beans.customerBean" scope="session"></jsp:useBean>  
	
	
	<%
		
		if(customerSesion.getIdUsuario()!=-1){
			System.out.println("sesion iniciada: ");
			
	%>
			<jsp:forward page="../view/researcherUserView.jsp"></jsp:forward>
			
	<%	}
	
		else{%>
			
			
			
		<% }%>
<script>
	// Si se saca el script fuera nos ha estado dando problemas
    var validado=true

    function validarInicioSesion(form){
      var correo, password;
      correo = document.getElementById("correo").value;
      password = document.getElementById("password").value;
      if((correo === "") || (password === "")) {
        alert("Algún campo obligatorio está vacío.");
        return false;
      }
      fallo = validarEmail(form.correo.value);
      if(fallo == ""){
        validado=true;
        console.log(validado);
        return validado;
      }
      else{
        alert(fallo);
        return false;
      }
    }
    
</script>

<title>Inicio Sesión</title>

</head>
<body>

<%@include file="../../include/header.jsp" %>

    <div class="contenedor">

      <div class="container">
          <div id="contenido1">
            <div id="inicio">
              <h2>INICIAR SESIÓN</h2>
            </div>
            <img id="img1" src="../../img/ico/inicioSesion.png" >
          </div>
          <div id="contenido2">
          	
            <div id="FormularioInicio">
            
            
            
           		<form method="post" onsubmit="return validarInicioSesion(this);" action="../control/inicioSesionController.jsp">
					<input type="text" id="correo" name="correoElectronico" placeholder="Correo Electr&oacute;nico" onchange="isEmail('correo')" />
					<input type="password" id="password" name="password" placeholder="Password" />
					<input type="submit" id="submit" value="Iniciar Sesi&oacute;n" />
					</form>
					<p>¿No tienes cuenta de 101Researcher?</p>
					<form action="registroView.jsp">
					<input type="submit" id="submit2" value="Reg&iacute;strate">
				</form>
            
            
            
            
            </div>
          </div>
          <div id="contenido3">
              <div id="RegistroRSS">
                <span id="signinwith">Inicia sesión con<br/>Redes Sociales</span>
                <div id="botonesRSS">
                  <button class="social Google"><i class="fa fa-google fa-2x" aria-hidden="true" ></i> Registrate con Google </button>
                  <button class="social Github"><i class="fa fa-github fa-2x" aria-hidden="true" ></i> Registrate con Github </button>
                </div>
              </div>
          </div>

          </div>

          </div>

      </div>
      
      
    </div>
    
	<%@include file="../../include/footer.jsp" %>
	
    <script scr="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="../../js/buscar_registrado.js"> </script>
    <!-- 
        <script src="../../js/validar.js"> </script>
    
     -->

  </body>
</html>