<%-- 
    Document   : CrearSolicitud
    Created on : 27-abr-2013, 13:06:44
    Author     : Naoual Amasri
--%>
<!DOCTYPE html>
<html>
    <head>
        <title> Nueva solicitud </title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <meta charset="utf-8">
	
	
	<!-- Stylesheets -->
	<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet'>
	<link rel="stylesheet" href="css/style.css">

    </head>
    <body>
        <!-- TOP BAR -->
	<div id="top-bar">
		
		<div class="page-full-width strong em">
                    <a href="#" id="company-branding" class="fl"><img src="images/logo_DIPUTACION.jpg"/></a>
                    <div id="cabz">
                    <h1>Diputaci�n provincial de M�laga
                        <br>�rea de modernizaci�n local
                        <br>Servicio de tecnolog�as de la informaci�n</h1>
                    </div>
                    
                    <%--<a href="#" class="round button dark ic-left-arrow image-left ">Return to website</a>--%>
                        

		</div> <!-- end full-width -->	
	
	</div> <!-- end top-bar -->
        <br><br>
        <div>
            <form method="get" action="NuevaSolicitud" name="solicitud">
                
                <label for="destinatario">para</label>
                <input type="text" name="destinatario" size="62">
                <br><br>
                
                <label for="remitente">de</label>
                <input type="text" name="remitente" size="62">
                <br><br>
                
                <label for="solicitud">solicitud</label>
                <textarea name="solicitud" cols="40" rows="10"></textarea>
                <br><br>
                
                <input type="submit" class="button round blue">
                
            </form>
        </div>
        
    </body>
</html>
