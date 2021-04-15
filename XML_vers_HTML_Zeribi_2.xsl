<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
version="1.0">


<xsl:output method="html" doctype-public="html"></xsl:output>
<xsl:strip-space elements="*"/>
<xsl:template match="node()[local-name()='TEI']">

<html>
<head>
<title>Lexique des protagonistes récurrents</title>
<link rel="stylesheet" type="text/css" href="Sarrasine_Zeribi.css"></link>
</head>


<body>
<xsl:apply-templates select="descendant::node()[local-name()='persName'][@key]">
<xsl:sort select="@key"></xsl:sort>
</xsl:apply-templates>


</body>
</html>
</xsl:template>

<xsl:template match="node()[local-name()='persName']">
<!--<xsl:variable name="nom_courant" select="local-name()='persName'"/>
<xsl:if test="not(preceding::node()[local-name()='persName']= $nom_courant)"></xsl:if>-->
<xsl:apply-templates ></xsl:apply-templates>
<xsl:text>
</xsl:text>
</xsl:template>

<xsl:template match="node()[local-name()='reg']">
<xsl:text>[</xsl:text>
<xsl:apply-templates></xsl:apply-templates>
<xsl:text>]</xsl:text>
</xsl:template>

</xsl:stylesheet>







