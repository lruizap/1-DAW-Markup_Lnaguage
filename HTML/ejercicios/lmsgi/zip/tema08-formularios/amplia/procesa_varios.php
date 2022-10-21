<head>
  <meta charset="UTF-8" />
  <title>Recogida datos formulario con PHP</title>
  <style>
  code { 
    color: blue;
  }

  pre {
    margin: 0 2em;
  }

  .out {
    background-color: silver;
  }
  </style>
</head>

<body>
  <h1>
Página PHP: recibe parámetros de un formulario
</h1>
  <p> Recibe parámetros de un formulario (métodos get o post) o de un enlace (post) y los muestra. Para ello usa dos posibilidades de PHP: la función <code>print_r</code> sobre el objeto <code>REQUEST</code>, o un bucle <code>foreach</code> que recorra dicho objeto.</p>
  <section>
    <h2>Con print_r </h2>
    <p>The print_r() function is used to print human-readable information about a variable. </p>
    <pre><code> 
	&lt;?php print_r($_REQUEST); ?&gt;
	</code></pre>
    <pre class="out"><?php  print_r($_REQUEST); ?>
	</pre>
  </section> 

    <section>
    <h2>Con var_dump </h2>
    <p>
    	
<ul>
	<li>Si el valor de la variable es una cadena de texto, var_dump imprime la cadena entre dobles comillas, print_r no.</li>
	<li>print_r no imprime nada visible para false y cadenas vacías.</li>
	<li>var_dump proporciona información sobre el tamaño y tipo de datos de la variable y, en el caso de arrays y objetos, de los elementos que la componen. print_r no da información sobre el tamaño de la variable ni sobre el tipo de datos.</li>
</ul>

    </p>
    <pre><code> 
	&lt;?php var_dump($_REQUEST); ?&gt;
	</code></pre>
    <pre class="out"> <?php  var_dump($_REQUEST); ?>
	</pre>
  </section> 


  <section>
    <h2>Con bucle foreach</h2>
  
    <pre><code> 
	&lt;?php
	foreach($_REQUEST as $key=&gt;$value){
	  echo $key, ' =&gt; ', $value, &quot;&lt;br/&gt;&quot;;
	}
	?&gt;
	</code></pre>
    <pre class="out"><?php
	foreach($_REQUEST as $key=>$value){
	    echo $key, ' => ', $value, "<br/>";
	}
	?>
	</pre>
  </section>

  <section>
  	<h2>Recorremos y generamos tabla HTML</h2>
    <pre>
    <?php
	    echo "<table border='1'>";
		foreach($_REQUEST as $key=>$value){
		     echo "<tr> <th>" , $key, '</th><td> ', $value, "</td></tr>";
		}
		echo "</table>";
	?>
	</pre>


  </section>
</body>

</html>