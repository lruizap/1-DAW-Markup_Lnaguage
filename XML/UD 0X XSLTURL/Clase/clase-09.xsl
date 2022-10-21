<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" encoding="utf-8" />


    <xsl:template match="/catalog">
        <xsl:comment>Generado desde xsl para ejemplo de clase</xsl:comment>

        <xsl:element name="coleccion">
            <xsl:attribute name="pais">
                <xsl:value-of select="owner/@country"/>
            </xsl:attribute>
            <propietario>
                <xsl:value-of select="owner" />
                <xsl:text>, País: </xsl:text>
                <xsl:value-of select="owner/@country" />
            </propietario>

            <xsl:for-each select="cd[year&lt;1986]">
                <xsl:sort select="price" data-type="number" order="descending" />
                <xsl:sort select="title" />
                <xsl:element name="disco">
                 <!-- atributo forma A  -->
                  <xsl:attribute name="fecha">
                      <xsl:value-of select="year" />
                  </xsl:attribute>
                    <xsl:element name="numero">
                        <xsl:value-of select="position()"/>
                    </xsl:element>
                    <xsl:element name="artista">
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
                    <!-- atributo con template forma C -->
                    <nombre  discografica="{company}">
                        <xsl:value-of select="title" />
                    </nombre>

                    <xsl:element name="musicos">
                        <xsl:for-each select="band/musician">
                            <xsl:value-of select="position()" />
                            <xsl:text>.- </xsl:text>
                            <xsl:value-of select="." />
                            <xsl:if test="position()!=last()">
                                <xsl:text> # </xsl:text>
                            </xsl:if>
                            
                        </xsl:for-each>
                    </xsl:element>


                </xsl:element>
            </xsl:for-each>

        </xsl:element>


    </xsl:template>

</xsl:stylesheet>