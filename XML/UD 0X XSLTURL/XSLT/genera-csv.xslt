<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="text" omit-xml-declaration="yes" />
  <xsl:template match="/catalog">
    <xsl:text>Title,Art,Price &#xa;</xsl:text>
    <xsl:for-each select="cd[price&lt;8]">
      <xsl:value-of select="title"/>,<xsl:value-of select="artist" />,<xsl:value-of select="price" />
      <xsl:text>&#xa;</xsl:text>
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>
