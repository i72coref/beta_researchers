<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
      <head>
        <meta charset="utf-8">
        <title>Búsqueda Avanzada</title>
        <meta name="viewport" content="width-device-width"> <!--la etiqueta meta viewport para controlar la composición en los navegadores móviles, width es  para controlar el tamaño del viewport-->
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="./../../css/index.css" >
        <link rel="stylesheet" href="./../../css/b_avanzada.css" >
        <meta name="description" content="Web para crear grupos de investigacion con profesionales, conocer profesionales de tu entorno, noticias, etc.">
        <meta name="keywords" content="researchers,investigadores,grupos de investigacion,profesionales">
        <meta name="author" content="Antonio Sanchez,Carlos Freire, Francisco Cordoba, Angel Cañuelo">
      </head>

        <body>

          <header>
              <div class="container">
                  <a href="./../index.html"><h1 class="logo">  <img src="./../img/bueno.png" alt="" width="60px"></h1></a>
                  <nav>
                  <ul>
                      <li><a href="./../index.html">Inicio</a></li>
                      <li><a href="perfil.html">Perfil</a></li>
                      <li><a href="ver_grupos.html">Comunidad</a></li>
                      <li><a href="b_avanzada.html">Búsqueda Avanzada</a></li>
                        <li> 
                        	<form action="./../control/buscarapidoController.jsp" method="post">
                        		<input class="busqueda" type="search" name="palabrasclave" placeholder="Buscar Aquí..." size="20px" >
            					<button  type="submit"  data-placement="top" title="Click para buscar">Search</button></li>
            				</form></li>
                  </ul>
                  </nav>
              </div>
          </header>




          <div class="bavanzada">
            <center>
                  <p>Búsqueda Avanzada</p>
                  <hr width=750 align="center" size=1 color="black" >
                  <hr width=700 align="center" size=1 color="black" >
            </center>
          </div>




          <div  class="general">

                <div class="espacio">
                </div>

                <center>
                <div class="c1">
                    <div class="f1">
                      <p>Grado</p>

                    </div>




                    <div class="f3">
                    <p>Años de Experiencia</p>
                    </div>


                    <div class="f4">
                    <p>Codigo Postal</p>
                    </div>




                </div>
                </center>

                <center>
                <div class="c2">
                  <div class="f6">
                  <form action="./../control/b_avanzadaController.jsp" method="post">
                    <select name = "GRADO">
                          <option value="-1">Seleccionar</option>
                          <option value="1">1</option>
                          <option value="2">2</option>
                          <option value="3">3</option>
                          <option value="4">4</option>
                    
                    </select>
                   
                  </div>


                  <div class="f8">
                    <select name = "EXPERIENCIA">
                          <option value="-1">Seleccionar</option>
                          <option value="0">0</option>
                          <option value="1">1</option>
                          <option value="2">2</option>
                          <option value="3">3</option>
                          <option value="4">4</option>
                          <option value="5">5</option>
                          
                          
                    </select>
                  </div>




                  <div class="f10">
<input class="CP" type="search" name="CP" placeholder="Introduce el CP..." size="20px" >
                  </div>

                </div>
                </center>

                <div class="espacio">
                </div>

                <center>
                <div class="c3">
                    <div class="f11">
                      <p>Provincia</p>
                    </div>


                    <div class="f12">
                      <p>Edad</p>
                    </div>





                    <div class="f14">
                      <p>Universidad</p>
                    </div>



                </div>
                </center>

                <center>
                <div class="c4">


                  <div class="f17">
                    <select name = "PROVINCIA">
                      <option value="-1">Seleccionar</option>
                      <option value="Cordoba">Cordoba</option>
                      <option value="Malaga">Malaga</option>
                      <option value="Jaen">Jaen</option>
                      <option value="Huelva">Huelva</option>
                      <option value="Sevilla">Sevilla</option>
                      <option value="Granada">Granada</option>
                      <option value="Cadiz">Cadiz</option>
                      <option value="Almeria">Almeria</option>
                    </select>
                  </div>


                  <div class="f19">
                    <select name = "EDAD">
                          <option value="-1">Seleccionar</option>
                          <option value="20">Menos de 20</option>
                          <option value="30">Menos de 30</option>
                          <option value="40">Menos de 40</option>
                          <option value="50">Menos de 50</option>
                          <option value="60">Menos de 60</option>
                          <option value="70">Menos de 70</option>
                    </select>
                  </div>


                  <div class="f20">
                    <select name = "UNI">
                      <option value="-1">Seleccionar</option>
                      <option value="UCO">UCO</option>
                      <option value="UCA">UCA</option>
                      <option value="UMA">UMA</option>
                      <option value="USE">USE</option>
                    </select>
                  </div>
                </div>
                </center>

                <div class="espacio">
                </div>

          </div>




          <div class="boton">
            <center>
                      <button id="boton"><a href="./result_avanzada.html">Búsqueda</a></button>
            </center>
            </form>
          </div>


          <div class="footer">
              <div class="footer-main-div">
              <div class="footer-social-icons">
                  <ul>
                      <li><a href="#" target="blank"><i class="fa fa-facebook"></i></a></li>
                      <li><a href="#" target="blank"><i class="fa fa-twitter"></i></a></li>
                      <li><a href="#" target="blank"><i class="fa fa-google-plus"></i></a></li>
                      <li><a href="#" target="blank"><i class="fa fa-youtube"></i></a></li>
                  </ul>
              </div>
               <div class="footer-menu-one">
                  <ul>
                      <li><a href="./aviso_legal.html">Aviso legal</a></li>
                      <li><a href="./termino_condiciones.html">Termino y condiciones de uso</a></li>
                      <li><a href="./politica_privacidad.html">Política y privacidad de datos</a></li>
                      <li><a href="./about_us.html">Acerca de nosotros</a></li>
                  </ul>
              </div>
              </div>
          </div>
            </div>
        </body>

</html>