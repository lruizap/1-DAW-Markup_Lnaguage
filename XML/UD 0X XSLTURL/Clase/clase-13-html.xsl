<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="utf-8" 
                indent="yes" 
                method="html" 
                omit-xml-declaration="yes"/>

    <xsl:template match="/catalog">        
        <html>
            <head>
                <meta charset="utf-8" />
                <title>Ejemplo</title>
            </head>
            <body>
                <h1>Ejemplo transforma a HTML</h1>
                <table border="1">
                    <tr><th scope="col">Título</th><th scope="col">Artista</th>
                    <th>Precio</th></tr>
                    <xsl:for-each select="cd[price&lt;8]">
                        <tr> 
                            <td> <xsl:value-of select="title" />  </td>
                            <td> <xsl:value-of select="artist" />  </td> 
                            <td> <xsl:value-of select="price" />  </td>
                        </tr> 
                    </xsl:for-each>
                </table>

                        
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>