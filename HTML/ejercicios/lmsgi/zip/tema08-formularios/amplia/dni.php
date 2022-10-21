<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>Recogida datos DNI</title>
  <style> 
    section {
      color: #FFFFFF;
      background-color: #999;
    }
  </style>
</head>
<body>
<h1> Fichero dni.php</h1>
<p> Página HTML con código PHP embebido (necesita extensión <code>.php </code>). Se reciben los datos de dni.html  (o de un enlace) y se procesan con PHP. Capturamos los valores de las entradas del formulario en variables, y el resto es programar.</p>
<p>Esta página espera que los parámetros tengan los nombres <code>dni</code> y <code>letra</code></p>

<p>El siguiente código HTML (sombreaado) es generado desde el código PHP aloado en el servidor, y desde el cliente no es posible ver el código fuente PHP, sólo el HTML generado</p>

<section>

  
  <?php
  echo "<h2>Campos recibidos desde formulario </h2>\n";
  echo "<p>La hora es: " . date("h:i:sa") . "</p>\n";
  
  $dni=$_REQUEST["dni"];    
  $letra=strtoupper($_REQUEST["letra"]);  
  
  echo "<p> DNI: $dni</p>\n";
  echo "<p> Letra: $letra </p>\n";
  
  function validar_dni($dni, $letra){
    // $letra = substr($dni, -1);  // si dni completo..
    // $numeros = substr($dni, 0, -1);
    if ( substr("TRWAGMYFPDXBNJZSQVHLCKE", $dni%23, 1) == $letra 
         && strlen($letra) == 1 && strlen ($dni) == 8 ){
      echo "<pre> => NIF valido</pre>\n";
    }else{
      echo "<pre> => NIF no valido </pre>\n";
    }
    echo "<p><a href='".$_SERVER['HTTP_REFERER']."'>Volver Url anterior</a></p>";  
  }
   
  validar_dni($dni, $letra); // válido
  ?>
</section>

</body>
</html>
