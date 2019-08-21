<%-- 
    Document   : login
    Created on : 20/08/2019, 09:41:05 AM
    Author     : Toshiba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Página Corporativa</title>

<link href="./diseño/css/estilosLogin.css" rel="stylesheet">

</head>
<body>

	<div id="background">
		
		<figure id="contenedorLogo">
			<img src="./diseño/Imagenes/Logotipo_Azul.png">
		</figure>
	
		<div id="contenedorBoton">
			<a id="botonConocenos" href="#">CONÓCENOS</a>
		</div>	
		
		<div id="seccionFormulario">
			<div id="contenedorFormulario">
				<h3>INICIAR SESIÓN</h3>
		
				<form id="formulario" name="formulario" action="Login" method="post">		
			
                                    <input id="usuario" type="text" name="usuario" value="" placeholder="Usuario">
                                    <input id="contrasena" type="password" name="contrasena" value="" placeholder="Contraseña">
                                    <input id="botonEnviar" type="submit" value="INICIAR">
                                    
				</form>
			</div>
		</div>
	</div>
    <script type="text/javascrip" src="./funciones/validacionFormulario.js" ></script>
</body>
</html>