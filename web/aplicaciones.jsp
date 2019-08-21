<%-- 
    Document   : aplicaciones
    Created on : 20/08/2019, 09:41:55 AM
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
<link rel="stylesheet" href="./diseño/css/estilosAplicaciones.css">
<link rel="stylesheet" href="./diseño/css/estilosBotonMensaje.css">
<link rel="stylesheet" href="diseño/css/estilosAplicaciones.css" type="text/css"/>


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
		<div class="itemPrincipalInformacion">
			
			<a href="informacion.jsp" class="estiloItem itemInicio"
			onmouseover= "ocultarIcono();" onmouseout="mostrarIcono();">
				<img src="diseño/Imagenes/Icono_Información.png">INFORMACIÓN</a>
			
			<a href="informacion.jsp" class="estiloIte itemSecundario">
				<img src="diseño/Imagenes/Icono_Información_Blanco.png">INFORMACIÓN</a>
		</div>
		
		<div class="itemPrincipalAccion">
			<a href="accion.jsp" class="estiloItem itemInicio">
				<img src="diseño/Imagenes/Icono_Acción.png">ACCIÓN</a>
			<a href="accion.jsp" class="estiloItem itemSecundario">
				<img src="diseño/Imagenes/Icono_Acción_Blanco.png">ACCIÓN</a>
		</div>	
	</div>
	
	<div id="seccionMensaje">
		<button id="mensaje" onclick="bienvenido();">Mensaje / Mail</button>
	</div>

	<footer>
		<small>©2019GrupoContinental</small>
	</footer>	

	<script src="./js/aplicaciones.js"></script>

</body>
</html>

<%}%>