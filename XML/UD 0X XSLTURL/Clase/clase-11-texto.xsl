<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf-8" />

    <xsl:template match="/catalog">

        <xsl:text>Título,Autor &#10;</xsl:text>
        <xsl:for-each select="cd[year&gt;1992]">
            <xsl:value-of select="title"/>
            <xsl:text>,</xsl:text>
            <xsl:value-of select="artist"></xsl:value-of>
            <xsl:text>&#10;</xsl:text>

        </xsl:for-each>

    </xsl:template>

</xsl:stylesheet>