<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Personas del entorno</title>
        <meta name="viewport" content="width-device-width">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/index.css" >
        <link rel="stylesheet" href="css/carrousel.css" >
        <link rel="stylesheet" href="css/personas_entorno.css" >
        <meta name="description" content="Web para crear grupos de investigacion con profesionales, conocer profesionales de tu entorno, noticias, etc.">
        <meta name="keywords" content="researchers,investigadores,grupos de investigacion,profesionales">
        <meta name="author" content="Antonio Sanchez,Carlos Freire, Francisco Cordoba, Angel Cañuelo">
        <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
        <script src="../js/slider.js"></script>
      </head>

<body>

<%@include file="./include/header.jsp"%>

<div class="content">
        <div class="personas-entorno">
            <div class="titulo-filtros">
              <div class="titulo">
                <p id="p0">Personas del entorno</p>
          		  <p id="p1">Comunidad ></p><p id="p2">&nbspPersonas del entorno</p>
              </div>

              <div class="filtros">
                <select class="select-css">
                      <option value="-1">Edad</option>
                      <option value="0">18-20 años</option>
                      <option value="1">20-30 años</option>
                      <option value="2">30-40 años</option>
                      <option value="3">40-50 años</option>
                      <option value="4">50-60 años</option>
                </select>
                <select class="select-css">
                      <option value="-1">Ubicación</option>
                      <option value="0">Córdoba</option>
                      <option value="1">Sevilla</option>
                      <option value="2">Jaén</option>
                      <option value="3">Huelva</option>
                      <option value="4">Almería</option>
                      <option value="5">Granada</option>
                      <option value="6">Cádiz</option>
                      <option value="7">Málaga</option>
                </select>
                </div>
            </div>

          <div class="personas">
            <div class="fil">
              <div class="col">
                <a href="perfil.html" target="blank"><img src="../img/logo3.png" width="200px"></a>
                <h3>Usuario 1</h3>
              </div>
              <div class="col">
                <a href="perfil.html" target="blank"><img src="../img/logo3.png" width="200px"></a>
                <h3>Usuario 2</h3>
              </div>
              <div class="col">
                <a href="perfil.html" target="blank"><img src="../img/logo3.png" width="200px"></a>
                <h3>Usuario 3</h3>
              </div>
            </div>

            <div class="fil">
              <div class="col">
                <a href="perfil.html" target="blank"><img src="../img/logo3.png" width="200px"></a>
                <h3>Usuario 4</h3>
              </div>
              <div class="col">
                <a href="perfil.html" target="blank"><img src="../img/logo3.png" width="200px"></a>
                <h3>Usuario 5</h3>
              </div>
              <div class="col">
                <a href="perfil.html" target="blank"><img src="../img/logo3.png" width="200px"></a>
              	<h3>Usuario 6</h3>
              </div>
            </div>
          </div>
        </div>

        <div class="espacio">
        </div>

        <div class="ubi-img">
            <div class="ubi">
               <iframe
                  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4451.521565387884!2d-4.722460991200989!3d37.914048937105484!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd6d20924ad6b75b%3A0x8cb499e9645d592e!2sCampus%20de%20Rabanales!5e0!3m2!1ses!2ses!4v1572722624518!5m2!1ses!2ses" width="400" height="250" frameborder="0" style="" allowfullscreen="">
                </iframe>
            </div>
            <div class="espacio"></div>
            <div class="img">
              <div id="carrusel">
                <a href="#" class="left-arrow"><img src="../img/left-arrow.png" /></a>
                <a href="#" class="right-arrow"><img src="../img/right-arrow.png" /></a>
                <div class="carrusel">
                    <div class="product" id="product_0">
                        <img src="../img/01.jpg" width="195" height="100" />
                        <h5>Lorem ipsum 1</h5>
                        <p>165.00 €</p>
                    </div>
                    <div class="product" id="product_1">
                        <img src="../img/02.jpg" width="195" height="100" />
                        <h5>Lorem ipsum 2</h5>
                        <p>100.00 €</p>
                    </div>
                    <div class="product" id="product_2">
                        <img src="../img/03.jpg" width="195" height="100" />
                        <h5>Lorem ipsum 3</h5>
                        <p>250.00 €</p>
                    </div>
                    <div class="product" id="product_3">
                        <img src="../img/01.jpg" width="195" height="100" />
                        <h5>Lorem ipsum 4</h5>
                        <p>75.00 €</p>
                    </div>
                    <div class="product" id="product_4">
                        <img src="../img/02.jpg" width="195" height="100" />
                        <h5>Lorem ipsum 5</h5>
                        <p>65.00 €</p>
                    </div>
                    <div class="product" id="product_5">
                        <img src="../img/03.jpg" width="195" height="100" />
                        <h5>Lorem ipsum 6</h5>
                        <p>40.00 €</p>
                    </div>
                </div>
            </div>
            </div>
        </div>
</div>

<%@include file="./include/footer.html" %>

</body>
</html>
