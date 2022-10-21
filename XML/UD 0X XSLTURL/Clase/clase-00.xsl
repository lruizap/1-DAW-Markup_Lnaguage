<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" encoding="utf-8"/>

    <xsl:template match="/catalog">
        <xsl:comment>Generado desde xsl para ejemplo de clase</xsl:comment>

        <xsl:element name="padre">
            <xsl:element name="test">
                <xsl:text>Bingo!</xsl:text>
            </xsl:element>
        </xsl:element>

    </xsl:template>

</xsl:stylesheet>