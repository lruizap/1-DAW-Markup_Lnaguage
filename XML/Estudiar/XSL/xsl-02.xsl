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
                    <xsl:element name="artista">

                    <!-- A la hora de seleccionar datos se puede hacer un if para hacerle cosas a los datos dependiendo del dato que sea -->

                        <xsl:if test="price&lt;8">Oferta:  </xsl:if>
                        <xsl:value-of select="price" />
                        <xsl:text> - </xsl:text>
                        <xsl:value-of select="artist" />
                    </xsl:element>

                    <nombre>
                        <xsl:value-of select="title" />
                    </nombre>
                </xsl:element>
            </xsl:for-each>

            <!--

                <xsl:for-each select="cd[price&gt;'10']">
                <xsl:sort select="price" data-type="number" order="descending" />
                <xsl:sort select="title" />
                <xsl:element name="disco">
                    <artista> <xsl:value-of select="price"/>- <xsl:value-of select="artist"/> </artista>
                    <nombre><xsl:value-of select="title"/></nombre>
                </xsl:element>
            </xsl:for-each> 
        -->

        </xsl:element>
    </xsl:template>
</xsl:stylesheet>