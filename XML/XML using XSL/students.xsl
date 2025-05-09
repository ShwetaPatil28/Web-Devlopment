<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Student Grades</title>
        <style>
          body { font-family: Verdana; }
          table { border-collapse: collapse; width: 40%; }
          th, td { border: 1px solid #ccc; padding: 8px; text-align: left; }
          th { background-color: #e0e0e0; }
        </style>
      </head>
      <body>
        <h2>Student Grades (Sorted by Grade Descending)</h2>
        <table>
          <tr>
            <th>Name</th>
            <th>Grade</th>
          </tr>
          <xsl:for-each select="school/student">
            <xsl:sort select="grade" data-type="number" order="descending"/>
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="grade"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
