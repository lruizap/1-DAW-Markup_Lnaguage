<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/catalog">

    <html>
        <head>
            <meta charset="utf-8"/>
            <title>Ejemplo</title>
        </head>
        <body>
            <h1>Ejemplo transforma HTML</h1>

            <table border="1">
                <tr>
                    <th scope="col">Título</th>
                    <th scope="col">Artista</th>
                    <th scope="col">Precio</th>
                </tr>
                <xsl:for-each select="cd[price&lt;8
                ]">
                    <tr>
                        <td><xsl:value-of select="title" /></td>
                        <td><xsl:value-of select="artist"/></td>
                        <td><xsl:value-of select="price"/></td>
                    </tr>
                </xsl:for-each>
            </table>

            <!-- <ol>
                <xsl:for-each select="cd">
                    <li> <xsl:value-of select="title" /> </li>
                </xsl:for-each>
            </ol> -->

        </body>
    </html>

    <!-- <xsl:text>Título, Autor&#10;</xsl:text>
        <xsl:for-each select="cd">
            <xsl:value-of select="title"/>
            <xsl:text> - </xsl:text>
            <xsl:value-of select="artist"/>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each> -->

    </xsl:template>

</xsl:stylesheet>