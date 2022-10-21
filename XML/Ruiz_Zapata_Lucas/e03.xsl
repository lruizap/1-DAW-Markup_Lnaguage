<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf-8" />

    <xsl:template match="/mayorista">

        <xsl:text>Viaje; POI; Etiquetas&#10;</xsl:text>
        <xsl:text>=====================&#10;</xsl:text>
        <xsl:for-each select="ruta/destacados/poi">
            <xsl:value-of select="concat(../../destino/nombre,'; ',position(),'.- ', nombre,'; ')" />
            <xsl:for-each select="etiqueta">
                <xsl:sort select="." order="ascending" />
                <xsl:value-of select="." />

                <xsl:if test="position()!=last()">
                    <xsl:text>, </xsl:text>
                </xsl:if>

            </xsl:for-each>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>