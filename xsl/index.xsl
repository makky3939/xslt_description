<?xml version='1.0' encoding='UTF-8' ?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:math="http://exslt.org/math" extension-element-prefixes="math">
<xsl:output method='html' encoding='UTF-8' indent='yes' />

<xsl:param name="random" />

<xsl:template match='/'>
  <html>
    <head>
      <meta charset='utf-8' />
      <title><xsl:value-of select='books/metadata/title' /></title>
      <meta name='viewport' content='width=device-width, initial-scale=1, maximum-scale=1' />
      <link href='/css/bootstrap.min.css' rel='stylesheet' />
    </head>

    <body>
      <header>
        <div class='col-xs-8 col-xs-offset-2'>
          <h1><xsl:value-of select='books/metadata/title' /></h1>
          <hr />
        </div>
      </header>
      <div class='col-xs-6 col-xs-offset-3'>
<!--         <div class='col-xs-3'>
          <div class="list-group">
            <a href="#" class="list-group-item active">
              Cras justo odio
            </a>
            <a href="#" class="list-group-item">Dapibus ac facilisis in</a>
            <a href="#" class="list-group-item">Morbi leo risus</a>
            <a href="#" class="list-group-item">Porta ac consectetur ac</a>
            <a href="#" class="list-group-item">Vestibulum at eros</a>
          </div>
        </div> -->
        <div class='col-xs-12'>
          <xsl:apply-templates select='books/item' />
        </div>
      </div>
      <footer>
        <div class='col-xs-8 col-xs-offset-2'>
          <hr />
          <p>makky</p>
        </div>
      </footer>
      <script src='/js/jquery-2.1.4.min.js'></script>
      <script src='/js/bootstrap.min.js'></script>
    </body>
  </html>
</xsl:template>

<xsl:template match='item'>
  <xsl:variable name="max" select="count(/books/item)" />
  <xsl:if test="position() &lt; ($random mod $max) + 8 and position() &gt; ($random mod $max)">
    <blockquote>
      <xsl:value-of select='substring(description, 0, 140)' />
      <xsl:if test="string-length(description) &gt; 140">
        <span>...</span>
      </xsl:if>
    </blockquote>
  </xsl:if>
</xsl:template>

</xsl:stylesheet>
