<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "java.util.Iterator"%>
<%@ page import= "java.util.List"%>

<!DOCTYPE html>
<html >
<head>
  <meta charset="utf-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <title>Nuevo Pedido</title> 
    
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen"> 
    <script src="js/jquery-2.1.1.min.js"></script>
  <script src="js/bootstrap.js"></script>
  <link rel="stylesheet" href="css/bootstrap.css">
    
</head>




<body>

  <nav class="navbar navbar-inverse" role="navigation">

    <div class="navbar-header">
    <a class="navbar-brand" href="#">Logotipo</a>
  </div>
 
  <div class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav">
      <li class="active"><a href="pedido_alta.html">Pedidos</a></li>
    </ul>
 
    <ul class="nav navbar-nav navbar-right">
      <ul class="nav navbar-nav">
      <li class="active"><a href="login.html">Cerrar Sesion</a></li>

    </ul>
 

  </nav>
  <div class="container">

    

      <h1>Nuevo Pedido</h1>
      <br>
      
      <div class="row">
      <div class="col-md-3">
        <label  for="prenda">Prenda</label>
        <select class="form-control" id="Prenda" name="prenda">
            <option value="Remera">Remera</option>
            <option value="Pantalon">Pantalon</option>
            <option value="Short">Short</option>
            <option value="Bermuda">Bermuda</option>
            <option value="Camisa">Camisa</option>
            <option value="Medias">Medias</option>
        </select>
      </div>


       <div class="col-md-3">
        <label for="Color">Color</label>
        <select class="form-control" id="Color" name="Color">
           <option value="Verde">Verde Militar</option>
            <option value="Uva">Uva</option>
            <option value="Bordo">Bordo</option>
            <option value="Negro">Negro</option>
            <option value="Gris Oscuro">Gris Oscuro</option>
        </select>
      </div>


      <div class="col-md-3">
        <label for="Talle">Talle</label>
        <select class="form-control" id="Talle" name="Talle">
           <option value="Chico">Chico</option>
            <option value="Media">Media</option>
            <option value="Grande">Grande</option>
            <option value="Extra Grande">Extra Grande</option>
        </select>
      </div>


      <div class="col-md-3">
        <label for="Cantidad">Cantidad</label>
        <input class="form-control" id="Cantidad" name="Cantidad" onkeypress="return valida(event)" placeholder='Cantidad de Prendas'>
      </div>
    </div>

    <br>    
    <div class="row">
    <div class="col-md-12">
      
      <button id="agregar" class="btn btn-primary">Agregar</button>
    <button id="borrar" class="btn btn-primary">Eliminar</button>
    <button id="borrarTodo" class="btn btn-primary">Vaciar Tabla</button>
    <button id="enviar" class="btn btn-primary">Enviar Pedido</button>
     </div>
  </div>
  

   
  <br>

<div class="row">
<table id="tabla" class="table table-hover">
    <thead>
      <tr>
        <td>Prenda</td>
        <td>Color</td>
        <td>Talle</td>
        <td>Cantidad</td>
      </tr>
    </thead>
  </table>
  </div>
  
  
    
  </div>
<script>
function valida(e){
    tecla = (document.all) ? e.keyCode : e.which;

    //Tecla de retroceso para borrar, siempre la permite
    if (tecla==8){
        return true;
    }
        
    // Patron de entrada, en este caso solo acepta numeros
    patron =/[0-9]/;
    tecla_final = String.fromCharCode(tecla);
    return patron.test(tecla_final);
}
</script>
  <script>
  $(document).ready(function(){
    $('#agregar').click(function(){
            var prenda= document.getElementById("Prenda").value;
            var talle= document.getElementById("Talle").value;
            var cantidad=document.getElementById("Cantidad").value;
            var color=document.getElementById("Color").value;
      // Obtenemos el numero de filas (td) que tiene la primera columna

            if (cantidad!=''){
              

            // (tr) del id "tabla"
            var tds=$("#tabla tr:first td").length;

            // Obtenemos el total de columnas (tr) del id "tabla"
            var trs=$("#tabla tr").length;
            var nuevaFila="<tr>";
            nuevaFila+="<td>"+prenda+"</td>";
            nuevaFila+="<td>"+color+"</td>";
            nuevaFila+="<td>"+talle+"</td>";
            nuevaFila+="<td>"+cantidad+"</td>";
           
          
            // Añadimos una columna con el numero total de columnas.
            // Añadimos uno al total, ya que cuando cargamos los valores para la
            // columna, todavia no esta añadida
            //nuevaFila+="<td>"+(trs+1)+" columnas"; esto es por si queremos agregar una nueva columna
            nuevaFila+="</tr>";
            $("#tabla").append(nuevaFila);
             }else{
             alert("Debe llenar todos los campos")
           }
    });

});
$(document).ready(function(){
  $('#borrar').click(function(){
       var trs=$("#tabla tr").length;
            if(trs>1)
            {
                // Eliminamos la ultima columna
                $("#tabla tr:last").remove();
            }
  });
});

    $(document).ready(function(){
  $('#borrarTodo').click(function(){
     var trs=$("#tabla tr").length;
      for (x=1;x<trs;x++) {        
            
                // Eliminamos la ultima columna
                $("#tabla tr:last").remove();
            
          }

  });

});

     $(document).ready(function(){
  $('#enviar').click(function(){
    
 });

});
  
</script>



 
</body>
</html>
