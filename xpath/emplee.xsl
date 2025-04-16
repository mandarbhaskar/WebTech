<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
        <body>
        <h2>Employee Information (Salary > 50000)</h2>
        <table border="1">
        <tr bgcolor="#9acd32">
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Nick Name</th>
            <th>Salary</th>
        </tr>
        

        <xsl:for-each select="class/employee[salary > 20000 and nickname='Pashya'] ">
            <tr>
                <td><xsl:value-of select="@id"/></td>
                <td><xsl:value-of select="firstname"/></td>
                <td><xsl:value-of select="lastname"/></td>
                <td><xsl:value-of select="nickname"/></td>
                <td><xsl:value-of select="salary"/></td>
            </tr>
        </xsl:for-each>

        <xsl:for-each select="class/employee[nickname='Mandy'] ">
            <tr>
                <td><xsl:value-of select="@id"/></td>
                <td><xsl:value-of select="firstname"/></td>
                <td><xsl:value-of select="lastname"/></td>
                <td><xsl:value-of select="nickname"/></td>
                <td><xsl:value-of select="salary"/></td>
            </tr>
        </xsl:for-each>


        </table>

        </body>
        </html>
    </xsl:template>

</xsl:stylesheet>