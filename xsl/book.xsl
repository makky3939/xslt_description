<?xml version='1.0' encoding='UTF-8' ?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:math='http://exslt.org/math' extension-element-prefixes='math'>
<xsl:output method='html' encoding='UTF-8' indent='yes' />
<xsl:include href='_common.xsl' />

<xsl:param name="book_id" />

<xsl:template match='/'>
  <html>
    <xsl:call-template name='common_head' />

    <body>
      <xsl:call-template name='common_header' />

     <xsl:choose>
        <xsl:when test='books/item[@no=$book_id]'>
          <xsl:apply-templates select='books/item[@no=$book_id]' />
        </xsl:when>
        <xsl:otherwise>
          <div class='container'>
            <div class='col-sm-6 col-sm-offset-3'>
              <div class='alert alert-danger'>
                <p>該当する図書がありません</p>
              </div>
              <xsl:call-template name='common_shuffle' />
            </div>
          </div>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:call-template name='common_footer' />
    </body>
  </html>
</xsl:template>

<xsl:template match='item'>
  <div class='container'>
    <div class='col-sm-6 col-sm-offset-3'>
      <h2>
        <xsl:value-of select='title' />
      </h2>
      <ul class='list-inline'>
        <li>
          <span>著者：</span>
          <b><xsl:value-of select='creator' /></b>
        </li>
        <li>
          <span>出版社：</span>
          <b><xsl:value-of select='publisher' /></b>
        </li>
      </ul>
      <ul class='list-inline'>
        <li>
          <span>価格：</span>
          <b><xsl:value-of select='price' /></b>
        </li>
        <li>
          <span>ISBN：</span>
          <b><xsl:value-of select='isbn' /></b>
        </li>
      </ul>
      <ul class='list-inline'>
        <li>
          <span>出版日：</span>
          <b><xsl:value-of select='concat(date/year, "/", date/month, "/", date/day)' /></b>
        </li>
      </ul>
      <blockquote>
        <xsl:value-of select='description' />
      </blockquote>
      <ul class='list-inline'>
        <li>
          <span>キーワード：</span>
        </li>
        <xsl:apply-templates select='keywords/keyword' />
      </ul>
      <p>
        関連URL：
        <a class='btn btn-link' target='_blank'>
          <xsl:attribute name='href'>
            <xsl:value-of select='url/@resource' />
          </xsl:attribute>
          
          <xsl:value-of select='url/@resource' />
        </a>
      </p>
      <xsl:call-template name='common_shuffle' />
    </div>
  </div>
</xsl:template>

<xsl:template match='keyword'>
  <li>
    <b><xsl:value-of select='.' /></b>
  </li>
</xsl:template>

</xsl:stylesheet>