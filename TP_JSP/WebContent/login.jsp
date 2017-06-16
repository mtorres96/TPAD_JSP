<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>

<html>
<head>
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <!-- Title Page -->  
    <title>Login</title>
 
    <!-- CSS -->
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/styles.css"> 
    </head>
    <script type="text/javascript">
    	function validar(){
    		var name= document.getElementById("name").value;
    		var pass = document.getElementById("password").value;
    		if(name=="" || pass==""){
    			alert("Debe completar los campos");
        		
    		}else{
    			window.open("Controlador?action=bienvenida&name="+String(name));
    			 
    		}
    	} 
    	
    	</script>

<body>
    <div id="container">
        <form>
            <IMG SRC=".\archivos\logo.png" WIDTH=500 HEIGHT=210 BORDER=0 ALT="logo">
	    <br>	
            <!-- Username -->
            <label for="name">Username: </label>
            <input type="text" id="name" >
	    <br>
            <!-- Password -->
            <label for="username">Password: </label>
            <input type="password" id="password" >
            
	    <br>
	   <!-- <p><a href="#">Forgot your password?</a> -->
            <div id="lower">
               <!--<input type="checkbox"><label class="check" for="checkbox">Keep me logged in</label> -->
                <!-- Submit Button -->
                <input type="submit" id="btn" value="Login" onclick=validar() >
               
            </div>
        </form>       
    </div>
</body>
</html>

