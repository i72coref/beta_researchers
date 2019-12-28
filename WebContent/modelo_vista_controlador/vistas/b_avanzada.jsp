<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
      <head>
        <meta charset="utf-8">
        <title>Búsqueda Avanzada</title>
        <meta name="viewport" content="width-device-width"> <!--la etiqueta meta viewport para controlar la composición en los navegadores móviles, width es  para controlar el tamaño del viewport-->
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="./../css/index.css" >
        <link rel="stylesheet" href="./../css/b_avanzada.css" >
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
                      <li><a href="result_avanzada.html" class=""></a>  <input type="text" id="bar" placeholder="Buscar aquí"></li>
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


                    <div class="f2">
                      <p>Fecha</p>
                    </div>


                    <div class="f3">
                    <p>Años de Experiencia</p>
                    </div>


                    <div class="f4">
                    <p>Idiomas</p>
                    </div>


                    <div class="f5">
                    <p>Máster</p>
                    </div>



                </div>
                </center>

                <center>
                <div class="c2">
                  <div class="f6">
                    <select>
                          <option value="-1">Seleccionar</option>
                          <option value="0">1</option>
                          <option value="1">2</option>
                          <option value="2">3</option>
                          <option value="3">4</option>
                    </select>
                  </div>


                  <div class="f7">
                    <select>
                          <option value="-1">Seleccionar</option>
                          <option value="0">Hoy</option>
                          <option value="1">Ayer</option>
                          <option value="2">Última Semana</option>
                          <option value="3">Último Mes</option>
                          <option value="4">último Año</option>
                          <option value="5">Siempre</option>

                    </select>
                  </div>


                  <div class="f8">
                    <select>
                          <option value="-1">Seleccionar</option>
                          <option value="0">1</option>
                          <option value="1">2</option>
                          <option value="2">3</option>
                          <option value="3">4</option>
                          <option value="4">5</option>
                          <option value="5">5 - 10</option>
                          <option value="6">10 - 15</option>
                          <option value="7">Más de 15</option>
                    </select>
                  </div>


                  <div class="f9">
                    <select>
                          <option value="-1">Seleccionar</option>
                          <option value="0">Inglés</option>
                          <option value="1">Español</option>
                          <option value="2">Chino</option>
                          <option value="3">Francés</option>
                          <option value="4">Otros</option>
                    </select>
                  </div>


                  <div class="f10">
                    <select>
                          <option value="-1">Seleccionar</option>
                          <option value="0">De Informática</option>
                          <option value="1">De Medicina</option>
                          <option value="2">De robótica</option>
                          <option value="3">De Física</option>
                    </select>
                  </div>

                </div>
                </center>

                <div class="espacio">
                </div>

                <center>
                <div class="c3">
                    <div class="f11">
                      <p>Universidad</p>
                    </div>


                    <div class="f12">
                      <p>Provincia</p>
                    </div>


                    <div class="f13">
                      <p>Año de Matriculación</p>
                    </div>


                    <div class="f14">
                      <p>Edad</p>
                    </div>


                    <div class="f15">
                      <p>Grupos</p>
                    </div>

                </div>
                </center>

                <center>
                <div class="c4">
                  <div class="f16">
                    <select>
                          <option value="-1">Seleccionar</option>
                          <option value="0">Córdoba</option>
                          <option value="1">Madrid</option>
                          <option value="2">Jaen</option>
                          <option value="3">Barcelona</option>
                          <option value="4">Sevilla</option>
                          <option value="5">Granada</option>
                    </select>
                  </div>


                  <div class="f17">
                    <select>
                      <option value="-1">Seleccionar</option>
                      <option value="0">Córdoba</option>
                      <option value="1">Madrid</option>
                      <option value="2">Jaen</option>
                      <option value="3">Barcelona</option>
                      <option value="4">Sevilla</option>
                      <option value="5">Granada</option>
                    </select>
                  </div>


                  <div class="f8">
                    <select>
                          <option value="-1">Seleccionar</option>
                          <option value="0">Entre 2000 - 2005</option>
                          <option value="1">Entre 2005 - 2010</option>
                          <option value="2">Entre 2010 - 2015</option>
                    </select>
                  </div>


                  <div class="f19">
                    <select>
                          <option value="-1">Seleccionar</option>
                          <option value="0">Entre 15 - 20</option>
                          <option value="1">Entre 20 - 25</option>
                          <option value="2">Entre 25 - 30</option>
                          <option value="3">Entre 30 - 35</option>
                          <option value="4">Entre 35 - 40</option>
                          <option value="5">Más de 40</option>
                    </select>
                  </div>


                  <div class="f20">
                    <select>
                      <option value="-1">Seleccionar</option>
                      <option value="0">De Informática</option>
                      <option value="1">De Medicina</option>
                      <option value="2">De robótica</option>
                      <option value="3">De Física</option>
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
