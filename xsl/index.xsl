<?xml version='1.0' encoding='UTF-8' ?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:math="http://exslt.org/math" extension-element-prefixes="math">
<xsl:output method='html' encoding='UTF-8' indent='yes' />
<xsl:include href='_common.xsl' />

<xsl:param name="random" />

<xsl:template match='/'>
  <html>
    <xsl:call-template name='common_head' />

    <body>
      <xsl:call-template name='common_header' />
      <div class='container'>
        <div class='col-sm-6 col-sm-offset-3'>
          <div class='row'>
            <xsl:apply-templates select='books/item' />
          </div>
          <div class='col-xs-12 text-center shuffle'>
            <a class='btn btn-default btn-block btn-lg' href='/'>
              他を見る
            </a>
          </div>
        </div>
      </div>
      <xsl:call-template name='common_footer' />
    </body>
  </html>
</xsl:template>

<xsl:template match='item'>
  <xsl:variable name="max" select="count(/books/item)" />
  <xsl:if test="position() &lt; ($random mod $max) + 8 and position() &gt; ($random mod $max)">
    <blockquote>
      <p>
        <xsl:value-of select='substring(description, 0, 140)' />
        <xsl:if test="string-length(description) &gt; 140">
          <span>...</span>
        </xsl:if>
      </p>
      <p class='text-right'>
        <a class='btn btn-default'>
          <xsl:attribute name="href">
            <xsl:value-of select='concat("book.cgi", "?id=", @no)' />
          </xsl:attribute>
          この本を読む
        </a>
      </p>
    </blockquote>
  </xsl:if>
</xsl:template>

</xsl:stylesheet>
