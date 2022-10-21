<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>Recogida datos formulario</title>
</head>
<body>
<h1> Fichero form-02.php</h1>
<p> Es una página HTML con código PHP embebido, necesita extensión <code>.php</code>. Se reciben los datos de form-02.html y se procesan con PHP. Capturamos los valores de las entradas del formulario en variables, y el resto es programar.</p>

<p>El siguiente código es generado desde PHP, aunque desde el cliente nada lo indica, ya que al ver el código fuente sólo se observa  el HTML generado</p>

<p>Observe que los valores de los intereses se generan con un bucle..  </p>

<h2>Campos recibidos desde formulario </h2>
<?php
$name=$_REQUEST["username"];    // $name=$_GET["username"];
$pass=$_REQUEST["contrasena"];  // $pass=$_GET["contrasena"];
$repite=$_REQUEST["repite"];

echo "<p> Username: $name</p>";
echo "<p> Clave: $pass </p>";
echo "<p>Repite: $repite </p>";

?>	

<h2>Lista opciones seleccionadas en chekbox (generadas desde php con un bucle)</h2>

<?php
  // $intereses = $_REQUEST['intereses'];
  // $n = count ($intereses);
  //for ($i=0; $i<$n; $i++)
      //print ("$intereses[$i]<BR>\n");	
  echo "<ul>";
   foreach ($_REQUEST['intereses'] as $interes)
    print ("<li> $interes</li> \n");
  echo "</ul>";
?>

</body>
</html>
