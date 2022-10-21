<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" >
<xsl:output method="xml" encoding="utf-8" indent="yes" />
<!-- indent="yes" para que al ponerlo por consola salga tabulado -->

    <xsl:template match="/catalog">
    <!-- Buescar en / (dentro del fichero), el elemento ... -->
    <!-- 
        Acceder al elemento (/elemento)
        Acceder al atributo del elemento (/elemento@atributo)    
    -->

        <!-- Comentario en xslt -->

        <xsl:comment>Comentario creado desde xslt</xsl:comment>

        <!-- Genera elementos y texto -->
        <!-- 
            <xsl:element name="padre">
                <xsl:element name="test">
                    <xsl:text>Bingo!</xsl:text>
                </xsl:element>
            </xsl:element>
        -->

        <xsl:element name="coleccion">
            <xsl:element name="propietario">
                <!-- Cuidado con los acentos que la consola no los detecta -->
                <!-- 
                    <xsl:value-of select="owner" />
                    <xsl:text>, Pais: </xsl:text>
                    <xsl:value-of select="owner/@country" /> 
                -->

                <!-- Lo podemos poner con la función "concat" para concatenar valores y texto -->

                <xsl:value-of select="concat(owner, ' - ', owner/@country)" />

                <!-- El elemento <xsl:value-of select="" /> se usa para extraer el valor del elemento o atributo seleccionado -->

            </xsl:element>
            <xsl:element name="localiza">
                <xsl:value-of select="URL" /> <!-- no hay elemento con este valor -->
            </xsl:element>
        </xsl:element>

    </xsl:template>
</xsl:stylesheet>
