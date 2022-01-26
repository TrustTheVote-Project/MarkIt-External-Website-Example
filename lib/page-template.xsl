<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    <xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes"/>

    
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <title></title>
                <link rel="stylesheet" href="css/style.css" />
            </head>
            <body>
                <header id="page-header">
                    <div id="logo">
                        <img alt="vulning pelican" src="assets/logo.svg" />
                    </div>
                    <h1>Pelican County</h1>
                </header>
                <main>
                    <xsl:apply-templates />
                </main>
                <footer></footer>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>