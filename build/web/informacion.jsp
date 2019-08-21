<%-- 
    Document   : informacion
    Created on : 20/08/2019, 09:42:09 AM
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
<link rel="stylesheet" href="./diseño/css/estilosInformacion.css">
<link rel="stylesheet" href="./diseño/css/estilosBotonMensaje.css">

<script src="./js/aplicaciones.js" ></script>

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
			<a href="#" class="estiloItem"><img src="diseño/Imagenes/Icono_Conti-Go.png">Conti Go</a>
		</div>

		<div class="itemPrincipal">
			<a href="https://kpionline.bitam.com/spanish/client_login/dca.php" class="estiloItem"><img src="diseño/Imagenes/Icono_Bussiness-Intelligence.png">Bussiness Intelligence</a>
		</div>

		<div class="itemPrincipal">
			<a href="http://www.grupocontinental.com.mx/ContiGoGCA/index.jsp" class="estiloItem"><img src="diseño/Imagenes/Icono_Código-de-Ética.png">Politicas y Procesos</a>
		</div>
	
		<div class="itemPrincipal">
			<a href="http://www.grupocontinental.com.mx/Directorio/index.jsp" class="estiloItem"><img src="diseño/Imagenes/Icono_DirectorioCorporativo.png">Directorio Corporativo</a>
		</div>
		
		<div class="itemPrincipal">
			<a href="#" class="estiloItem"><img src="diseño/Imagenes/Icono_Publivacantes.png">Publivacantes</a>
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