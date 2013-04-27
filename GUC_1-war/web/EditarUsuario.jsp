<%-- 
    Document   : EditarUsuario
    Created on : 27-abr-2013, 19:57:59
    Author     : Juan R
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title> Editar Perfil De Gasto </title>
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
        <form method="get" action="AltaPerfil" name="datos">
            Perfil <br>
            <input name="idperfil" type="text">
            <br><br>
            
            Gasto <br>
            <input name="gasto" type="text">
            <br><br>
           
            
        <button>Enviar</button></form>
    </body>
</html>

