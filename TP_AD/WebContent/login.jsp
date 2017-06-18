<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html >
<head>
      <meta charset="utf-8"> 
	  <link rel="stylesheet" href="css/login.css">
      <script src="js/jquery-2.1.1.min.js"></script>
</head>
<body>
<div class="login">
	 <img src="imagenes/logo.png" width=300 HEIGHT=100 BORDER=0 ALT="logo"> 
    <h1>Nombre empresa</h1>
    
    <form method="post">
    	<input type="text" id="usuario" name="usuario" placeholder="Usuario" required="required" />
        <input type="password" id="contrasena" name="contrasena" placeholder="Contraseña" required="required" />
        <button type="submit" id="ingresar" class="btn btn-primary btn-block btn-large">Ingresar</button>
       
    </form>
</div>

<script>

$(document).ready(function(){
  $('#ingresar').click(function(){
    var usuario= document.getElementById('usuario').value;
    var contra= document.getElementById('contrasena').value;
  

    window.location.href = "pedido_alta.jsp";
    
  });

});
</script>
</body>
</html>