<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Computers Data</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background-color: #f9f9f9;
                        color: #333;
                        margin: 20px;
                    }
                    h1 {
                        text-align: center;
                        color: #4CAF50;
                    }
                    table {
                        border-collapse: collapse;
                        width: 100%;
                        margin-top: 20px;
                        background-color: #fff;
                    }
                    th, td {
                        border: 1px solid #ddd;
                        padding: 12px;
                        text-align: left;
                    }
                    th {
                        background-color: #4CAF50;
                        color: white;
                        text-transform: uppercase;
                    }
                    tr:nth-child(even) {
                        background-color: #f2f2f2;
                    }
                    tr:hover {
                        background-color: #ddd;
                    }
                    td {
                        font-size: 14px;
                    }
                </style>
            </head>
            <body>
                <h1>Computers Data</h1>
                <table>
                    <tr>
                        <th>Brand</th>
                        <th>Processor</th>
                        <th>RAM</th>
                        <th>Storage</th>
                        <th>Display Size</th>
                        <th>Battery Life</th>
                        <th>Weight</th>
                        <th>Operating System</th>
                    </tr>
                    <xsl:for-each select="Computers/Computer">
                        <tr>
                            <td><xsl:value-of select="Brand"/></td>
                            <td><xsl:value-of select="Processor"/></td>
                            <td><xsl:value-of select="RAM"/></td>
                            <td><xsl:value-of select="Storage"/></td>
                            <td><xsl:value-of select="DisplaySize"/></td>
                            <td><xsl:value-of select="BatteryLife"/></td>
                            <td><xsl:value-of select="Weight"/></td>
                            <td><xsl:value-of select="OperatingSystem"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
