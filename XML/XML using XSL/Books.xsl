<?xml version = "1.0" encoding = "UTF-8"?> 
<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  
  <xsl:template match="/">
    <html>
      <body>
        <h2>Book Catalog (Price > $30)</h2>
        <table border="1">
          <tr bgcolor="#8FBC8F">
            <th>ID</th>
            <th>Title</th>
            <th>Author</th>
            <th>Price</th>
          </tr>
          
          <xsl:for-each select="catalog/book">
            <xsl:if test="price &gt; 30">
              <tr>
                <td><xsl:value-of select="@id"/></td>
                <td><xsl:value-of select="title"/></td>
                <td><xsl:value-of select="author"/></td>
                <td><xsl:value-of select="price"/></td>
              </tr>
            </xsl:if>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
