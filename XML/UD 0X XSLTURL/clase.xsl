<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" indent="yes" encoding="UTF-8" />

    <xsl:template match="catalog">

        <xsl:comment>Generado desde xsl para ejemplo de clase</xsl:comment>

        <xsl:element name="coleccion">

            <xsl:attribute name="pais">
                <xsl:value-of select="owner/@country" />
            </xsl:attribute>

            <!-- 
            <xsl:element name="test">
                <xsl:text>Bingo!</xsl:text>
            </xsl:element> 
        -->

            <propietario>
                <xsl:value-of select="owner" />
                <xsl:text>, País: </xsl:text>
                <xsl:value-of select="owner/@country" />
            </propietario>

            <!-- &lt; < / &gt;  [year&lt;'1983'] predicado para filtrar-->
            <xsl:for-each select="cd[year&lt;1986]">    
                <xsl:sort select="price" order="descending" data-type="number" />
                <xsl:sort select="title" order="ascending" />
                <xsl:element name="disco">

                    <!-- Atributo forma A -->

                    <xsl:attribute name="fecha">
                        <xsl:value-of select="year" />
                    </xsl:attribute>

                    <!-- <artista><xsl:value-of select="year"/>- <xsl:value-of select="artist"/></artista> -->

                    <!--    correcto 
                    <xsl:element name="artista">
                        <xsl:value-of select="year" />
                        <xsl:text> - </xsl:text>
                        <xsl:value-of select="artirst" />
                    </xsl:element>
                -->

                    <xsl:element name="artista">

                        <xsl:choose>
                            <xsl:when test="price&lt;8">
                                <xsl:text>¡Oferta!</xsl:text>
                            </xsl:when>
                            <xsl:when test="price&lt;10">
                                <xsl:text>¡Buen Precio!</xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:text>¡Novedad!</xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>

                        <!-- <xsl:if test="price&lt;8"><xsl:text>¡Oferta! :</xsl:text></xsl:if> if el precio es menor que 8-->

                        <!-- <xsl:text>&#10;</xsl:text> salto de línea -->
                        <!-- <xsl:text>&#xa;</xsl:text> salto de línea -->

                        <xsl:value-of select="price" />
                        <xsl:text> - </xsl:text>
                        <xsl:value-of select="artist" />


                        <xsl:value-of select="concat(price, ' - ' , artist)" />

                    </xsl:element>

                    <!-- Atributo con template -->

                    <nombre discografica="{company}">
                        <xsl:value-of select="title" />
                    </nombre>

                    <xsl:if test="band">
                        <xsl:element name="musicos">
                        <xsl:for-each select="band/musician">
                        <xsl:text>&#xa;</xsl:text>
                            <xsl:value-of select="position()" />
                            <xsl:text>.- </xsl:text>
                            <xsl:value-of select="."/>
                            <xsl:if test="position()!=last()">
                                <xsl:text> # </xsl:text>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:element>
                    </xsl:if>

                </xsl:element>
            </xsl:for-each>

        </xsl:element>

    </xsl:template>

</xsl:stylesheet>