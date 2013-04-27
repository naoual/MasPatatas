<%-- 
    Document   : GestionPerfiles
    Created on : 27-abr-2013, 18:43:34
    Author     : Juan R
--%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <!-- <base href="<%=basePath%>"> --> 
	
	<!-- Stylesheets -->
	<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet'>
	<link rel="stylesheet" href="css/style.css">

	<!-- Optimize for mobile devices -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>  
    <title> Lista de perfiles de gasto </title>
    
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
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
        
        <div>
            <label for="buscar" > <font color="#2069b4"><B> BUSCAR PERFIL DE GASTO</B></font> </label>
            <br><br>
            <fieldset>
                <label> Criterio de b&uacute;squeda </label>
                <select name="busqueda" class="round"> <option>DNI</option> 
                <option>Perfil</option> <option>Gasto</option>
            </select>
            <input name="campo" type="text" class="round" autofocus>
            <button>Buscar</button>
            </fieldset>
            
            <br><br>
      </div>
        <br><br><br> 
      <div>
          <label for="listado"><font color="#2069b4"> <B> LISTADO DE PERFILES DE GASTO </B> </font></label>
          <br>
  	<table border="1">
  		<tbody>
  		<tr>
                        <td>Perfil</td>
			<td>Gasto</td>
                        <td>&nbsp;</td>
		</tr>
                <% 
                    if((String)request.getParameter("perfil")!=null){
                %>
                <tr>
                    <td> <%= (String)request.getParameter("perfil") %> </td>
                    <td> <%= (String)request.getParameter("gasto") %> </td>
                    <td> <a href="ConsultarPerfil.jsp">Consultar</a> </td>
                    <td> <a href="EditarPerfilJsp.jsp">Editar</a> </td>
                    <td> <a href="EditarPerfilJsp.jsp">Eliminar</a> </td>
                </tr>
                <% } %>
	
  		</tbody>
  	</table>
  	<br>
        <a href="AltaPerfil.jsp">A&ntilde;adir nuevo perfil de gasto</a>
        
        </div>
  </body>
</html>

