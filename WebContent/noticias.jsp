<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>

    <link rel="stylesheet" href="../css/noticiasmejorado.css">
    <link rel="stylesheet" href="../css/header_footer.css">
    <link rel="stylesheet" href="./../css/carrousel.css" >
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta charset="utf-8">
        <title>Noticias </title>
        <meta name="viewport" content="width-device-width"> <!--la etiqueta meta viewport para controlar la composición en los navegadores móviles, width es  para controlar el tamaño del viewport-->
        <meta name="description" content="Web para crear grupos de investigacion con profesionales, conocer profesionales de tu entorno, noticias, etc.">
        <meta name="keywords" content="researchers,investigadores,grupos de investigacion,profesionales">
        <meta name="author" content="Antonio Sanchez,Carlos Freire, Francisco Cordoba, Angel Cañuelo">
        <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
        <script type="text/javascript" charset="utf-8">
        $(window).load(function() {
          $('.flexslider').flexslider({
            touch: true,
            pauseOnAction: false,
            pauseOnHover: false,
          });
        });
      </script>

</head>
<!--Documentacion:
-->
<body>
        <header>
                <div class="container">
                  <a href="../index.html"><h1 class="logo">  <img src="../img/bueno.png" alt="" width="60px"></h1></a>

                  <nav>
                    <ul>
                        <li><a href="../index.html">Inicio</a></li>
                        <li><a href="perfil.html">Perfil</a></li>
                        <li><a href="ver_grupos.html">Comunidad</a></li>
                        <li><a href="b_avanzada.html">Búsqueda Avanzada</a></li>
                        <li><a href="result_avanzada.html" class=""></a>  <input type="text" id="bar" placeholder="Buscar aquí"></li>
                    </ul>
                  </nav>
                </div>
        </header>
        <center>
          <p id="p0">NOTICIAS</p>
          <p id="p1">Inicio ><p id="p2">Noticias</p></p>
      </center>
    <!---------------------------------------------->
    <div class="contenedor">
    <main class="noticia">
        <img src="../img/notica2.jpg" width="600px">
        <h3>Título de la Noticia</h3>
        Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.
        Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones
        <div class="widget">
          <h4>Comparte esta noticia</h4>
          <div class="footer-social-icons">
            <ul>
                <li><a href="#" target="blank"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#" target="blank"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#" target="blank"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="#" target="blank"><i class="fa fa-youtube"></i></a></li>
            </ul>
        </div>
      </div>
      </li>

    </main>
    <aside class="video">
        <h3>VÍDEOS DE INTERÉS</h3>
        <h5>Noticia del día</h5>
          <iframe width="240" height="140" src="https://www.youtube.com/embed/TgYN3ZdqUfI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          <h5>Destacadas de la Semana</h5>
          <h6>Top 1</h6>
          <iframe width="240" height="140" src="https://www.youtube.com/embed/E1K08MiEo5U" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          <h6>Top 2</h6>
          <iframe width="240" height="140" src="https://www.youtube.com/embed/flttrEdLrpk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          <h6>Top 3</h6>
          <iframe width="240" height="140" src="https://www.youtube.com/embed/flttrEdLrpk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </aside>
    </div>
    <!----------------------------------------------->
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

    <script src="./../js/slider.js"></script>
</body>

</html>
