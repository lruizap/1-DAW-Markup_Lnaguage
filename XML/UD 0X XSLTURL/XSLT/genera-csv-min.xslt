<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:output method="text" omit-xml-declaration="yes" />

  <xsl:template match="/catalog">
    Title,Artist
    <xsl:apply-templates select="cd" />
  </xsl:template>
  <xsl:template match="cd">
    <xsl:if test="year&gt;1990">
      <xsl:value-of select="title" />
      ,
      <xsl:value-of select="artist" />
      <xsl:text></xsl:text>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>
