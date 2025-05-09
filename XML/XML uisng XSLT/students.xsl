<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Student Records</title>
      </head>
      <body>
        <h2>Student Records</h2>
        <table border="1">
          <tr bgcolor="#f2f2f2">
            <th>Name</th>
            <th>Grade</th>
            <th>Marks</th>
          </tr>
          <xsl:for-each select="school/student">
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="grade"/></td>
              <td><xsl:value-of select="marks"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
