<%-- 
    Document   : index
    Created on : 20/08/2019, 09:41:33 AM
    Author     : Toshiba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="control.Consultas"%>

<%
    HttpSession sesion = request.getSession();
    String usuarioValidado = (String) sesion.getAttribute("usuario");
    
    if (usuarioValidado == null) {
        response.sendRedirect("login.jsp");
    }else{
%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="diseño/css/estilosHeader.css">
        <link rel="stylesheet" href="diseño/css/estilosFooter.css">
        <link rel="stylesheet" href="diseño/css/estilosIndex.css">
        <link rel="stylesheet" href="diseño/css/estilosBotonMensaje.css">
        <title>P&aacute;gina Corporativa</title>
    </head>
    <body>
        <header>
            <figure id="contenedorLogo">
                <a href="index.jsp">
                    <img id="logo" src="diseño/Imagenes/Logotipo_Blanco_Menu.png">
                </a>
            </figure>
            <div id="contenedorMenu">
                <ul id="listaItems">
                    <li class="itemMenu">
                        <a class="item" href="index.jsp">INICIO</a>
                    </li>
                    <li class="itemMenu">
                        <a class="item" href="aplicaciones.jsp">APLICACIONES TI</a>
                    </li>
                    <li class="itemMenu">
                        <a class="item" href="Logout">CERRAR SESIÓN</a>
                    </li>
                </ul>
            </div>
        </header>

        <div id="vistaPrincipal">

            <div class="boton"><a href=""><img src="diseño/Imagenes/Boton_1.png"></a></div>
            <div class="boton"><a href=""><img src="diseño/Imagenes/Boton_1.png"></a></div>
            <div class="boton"><a href=""><img src="diseño/Imagenes/Boton_2.png"></a></div>

            <div class="contenidoPrincipal" id="contenido">
                    <div class="seccionTitulo" id="titulo">
                            <h2 id="tituloSeccion">TORNEO DE FUTBOL</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat accusamus tempora ex sit adipisci aliquid tempore ut. Fugiat laborum sequi quidem omnis facere, ipsum alias, dolore rem iure sint quia.</p>
                    </div>
                    <figure class="contenedorImagenPrincipal">
                            <img class= "imagenPrincipal" src="diseño/Imagenes/Foto_1.png">
                    </figure>
            </div>

            <div class="contenidoPrincipal" id="contenidoSecundario">
                    <iframe id="video" width="560" height="315" src="https://www.youtube.com/embed/kDXEjfezPXo" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <div id="mensajeVideo">
                            <h2 id="tituloVideo">Unidades de Ingreso</h2>
                    </div>
            </div>
        </div>

        <div id="seccionMensaje">
            <button id="mensaje">Mensajes / Mail</button>
        </div>

        <footer>
            <small>©2019 Grupo Continental</small>
        </footer>
    </body>
</html>
<%}%>