<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8" />
	<title>Recogida datos formulario</title>
</head>
<body>
<h1> Fichero ejemplo-formulario.php</h1>
<p> Es una página HTML con código PHP embebido, necesita extensión <code>.php</code>. Se reciben los datos de ejemplo-formulario.html y se procesan con PHP. Capturamos los valores de las entradas del formulario en variables, y el resto es programar.</p>

<p>Observe que los valores de los intereses se generan con un bucle al ser un array </p>

<h2>Campos recibidos desde formulario </h2>
<?php
$name=$_REQUEST["username"];    // $name=$_GET["username"];
$pass=$_REQUEST["contrasena"];  // $pass=$_GET["contrasena"];
$repite=$_REQUEST["repite"];
$intereses=$_REQUEST["intereses"];
echo "<p> Username: $name</p>";
echo "<p> Clave: $pass </p>";
echo "<p>Repite: $repite </p>";
echo "<p>Intereses: $intereses </p>";
echo "<p>Intereses: ";
print_r($intereses) ;
echo " </p>";

if ( strlen($pass) <8 )
  echo "<p><code> Clave demasido simple: longitud menor que 8...></p>";
else
 echo "<p> Clave supera prueba longitud</p>";  

?>	

<h2>Lista opciones seleccionadas en chekbox (generadas desde php con un bucle)</h2>

<?php
  // $intereses = $_REQUEST['intereses'];
  // $n = count ($intereses);
  //for ($i=0; $i<$n; $i++)
      //print ("$intereses[$i]<BR>\n");	
  echo "<p>Intereses</p><ul>";
   foreach ($_REQUEST['intereses'] as $interes)
    print ("<li> $interes</li> \n");
  echo "</ul>";
?>

</body>
</html>
