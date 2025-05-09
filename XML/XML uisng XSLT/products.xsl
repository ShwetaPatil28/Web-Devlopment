<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <!-- Template to match the root -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Product Catalog</title>
      </head>
      <body>
        <h2>Product Catalog</h2>
        <table border="1">
          <tr bgcolor="#b0e0e6">
            <th>Product ID</th>
            <th>Name</th>
            <th>Category</th>
            <th>Price</th>
            <th>Stock</th>
          </tr>
          <!-- Loop over each product in the XML -->
          <xsl:for-each select="catalog/product">
            <tr>
              <td><xsl:value-of select="@id"/></td>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="category"/></td>
              <td><xsl:value-of select="price"/></td>
              <td><xsl:value-of select="stock"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
