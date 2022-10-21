<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output indent="yes"></xsl:output>
<xsl:template match="/catalog">
  <coleccion>
    <xsl:for-each select="cd ">
      <xsl:sort select="price" data-type="number" order="descending" />
      <disco> 
        <cancion>
          <xsl:value-of select="title" />  de <xsl:value-of select="artist" />
        </cancion>
      </disco>
    </xsl:for-each>                         
  </coleccion>
</xsl:template>
</xsl:stylesheet>
