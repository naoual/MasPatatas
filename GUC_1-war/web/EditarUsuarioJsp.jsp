<%-- 
    Document   : EditarUsuarioJsp
    Created on : 23-abr-2013, 19:07:08
    Author     : Naoual Amasri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title> Editar Usuario </title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
	
	<!-- Stylesheets -->
	<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet'>
	<link rel="stylesheet" href="css/style.css">

	<!-- Optimize for mobile devices -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>  
    </head>
    <body>
        <!-- TOP BAR -->
	<div id="top-bar">
		
		<div class="page-full-width strong em">
                    <a href="#" id="company-branding" class="fl"><img src="images/logo_DIPUTACION.jpg" alt="Blue Hosting" /></a>
                    <div id="cabz">
                    <h1>Diputación provincial de Málaga
                        <br>Área de modernización local
                        <br>Servicio de tecnologías de la información</h1>
                    </div>
                    
                    <%--<a href="#" class="round button dark ic-left-arrow image-left ">Return to website</a>--%>
                        

		</div> <!-- end full-width -->	
	
	</div> <!-- end top-bar -->
        <br><br>
        <form method="get" action="AltaUsuario" name="datos">
            Nombre <br>
            <input name="nombre" type="text">
            <input name ="apellido1" type="text">
            <input name="apellido2" type="text">
            <br><br>
            
            Dni <br>
            <input name="dni" type="text">
            <br><br>
           
            Correo electr&oacute;nico <br>
            <input name="email" type="text">
            <br><br>
            
            Direcci&oacute;n <br>
            <input name="direccion" type="text">
            <br><br>
            
            Tel&eacute;fono de contacto <br>
            <input name="telefono" type="text">
            <br><br>
                
            Publicable <br>
            <input name="publicable" value="si" type="radio"> S&iacute;
            <input name="publicable" value="no" type="radio"> No
            <br><br>
            
            Rol <br>
            <select name="rol">
                <option> Administrador </option>
                <option> Controlador </option>
                <option> Jefe de servicio </option>
                <option> Usuario </option>
            </select>
            <br><br>
            
            Ayutamiento
            <select name="ayuntamiento"><option>none</option></select>
            <br><br>
            
        <button>Enviar</button></form>
    </body>
</html>
