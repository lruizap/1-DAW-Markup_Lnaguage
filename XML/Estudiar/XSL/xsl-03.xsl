<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="utf-8" indent="yes" />
    <xsl:template match="/catalog">

        <xsl:element name="coleccion">

            <!-- Correcto para que el pluggin te ayude -->

            <xsl:for-each select="cd">
                <xsl:sort select="price" data-type="number" order="descending" />
                <xsl:sort select="title" />
                <xsl:element name="disco">
                    <xsl:attribute name="company">
                        <xsl:value-of select="company" />
                    </xsl:attribute>
                    <!-- 
                        Para crear un atributo con valor tomados de la instancia de datos se crea el atributo después del elemento
                        y después se indica el nombre, y el valro de este.
                    -->
                    <xsl:element name="numero">
                        <xsl:value-of select="position()" />
                        <!-- Funciones Auxiliares:
                            last() => ultima posición
                            position() => para indicar la posición del elemento en la lista. Sirve para numerar 
                            test() => comprobar si un elemento o atributo existe
                            <xsl:output method="text"/> => si la salida es texto
                            
                        -->
                    </xsl:element>
                    <xsl:element name="artista">

                        <!-- 
                            choose = switch
                            when = case
                            otherwise = default
                        -->

                        <xsl:choose>
                            <xsl:when test="price&lt;8">¡Oferta! </xsl:when>
                            <xsl:when test="price&lt;10">Buen precio! </xsl:when>
                            <xsl:otherwise>¡Novedad! </xsl:otherwise>
                        </xsl:choose>

                        <!-- <xsl:value-of select="price" />
                        <xsl:text> - </xsl:text>
                        <xsl:value-of select="artist" /> -->

                        <xsl:value-of select="concat(price, ' - ', artist)" />

                    </xsl:element>

                    <nombre>
                        <xsl:value-of select="title" />
                    </nombre>
                </xsl:element>
            </xsl:for-each>

        </xsl:element>
    </xsl:template>
</xsl:stylesheet>