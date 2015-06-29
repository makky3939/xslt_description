<?xml version='1.0' encoding='UTF-8' ?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:math="http://exslt.org/math" extension-element-prefixes="math">
<xsl:output method='html' encoding='UTF-8' indent='yes' />
<xsl:include href='_common.xsl' />

<xsl:param name="id" />

<xsl:template match='/'>
  <html>
    <xsl:call-template name='common_head' />

    <body>
      <xsl:call-template name='common_header' />

      <xsl:call-template name='common_footer' />
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>