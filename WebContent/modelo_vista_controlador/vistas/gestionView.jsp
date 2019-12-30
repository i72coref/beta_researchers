<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="es.uco.pw.display.beans.gestionBean"%>
<%@page import="es.uco.pw.display.beans.customerBean"%> 
<%@page import="java.util.ArrayList"%>   
<%@page import="java.util.List"%>   

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Researchers Beta Web | Bienvenidos </title>
        <meta name="viewport" content="width-device-width"> <!--la etiqueta meta viewport para controlar la composición en los navegadores móviles, width es  para controlar el tamaño del viewport-->
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="../../css/index.css" >
        <link rel="stylesheet" href="../../css/contentgestion.css">
        <script src="../../js/gestion.js" type="text/javascript"></script>
        <meta name="description" content="Web para crear grupos de investigacion con profesionales, conocer profesionales de tu entorno, noticias, etc.">
        <meta name="keywords" content="researchers,investigadores,grupos de investigacion,profesionales">
        <meta name="author" content="Antonio Sanchez,Carlos Freire, Francisco Cordoba, Angel Cañuelo">
    </head>
    <body>
            <header>
                    <div class="container">
                      <a href="../index.html"><h1 class="logo">  <img src="../../img/bueno.png" alt="" width="60px"></h1></a> 
                      <nav>
                        <ul>
                          <li><a href="../index-admin.html">Inicio</a></li>
                          <li><a href="perfil.html">Perfil</a></li>
                          <li><a href="ver_grupos.html">Comunidad</a></li>
                          <li><a href="b_avanzada.html">Búsqueda Avanzada</a></li>
                          <li><a href="./html/gestion.html">Gestión</a></li>
                          <li> <a href="#" class=""></a>  <input type="text" id="bar" placeholder="Buscar aquí"></li>
                        </ul>
                      </nav>
                    </div>
            </header>

            <div class="content">
                <div class="vali-cont">
                    <div class="validar">
                            <div class="titulo">
                                    Validacion de grupos
                                    <hr width=300 align="center" size=1.5 color="black" >
                                    <hr width=250 align="center" size=1.5 color="black" >
                                  </div>
                            <%
                           	ArrayList<gestionBean> res=(ArrayList<gestionBean>)request.getAttribute("resultado");                         
                           	for (int i=0; i<res.size();i++){
                           	%>
                           	
                           		<div class="box1">
                                <div class="number"><%out.println(res.get(i).getId_grupo());%> </div>
                                <div class="name"><%out.println(res.get(i).getNombre_grupo());%></div>
                                <div class="espacio"></div>
                                <div class="ver"> <button id="boton"style='width:70px; height:25px'>Ver</button></div>
                                 <form action="../control/gestionController.jsp" method="POST">
                                <div class="eliminar"><input type="submit" name="eliminar" value=<%out.println(res.get(i).getId_grupo());%>>Eliminar</div>
                                </form>
                                <div class="valid"><button  style='width:70px; height:25px'>Validar</button></div>
                        </div>
                        	<%
                           	}
                            %>
                    </div>
                    <div class="espacio"></div>
                    <div class="control">
                        <div class="titulo">
                                Control de noticias
                                <hr width=300 align="center" size=1.5 color="black" >
                                <hr width=250 align="center" size=1.5 color="black" >
                        </div>
                        <div class="notice">
                            <div class="texto">
                                <div class="titulo-notice">
                                    <strong>Avances en Química</strong>
                                </div>
                                <div class="texto-notice">
                                    <p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500</p>
                                </div>
                                <div class="autor">
                                    <strong><i>Publicado por:Miguel Angel Arroyo</i></strong>
                                </div>
                            </div>
                            <div class="imagen">
                                <div class="imagen-imagen">
                                <img src="../../img/logo2.png" alt="" width="100px" >
                                </div>
                                <div class="botones">
                                    <div class="va"><button onclick="mensaje2()" style='width:70px; height:25px' >Validar</button></div>
                                    <div class="elimin"><button onclick="mensaje3()" style='width:70px; height:25px'>Eliminar</button></div>
                                </div>
                            </div>
                        </div>
                        <div class="notice">
                                <div class="texto">
                                        <div class="titulo-notice">
                                            <strong>Avances en Química</strong>
                                        </div>
                                        <div class="texto-notice">
                                            <p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500</p>
                                        </div>
                                        <div class="autor">
                                            <strong><i>Publicado por:Miguel Angel Arroyo</i></strong>
                                        </div>
                                    </div>
                                    <div class="imagen">
                                        <div class="imagen-imagen">
                                        <img src="../../img/logo2.png" alt="" width="100px" >
                                        </div>
                                        <div class="botones">
                                            <div class="va"><button onclick="mensaje2()" style='width:70px; height:25px' >Validar</button></div>
                                            <div class="elimin"><button onclick="mensaje3()" style='width:70px; height:25px'</button></div>
                                        </div>
                                    </div>
                        </div>
                        <div class="notice">
                                <div class="texto">
                                        <div class="titulo-notice">
                                            <strong>Avances en Química</strong>
                                        </div>
                                        <div class="texto-notice">
                                            <p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500</p>
                                        </div>
                                        <div class="autor">
                                            <strong><i>Publicado por:Miguel Angel Arroyo</i></strong>
                                        </div>
                                    </div>
                                    <div class="imagen">
                                        <div class="imagen-imagen">
                                        <img src="../../img/logo2.png" alt="" width="100px" >
                                        </div>
                                        <div class="botones">
                                            <div class="va"><button onclick="mensaje2()" style='width:70px; height:25px'>Validar</button></div>
                                            <div class="elimin"><button onclick="mensaje3()" style='width:70px; height:25px'>Eliminar</button></div>
                                        </div>
                                    </div>
                        </div>
                        <div class="notice">
                                <div class="texto">
                                        <div class="titulo-notice">
                                            <strong>Avances en Química</strong>
                                        </div>
                                        <div class="texto-notice">
                                            <p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500</p>
                                        </div>
                                        <div class="autor">
                                            <strong><i>Publicado por:Miguel Angel Arroyo</i></strong>
                                        </div>
                                    </div>
                                    <div class="imagen">
                                        <div class="imagen-imagen">
                                        <img src="../../img/logo2.png" alt="" width="100px" >
                                        </div>
                                        <div class="botones">
                                            <div class="va"><button onclick="mensaje2()" style='width:70px; height:25px'>Validar</button></div>
                                            <div class="elimin"><button onclick="mensaje3()" style='width:70px; height:25px'>Eliminar</button></div>
                                        </div>
                                    </div>
                        </div>
                    </div>
                </div>
                <div class="espacio">
                </div>
                <div class="user-grup">
                    <div class="grupos">
                        <div class="titulo-grupos">
                            <div class="title">
                                    Grupos
                            </div>
                            <div class="search"> <input type="text" id="bar" placeholder="Buscar aquí"> </div>
                        </div>
                            <div class="equipo">
                                <div class="logo">
                                    <img src="../../img/grupo.png" width="60" height="60"><img>
                                </div>
                                <div class="nombre"> Equipo 1</div>
                                <div class="boton1"><a href="#"><img src="../img/correo.png" width="40" height="40"></a></div>
                                <div class="boton2"><a onclick="mensaje4()"><img src="../img/menos.png" width="40" height="40"></a></div>
                            </div>
                            <div class="equipo">
                                <div class="logo">
                                    <img src="../../img/grupo.png" width="60" height="60"><img>
                                </div>
                                <div class="nombre"> Equipo 2</div>
                                <div class="boton1"><a href="#"><img src="../img/correo.png" width="40" height="40"></a></div>
                                <div class="boton2"><a onclick="mensaje4()"><img src="../img/menos.png" width="40" height="40"></a></div>
                            </div>
                            <div class="equipo">
                                <div class="logo">
                                    <img src="../../img/grupo.png" width="60" height="60"><img>
                                </div>
                                <div class="nombre"> Equipo 3</div>
                                <div class="boton1"><a href="#"><img src="../img/correo.png" width="40" height="40"></a></div>
                                <div class="boton2"><a onclick="mensaje4()"><img src="../img/menos.png" width="40" height="40"></a></div>
                            </div>
                            <div class="equipo">
                                <div class="logo">
                                    <img src="../../img/grupo.png" width="60" height="60"><img>
                                </div>
                                <div class="nombre"> Equipo 4</div>
                                <div class="boton1"><a href="#"><img src="../img/correo.png" width="40" height="40"></a></div>
                                <div class="boton2"><a onclick="mensaje4()"><img src="../img/menos.png" width="40" height="40"></a></div>
                            </div>
                    </div>
                    <div class="espacio"></div>
                    <div class="usuarios">
                            <div class="titulo-grupos">
                                    <div class="title">
                                            Usuarios
                                    </div>
                                    <div class="search"> <input type="text" id="bar" placeholder="Buscar aquí"> </div>
                            </div>
                            <div class="lista">
                                <div class="user">
                                    <div class="log-nom">
                                        <img src="../../img/logo3.png" width="90" height="90">
                                        <p><strong>Juan Palomo</strong></p>
                                    </div>
                                    <div class="botons">
                                        <div class="boton1"><a href="#"><img src="../img/correo.png" width="35" height="35"></a></div>
                                        <div class="boton2"><a onclick="mensaje5()"><img src="../img/menos.png" width="35" height="35"></a></div>
                                    </div>
                                </div>
                                <div class="user">
                                        <div class="log-nom">
                                                <img src="../../img/logo3.png" width="90" height="90">
                                                <p><strong>Juan Palomo</strong></p>
                                            </div>
                                            <div class="botons">
                                                <div class="boton1"><a href="#"><img src="../img/correo.png" width="35" height="35"></a></div>
                                                <div class="boton2"><a onclick="mensaje5()"><img src="../img/menos.png" width="35" height="35"></a></div>
                                            </div>
                                </div>
                                <div class="user">
                                        <div class="log-nom">
                                                <img src="../../img/logo3.png" width="90" height="90">
                                                <p><strong>Juan Palomo</strong></p>
                                            </div>
                                            <div class="botons">
                                                <div class="boton1"><a href="#"><img src="../img/correo.png" width="35" height="35"></a></div>
                                                <div class="boton2"><a onclick="mensaje5()"><img src="../img/menos.png" width="35" height="35"></a></div>
                                            </div>
                                </div>
                                <div class="user">
                                        <div class="log-nom">
                                                <img src="../../img/logo3.png" width="90" height="90">
                                                <p><strong>Juan Palomo</strong></p>
                                            </div>
                                            <div class="botons">
                                                <div class="boton1"><a href="#"><img src="../img/correo.png" width="35" height="35"></a></div>
                                                <div class="boton2"><a onclick="mensaje5()"><img src="../img/menos.png" width="35" height="35"></a></div>
                                            </div>
                                </div>
                                <div class="user"><div class="log-nom">
                                        <img src="../../img/logo3.png" width="90" height="90">
                                        <p><strong>Juan Palomo</strong></p>
                                    </div>
                                    <div class="botons">
                                        <div class="boton1"><a href="#"><img src="../img/correo.png" width="35" height="35"></a></div>
                                        <div class="boton2"><a onclick="mensaje5()"><img src="../img/menos.png" width="35" height="35"></a></div>
                                    </div>
                                </div>
                                <div class="user"><div class="log-nom">
                                        <img src="../../img/logo3.png" width="90" height="90">
                                        <p><strong>Juan Palomo</strong></p>
                                    </div>
                                    <div class="botons">
                                        <div class="boton1"><a href="#"><img src="../img/correo.png" width="35" height="35"></a></div>
                                        <div class="boton2"><a onclick="mensaje5()"><img src="../img/menos.png" width="35" height="35"></a></div>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
                <div class="espacio">
                </div>
                <div class="tareas">
                    <div class="titulo">
                            Tareas pendientes
                            <hr width=300 align="center" size=1.5 color="black" >
                            <hr width=250 align="center" size=1.5 color="black" >
                    </div>
                    <div class="grafico1">
                        <div class="log-graf"><img src="../../img/grafico1.png" width="100" height="100"></div>
                        <div class="text-graf"><i>Grupos pendientes por validar: 6</i></div>
                    </div>
                    <div class="grafico1">
                        <div class="log-graf"><img src="../../img/grafico2.png" width="100" height="100"></div>
                        <div class="text-graf"><i>Noticias pendientes por validar: 4</i></div>
                    </div>
                </div>
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
                        <li><a href="./carlos/html/aviso_legal.html">Aviso legal</a></li>
                        <li><a href="./carlos/html/termino_condiciones.html">Termino y condiciones de uso</a></li>
                        <li><a href="./carlos/html/politica_privacidad.html">Política y privacidad de datos</a></li>
                        <li><a href="./carlos/html/about_us.html">Acerca de nosotros</a></li>
                    </ul>
                </div>
                </div>
            </div>
        
            </body>
        </html>
        