<?xml version="1.0" encoding="windows-1251"?>
<!DOCTYPE xsl:stylesheet [
  <!ENTITY separate "<xsl:text>&#10;</xsl:text>">
  <!ENTITY tab "<xsl:text>&#09;</xsl:text>">
]>

<!--
bracket: support custom blocks in hrc.
Written by Eugene Efremov <4mirror@mail.ru>
-->

<xsl:stylesheet
     version="1.0"
     exclude-result-prefixes="xsl"
     xmlns="http://colorer.sf.net/2003/hrc"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml" indent="yes" encoding="UTF-8"/>
<xsl:strip-space elements="*"/>

<xsl:include href="bracket.blockcase.xsl"/>
<xsl:include href="bracket.blockquery.xsl"/>
<xsl:include href="bracket.blockname.xsl"/>

<xsl:template match="/">
 &separate;
 <xsl:comment>
  This file was automaticly generated by barcket
     http://info-esta.ru/efremov/colorer/index.html?intname=colorer.bin.bracket"
 (c) written by Eugene Efremov &lt;4mirror@mail.ru&gt;
 </xsl:comment>
 &separate;
 &separate;
<!--
<hrc>
 <type name="{bracket/@type}">
 <annotation>
  <documentation>
   &separate;&tab;&tab;This is a autocreate module for support custom blocks in hrc.
   &separate;&tab;&tab;
  </documentation>
 </annotation>
-->
 &separate;
 &separate;
 <xsl:apply-templates mode="base"/>
  <scheme name="{bracket/@scheme}">
   <xsl:apply-templates mode="final"/>
  </scheme>
<!--
 </type>
</hrc>
-->
</xsl:template>

<xsl:template match="/bracket/block | /bracket/name-block" mode="final">
 <inherit scheme="{@name}.blocks"/>
</xsl:template>

<xsl:template match="/bracket/block | /bracket/name-block" mode="base">
 <xsl:apply-templates mode="base"/>
 <scheme name="{@name}.blocks">
  <xsl:apply-templates mode="final"/>
 </scheme>
 &separate;
 &separate;
</xsl:template>


</xsl:stylesheet>
