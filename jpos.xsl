<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes"/>
  <xsl:template match="/">
    <style>
      table {
        border-collapse: collapse;
        table-layout: fixed;
      }
      th, td {
        border: 1px solid black;
        padding: 10px;
        text-align:left;
      }
      td.nowrap {
        white-space: nowrap;
      }
      td.breaklines{
          word-wrap: break-word;
      }
    </style>
    <html>
      <body>
        <table>
          <tr>
            <th>Time</th>
            <th>Realm</th>
            <th>Level</th>
            <th>Message</th>
          </tr>
          <xsl:apply-templates/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="logger/log">
    <tr>
      <td class="nowrap"><xsl:value-of select="@at" /></td>
      <td><xsl:value-of select="@realm" /></td>
      <td><xsl:value-of select="name(*[1])" /></td>
      <td class="breaklines"><xsl:value-of select="*[1]" /></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
