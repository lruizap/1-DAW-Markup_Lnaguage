<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="utf-8" indent="yes" />
    <!-- indent="yes" para que al ponerlo por consola salga tabulado -->

    <xsl:template match="/catalog">

        <!-- Buescar en / (dentro del fichero), el elemento ... -->
        <!-- 
        Acceder al elemento (/elemento)
        Acceder al atributo del elemento (/elemento@atributo)    
    -->

        <!-- Comentario en xslt -->

        <!-- <xsl:comment>Comentario creado desde xslt</xsl:comment> -->

        <!-- Genera elementos y texto -->
        <!-- 
            <xsl:element name="padre">
                <xsl:element name="test">
                    <xsl:text>Bingo!</xsl:text>
                </xsl:element>
            </xsl:element>
        -->

        <xsl:element name="coleccion">

            <!-- Los elementos que vamos a transformar los vamos a colocar dentro del elemento colección para que exista un elemento raíz -->

            <!-- Vamos a utilizar el elemento <xsl:for-each> que será un bucle para recorrer los elementos del xml -->

            <xsl:for-each select="cd[year&gt;'1990']">

                <!-- Filtros :
                    
                    cd de 1987 ==> cd[year='1987']
                    cd anteriores a 1987 ==> cd[year&lt;'1987']
                    cd posteriores a 1987 ==> cd[year&gt;'1987']

                -->

                <!-- siendo "cd" la etiqueta que vamos a seleccionar para extraer la información -->

                <!-- para ordenar, se añade el elemento <xsl:sort select="" /> dentro del <xsl:for-each> -->

                <xsl:sort select="price" order="descending" data-type="number" />

                <!-- 
                    ascending => alfabético
                    descending => alfabético al revés   
                    
                    ● Otros atributos
                        ○ data-type="text|number"
                        ○ order="ascending|descending"
                    ● Si desea ordenar por un segundo criterio se añade un segundo elemento sort

                -->

                <xsl:sort select="title" order="ascending" data-type="text" />

                <!-- 
                    ● Podemos filtrar los elementos que se recorren en el bucle xsl:for-each usando predicados XPATH en el atributo select
                    ● Operadores válidos son:
                        ○ = (equal)
                        ○ != (not equal)
                        ○ &lt; less than <
                        ○ &gt; greater than >
                    ● Ejemplo:
                    <xsl:for-each select="cd[artist='Bob Dylan']"> 
                -->


                <xsl:element name="disco">

                    <!-- 
                    <xsl:value-of select="artist"/>
                    <xsl:text> - </xsl:text>
                    <xsl:value-of select="title"/> 
                    -->

                    <!-- <xsl:text>&#xa;</xsl:text> salto de línea -->
                    <xsl:value-of select="concat(artist, ' - ',title)" />
                    <!-- <xsl:text>&#10;</xsl:text> salto de línea -->

                </xsl:element>
            </xsl:for-each>

        </xsl:element>
    </xsl:template>
</xsl:stylesheet>