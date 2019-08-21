<%-- 
    Document   : accion
    Created on : 20/08/2019, 09:42:23 AM
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
<title>Página Corporativa</title>

<link rel="stylesheet" href="./diseño/css/estilosHeader.css">
<link rel="stylesheet" href="./diseño/css/estilosFooter.css">
<link rel="stylesheet" href="./diseño/css/estilosAccion.css">
<link rel="stylesheet" href="./diseño/css/estilosBotonMensaje.css">

</head>
<body>

	<header>
		<figure id="contenedorLogo">
			<a href="index.jsp"><img id="logo" src="./diseño/Imagenes/Logotipo_Blanco_Menu.png"> </a>
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
					<a class="item" href="">CERRAR SESIÓN</a>
				</li>
			</ul>
		</div>
	</header>

	<div id="contenedorPrincipal">
		<div class="itemPrincipal">
			<a href="aplicaciones.jsp" class="estiloItem"><img src="diseño/Imagenes/Icono_Información.png">INFORMACIÓN</a>
		</div>
		
		<div class="itemPrincipal">
			<a href="https://tsfetoyota.ddns.net/index.php/login" class="estiloItem"><img src="diseño/Imagenes/icono_OwnCloud.png">OwnCloud</a>
		</div>

		<div class="itemPrincipal">
			<a href="https://continentalautomotriz.freshdesk.com/support/home" class="estiloItem"><img src="diseño/Imagenes/Icono_Mesa-de-ayuda.png">Mesa de ayuda</a>
		</div>
		
		<div class="itemPrincipal">
			<a href="#" class="estiloItem"><img src="diseño/Imagenes/Icono_Diseño-Templates.png">Diseño Templates</a>
		</div>
	
		<div class="itemPrincipal">
			<a href="http://grupocontinental.com.mx/ComprasGCA/login.jsp" class="estiloItem"><img src="diseño/Imagenes/Icono_Sistema-de-Compras.png">Sistema de Compras</a>
		</div>
		
		<div class="itemPrincipal">
			<a href="#" class="estiloItem"><img src="diseño/Imagenes/Icono_Video-de-llamada.png">Videollamadas</a>
		</div>
	</div>

	<div id="seccionMensaje">
			<button id="mensaje">Mensaje / Mail</button>
	</div>

	<footer>
		<small>©2019GrupoContinental</small>
	</footer>	

</body>
</html>
<%}%>