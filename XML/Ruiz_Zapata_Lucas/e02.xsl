<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" indent="yes" encoding="UTF-8" />

    <xsl:template match="/mayorista">

        <xsl:comment>
            <xsl:value-of select="concat('Agencia: ',nombre)" />
        </xsl:comment>

        <xsl:element name="ofertas">

            <xsl:for-each select="ruta">
                <xsl:sort select="destino/precioEstimado" data-type="number" order="descending" />

                <xsl:element name="oferta">

                    <xsl:element name="destino">
                        <xsl:attribute name="tipo">
                            <xsl:value-of select="destino/tipo" />
                        </xsl:attribute>
                        <xsl:value-of select="concat(destino/nombre, '. Del ',fechaIni, ' al ', fechaFin)" />
                    </xsl:element>

                    <xsl:element name="id">
                        <xsl:value-of select="@codigo" />
                    </xsl:element>

                    <xsl:element name="precio">
                        <xsl:attribute name="moneda">

                            <xsl:choose>
                                <xsl:when test="destino/precioEstimado/@moneda='E'">

                                    <xsl:text>euro</xsl:text>

                                </xsl:when>

                                <xsl:when test="destino/precioEstimado/@moneda='L'">

                                    <xsl:text>libra</xsl:text>

                                </xsl:when>

                                <xsl:otherwise>

                                    <xsl:text>dolar</xsl:text>

                                </xsl:otherwise>

                            </xsl:choose>

                        </xsl:attribute>
                        <xsl:value-of select="destino/precioEstimado" />
                    </xsl:element>

                    <xsl:for-each select="destacados/poi">
                        <xsl:sort select="precioEstimado" order="ascending" />

                        <xsl:if test="horario!=''">

                            <xsl:element name="visita">

                                <xsl:element name="a">
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="web" />
                                    </xsl:attribute>

                                    <xsl:value-of select="concat('(',position(),') ',nombre)" />

                                </xsl:element>

                                <xsl:element name="descr">
                                    <xsl:for-each select="etiqueta">
                                        <xsl:sort select="." order="ascending"></xsl:sort>
                                        <xsl:value-of select="." />

                                        <xsl:if test="position()!=last()">
                                            <xsl:text> ~ </xsl:text>
                                        </xsl:if>

                                    </xsl:for-each>
                                </xsl:element>

                            </xsl:element>

                        </xsl:if>

                    </xsl:for-each>

                </xsl:element>

            </xsl:for-each>

        </xsl:element>

    </xsl:template>

</xsl:stylesheet>