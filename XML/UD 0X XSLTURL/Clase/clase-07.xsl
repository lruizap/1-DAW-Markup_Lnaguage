<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" encoding="utf-8" />


    <xsl:template match="/catalog">
        <xsl:comment>Generado desde xsl para ejemplo de clase</xsl:comment>

        <xsl:element name="coleccion">
            <propietario>
                <xsl:value-of select="owner" />
                <xsl:text>, País: </xsl:text>
                <xsl:value-of select="owner/@country" />
            </propietario>

            <xsl:for-each select="cd[year&gt;1992]">
                <xsl:sort select="price" data-type="number" order="descending" />
                <xsl:sort select="title" />
                <xsl:element name="disco">
                    <xsl:element name="numero">
                        <xsl:value-of select="position()" />
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

                    <nombre>
                        <xsl:value-of select="title" />
                    </nombre>
                </xsl:element>
            </xsl:for-each>

        </xsl:element>


    </xsl:template>

</xsl:stylesheet>