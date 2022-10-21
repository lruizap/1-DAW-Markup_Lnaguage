<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" encoding="utf-8"/>

    <xsl:template match="/catalog">
        <xsl:comment>Generado desde xsl para ejemplo de clase</xsl:comment>

        <xsl:element name="coleccion">
            <propietario>
                <xsl:value-of select="owner" />
                <xsl:text>, País: </xsl:text>
                <xsl:value-of select="owner/@country" />
            </propietario>

            <xsl:for-each select="cd">
                <xsl:element name="disco">
                    <xsl:value-of select="artist"/>
                    <xsl:text> - </xsl:text>
                    <xsl:value-of select="title"/>
                </xsl:element>
            </xsl:for-each>

        </xsl:element>




    </xsl:template>

</xsl:stylesheet>