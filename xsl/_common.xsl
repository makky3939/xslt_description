<?xml version='1.0' encoding='UTF-8' ?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:math='http://exslt.org/math' extension-element-prefixes='math'>
<xsl:output method='html' encoding='UTF-8' indent='yes' />

<xsl:template name='common_head'>
  <head>
    <meta charset='utf-8' />
    <title><xsl:value-of select='books/metadata/title' /></title>
    <meta name='viewport' content='width=device-width, initial-scale=1, maximum-scale=1' />
    <link href='/css/bootstrap.min.css' rel='stylesheet' />
    <link href='/css/style.css' rel='stylesheet' />
  </head>
</xsl:template>

<xsl:template name='common_header'>
  <header class='container'>
    <div class='col-sm-8 col-sm-offset-2'>
      <h1 class='text-center'>
        <a href='/'>
          <xsl:value-of select='books/metadata/title' />
        </a>
      </h1>
      <p class='text-center'>
        <xsl:value-of select='books/metadata/description' />
      </p>
      <hr />
    </div>
  </header>
</xsl:template>

<xsl:template name='common_footer'>
  <footer class='container'>
    <div class='col-sm-8 col-sm-offset-2'>
      <hr />
      <p class='footer-content text-center'>
        <span>
          (c) Masaki KOBAYASHI.
        </span>
        <span>・</span>
        <span>
          Student No. 201311495
        </span>
        <span>・</span>
        <span>
          <a class='' href='https://github.com/makky3939/xslt_description' target='_blank'>
            Source code
          </a>
        </span>
      </p>
    </div>
  </footer>
  <script src='/js/jquery-2.1.4.min.js'></script>
  <script src='/js/bootstrap.min.js'></script>
</xsl:template>

<xsl:template name='common_shuffle'>
  <div class='col-xs-12 text-center shuffle'>
    <div class='row'>
      <a class='btn btn-default btn-block btn-lg' href='/'>
        他の紹介文を読む
      </a>
    </div>
  </div>
</xsl:template>

</xsl:stylesheet>