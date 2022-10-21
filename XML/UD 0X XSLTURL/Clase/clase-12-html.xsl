<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="utf-8" indent="yes"/>

    <xsl:template match="/catalog">
        <html>
            <head>
                <title>Ejemplo</title>
            </head>
            <body>
                <h1>Ejemplo transforma a HTML</h1>
                <ol>
                    <xsl:for-each select="cd">
                        <li> <xsl:value-of select="title" /> </li> 
                    </xsl:for-each>
                </ol>          
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>