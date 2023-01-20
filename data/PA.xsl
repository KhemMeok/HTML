<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title> transform XML to HTML </title>
                <link rel="stylesheet" href="../style/PA.css" />
            </head>
            <body>
                <h1>transform XML to HTML</h1>
                <table>
                    <tr>
                        <th>Student ID</th>
                        <th>Name</th>
                        <th>Present</th>
                        <th>Absent</th>
                    </tr>
                    <xsl:for-each select="students/student">
                        <tr>
                            <td>
                                <xsl:values-of select="@studentid" />
                            </td>
                            <td>
                                <xsl:values-of select="studentname" />
                            </td>
                            <td>
                                <xsl:values-of select="present" />
                            </td>
                            <xsl:choose>
                                <xsl:when test="absent &gt; 10">
                                    <td class="redwhite">
                                        <xsl:values-of select="absent" />
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td>
                                        <xsl:values-of select="absent" />
                                    </td>
                                </xsl:otherwise>
                            </xsl:choose>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>