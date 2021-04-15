<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
version="1.0">


<xsl:output method="html" doctype-public="html"></xsl:output>
<xsl:template match="node()[local-name()='TEI']">
<html>
<head>
<title>Sarrasine</title>
<link rel="stylesheet" type="text/css" href="Sarrasine_Zeribi.css"></link>
<xsl:apply-templates select="node() [local-name()='teiHeader']"></xsl:apply-templates>
</head>


<body>
<xsl:apply-templates select="node()[local-name()='text']"></xsl:apply-templates>
</body>
</html> 
</xsl:template>


<xsl:template match="node()[local-name()='text']">
<xsl:element name="div">
<xsl:attribute name="class">
<xsl:value-of select="local-name()"/>
</xsl:attribute>
<xsl:apply-templates></xsl:apply-templates>
</xsl:element>
</xsl:template>

<xsl:template match=" node()[local-name()= 'div']">
<xsl:element name="div">
<xsl:attribute name="class">
<xsl:value-of select="@type"/>
</xsl:attribute>
<xsl:apply-templates></xsl:apply-templates>
</xsl:element>
</xsl:template>

<xsl:template match="* | @*">
<xsl:element name="span">
<xsl:attribute name="class">
<xsl:value-of select="local-name()"/>
<xsl:text>_</xsl:text>
<xsl:value-of select="@type"/>
<xsl:text>_</xsl:text>
<xsl:value-of select="@key"/>
</xsl:attribute>
<xsl:apply-templates></xsl:apply-templates>
</xsl:element>
</xsl:template>
</xsl:stylesheet>






