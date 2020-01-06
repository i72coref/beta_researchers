<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
      <head>
        <meta charset="utf-8">
        <title>Información de Grupo</title>
        <meta name="viewport" content="width-device-width"> <!--la etiqueta meta viewport para controlar la composición en los navegadores móviles, width es  para controlar el tamaño del viewport-->
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="/beta_web/css/info_grupo.css" >
        <meta name="description" content="Web para crear grupos de investigacion con profesionales, conocer profesionales de tu entorno, noticias, etc.">
        <meta name="keywords" content="researchers,investigadores,grupos de investigacion,profesionales">
        <meta name="author" content="Antonio Sanchez,Carlos Freire, Francisco Cordoba, Angel Cañuelo">
        <script src="./js/info_grupo.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

      </head>



              <body>
                <%@include file="./include/header.jsp"%>


                <div class="head">

                          <div class="foto">
                              <img src="/beta_web/img/logo2.png" alt="" width="90px"></img>
                          </div>

                          <div  class="informacion">
                            <p id="nombre" align="center">Team Beta Software</p>
                            <br>
                            <p id="grupo" > <img src="/beta_webimg/titulo.png" width="30px"></img>&nbsp Ingenieria Informatica</p>
                            <p id="grupo-mod"> <img src="/beta_web/img/titulo.png" width="30px"></img><input type="text" id="input" size="15" maxlength="30" ></p>
                            <p id="modificar"  onmouseover="over()" onmouseout="out()" align="right"><img id="foto-modificar" src="/beta_web/img/modificar.png"></img>&nbsp Modificar</p>
                        </div>
                </div>



                  <div class="encima-footer">
                            <div class="b1">
                                  <div class="tablon">
                                    <div class="titulo">
                                      <p>Tablón de Actividades</p>
                                      <hr width=300 align="center" size=1.5 color="black" >
                                      <hr width=250 align="center" size=1.5 color="black" >

                                    </div>

                                    <div class="texto">

                                        <div class="foto">
                                          <img src="/beta_web/img/img1.png" alt="" ></img>
                                            <p>Ademásde lo anterior, considérese que puede ser
                                              posible encontrar errores </p>
                                              <button id="boton">Asistir</button>
                                        </div>

                                        <div class="foto">
                                          <img src="/beta_web/img/img2.png" alt=""></img>
                                            <p>Ademásde lo anterior, considérese que puede ser
                                              posible encontrar errores </p>
                                              <button id="boton">Asistir</button>
                                        </div>

                                        <div class="foto">
                                          <img src="/beta_web/img/img3.png" alt="" ></img>
                                            <p>Ademásde lo anterior, considérese que puede ser
                                              posible encontrar errores </p>
                                              <button id="boton">Asistir</button>
                                        </div>

                                        <div class="foto">
                                          <img src="/beta_web/img/img4.png" alt=""></img>
                                            <p>Ademásde lo anterior, considérese que puede ser
                                              posible encontrar errores </p>
                                              <button id="boton">Asistir</button>
                                        </div>

                                    </div>
                                    <img id="msolo" onclick="add()" src="/beta_web/img/modificar.png" alt="" width="30px" ></img>
                                  </div>



                                  <div class="info">
                                    <div class="titulo">
                                      <p>Información del Grupo</p>
                                      <hr width=300 align="center" size=1.5 color="black" >
                                      <hr width=250 align="center" size=1.5 color="black" >
                                    </div>

                                    <div class="texto">
                                      <p>
                                        <img src="/beta_web/img/logo2.png" alt="" ></img>A veces, por motivos de estética, nos viene bien alinear verticalmente un sitio web.
                                        En los tiempos en que las webs se hacían con tablas, esto era sencillo gracias a la propiedad vertical-align de las mismas; pero con la aparición de las capas (Divs) y desaparición de las tablas esta propiedad murió.
                                        Hoy traigo 6 formas diferentes de alinear una web verticalmente con CSS sin morir en el intento, totalmente validadas por el W3C y que dará ese toque que le falta a tu web.
                                        Método con flexbox (más moderno y recomendado
                                        Este método es el más recomendado y fácil de implementar, basta con asignar al padre de nuestro html el siguiente código CSS:
                                        A veces, por motivos de estética, nos viene bien alinear verticalmente un sitio web.
                                        En los tiempos en que las webs se hacían con tablas, esto era sencillo gracias a la propiedad vertical-align de las mismas; pero con la aparición de las capas (Divs) y desaparición de las tablas esta propiedad murió.
                                        Hoy traigo 6 formas diferentes de alinear una web verticalmente con CSS sin morir en el intento, totalmente validadas por el W3C y que dará ese toque que le falta a tu web.
                                        Método con flexbox (más moderno y recomendado
                                        Este método es el más recomendado y fácil de implementar, basta con asignar a
                                      </p>
                                    </div>
                                    <img id="modificar" src="/beta_web/img/modificar.png" alt="" width="30px" ></img>
                                  </div>
                          </div>

                            <div class="b2">

                                    <div class="b2-titulo">
                                          <p>Integrantes</p>
                                          <hr width=300 align="center" size=1.5 color="black" >
                                          <hr width=250 align="center" size=1.5 color="black" >
                                    </div>

                                    <div class="b2-gente">
                                      <center>
                                        <table class="personas" cellpadding="25">
                                          <tr>
                                            <td><img src="/beta_web/img/logo3.png" alt="" width="100px"></img><p>Angel Ortiz</p></td>
                                            <td><img src="/beta_web/img/chica.png" alt="" width="100px"></img><p>Pepa FLores</p></td>
                                            <td><img src="/beta_web/img/logo3.png" alt="" width="100px"></img><p>Antonio Moscoso</p></td>
                                          </tr>
                                          <tr>
                                            <td><img src="/beta_web/img/logo3.png" alt="" width="100px"></img><p>Angel Ortiz</p></td>
                                            <td><img src="/beta_web/img/chica.png" alt="" width="100px"></img><p>Pepa FLores</p></td>
                                            <td><img src="/beta_web/img/logo3.png" alt="" width="100px"></img><p>Antonio sanchez</p></td>
                                          </tr>
                                          <tr>
                                            <td><img src="/beta_web/img/logo3.png" alt="" width="100px"></img><p>Angel Ortiz</p></td>
                                            <td><img src="/beta_web/img/chica.png" alt="" width="100px"></img><p>Pepa Flores</p></td>
                                            <td><img src="/beta_web/img/logo3.png" alt="" width="100px"></img><p>Antonio Moscoso</p></td>
                                          </tr>
                                        </table>
                                      </center>
                                    </div>

                                    <div class="b2-botones">
                                    <img src="/beta_web/img/add.png" alt="" width="70px"></img>
                                    </div>
                            </div>
                  </div>

                  <%@include file="./include/footer.html" %>

                        </body>

                </html>
