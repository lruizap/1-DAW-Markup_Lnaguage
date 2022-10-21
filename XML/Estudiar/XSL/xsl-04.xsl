<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="utf-8" indent="yes" />
    <xsl:template match="/catalog">
        <xsl:text>&#xa;</xsl:text>
        <xsl:element name="coleccion">

            <!-- Correcto para que el pluggin te ayude -->

            <xsl:for-each select="cd[year='1985']">
                <xsl:sort select="price" data-type="number" order="descending" />
                <xsl:sort select="title" />
                <xsl:element name="disco">
                    <xsl:attribute name="company">
                        <xsl:value-of select="company" />
                    </xsl:attribute>
                    <xsl:element name="numero">
                        <xsl:value-of select="position()" />
                    </xsl:element>
                    <xsl:element name="ArtistaPrecio">
                        <xsl:value-of select="concat(price, ' - ', artist)" />
                    </xsl:element>
                    <titulo>
                        <xsl:value-of select="title" />
                    </titulo>
                </xsl:element>

                <!-- Atributo con template -->

                <nombre pais="{country}">
                    <xsl:value-of select="title" />
                </nombre>

                <!-- Un for dentro de otro for. Este recorre un elemento si existe e incluyendo los datos de este -->

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

            </xsl:for-each>
        </xsl:element>
        <xsl:text>&#xa;</xsl:text>
    </xsl:template>
</xsl:stylesheet>