<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/>
    
<xsl:template match="/">
<html>
<head>
<title> Diari di Emanuele Artom - Pg 87, 88, 158 </title>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css" />
<script src="https://code.jquery.com/jquery-3.6.4.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
<link href="stile.css" rel="stylesheet" type="text/css"/>
<script src="script.js"></script>
</head>
<body>
<div>
<h1 class="titolo"> <xsl:value-of select="//tei:title[@xml:id='titolo']"/> </h1> <!-- prende il contenuto -->
</div>
<nav class="navMenu">
                    <ul>
                        
                        <li><a href="#storia">Storia</a></li>
                        <li><a href="#descrizione">Descrizione</a></li>
                        <li><a href="#dati">Dati bibliografici</a></li>
                        
                        <li>
                            <a href="#pg87">Pagina 87</a>
                        </li>
                        <li>
                            <a href="#pg88">Pagina 88</a>
                        </li>
                        <li>
                            <a href="#pg158">Pagina 158</a>
                        </li>
                        <li>
                            <a href="#note">Note</a>
                        </li>
                    </ul>
                </nav>
                <div id="info">
                <h3> Informazioni</h3>
                 <div id="storia">
                 <h3>Cenni storici</h3>
                 <xsl:apply-templates select="//tei:history" />
                 </div>
                 <div id="descrizione">
                 <h3>Descrizione fisica documento</h3>
                 <xsl:apply-templates select="//tei:physDesc" />
                 </div>
                 <div id="dati">
                 <h3>Dati bibliografici</h3>
                 <ul>
                  <li><p><xsl:apply-templates select="//tei:listBibl/tei:bibl[1]"/></p></li>
                 <li> <p><xsl:apply-templates select="//tei:listBibl/tei:bibl[2]"/></p></li>
                 <li> <p><xsl:apply-templates select="//tei:listBibl/tei:bibl[3]"/></p></li>
                 <li> <p><xsl:apply-templates select="//tei:listBibl/tei:bibl[4]"/></p></li>
                 </ul>
                 </div>
                 
                </div>
                <div id="pagine">
                
                <h2>Pagine codificate</h2>
                <div id="legenda">
                <h4>Legenda</h4>
                
                <p id="one">Gap </p>
                <p id="two">Del </p>
                <p id="tree">Unclear </p>
                
                </div>
                <div id ="pg">
                <div id="pg87">
                <h3>Pagina 87</h3>
                <div class=" immagine">
                <xsl:apply-templates select="//tei:surface[@xml:id='Pag87']" />
                </div>
                <div class="testo">
                <xsl:apply-templates select="//tei:body/tei:div[@n = '87']" />
                </div>
                </div>
                <div id="pg88">
                <h3>Pagina 88</h3>
                <div class=" immagine">
                <xsl:apply-templates select="//tei:surface[@xml:id='Pag88']" />
                </div>
                <div class="testo">
                <xsl:apply-templates select="//tei:body/tei:div[@n = '88']" />
                </div>
                </div>
                <div id="pg158">
                <h3>Pagina 158</h3>
                <div class=" immagine">
                <xsl:apply-templates select="//tei:surface[@xml:id='Pag158']" />
                </div>
                <div class="testo">
                <xsl:apply-templates select="//tei:body/tei:div[@n = '158']" />
                </div>
                </div>
                </div>

                </div>
 <div id="note">
<h3>Riferimenti</h3>
  <p>
            <xsl:value-of select="//tei:editionStmt/tei:edition" />
        </p>
       <p >Progetto a cura di: <span> <xsl:value-of select="//tei:name[@xml:id='Concas']"></xsl:value-of></span>
        </p>
        <p>Coordinato da: <span> <xsl:value-of select="//tei:name[@xml:id='Grosso']"></xsl:value-of></span>
       
        
        </p>
 </div>
</body>
</html>

</xsl:template>
<xsl:template match="tei:surface">
        <xsl:element name="img" >
       
            <xsl:attribute name="src">
                <xsl:value-of select="concat(@xml:id, '.jpg')" />
            </xsl:attribute>
        </xsl:element>
    </xsl:template>

<xsl:template match="tei:gap">
        <gap id="gap">[Gap] </gap> 
    </xsl:template>
    <xsl:template match="tei:del">
    <del id="del">
        <xsl:apply-templates />
    </del>
</xsl:template>
    <xsl:template match="tei:unclear">
        <unclear id="unclear">
            <xsl:apply-templates />
        </unclear>
    </xsl:template>
						
<xsl:template match="tei:persName">
        <persName class="name">
            <xsl:apply-templates />
        </persName>
    </xsl:template>
    <xsl:template match="tei:name">
        <name class="name">
            <xsl:apply-templates />
        </name>
    </xsl:template>
<xsl:template match="tei:author">
        <author class="name">
            <xsl:apply-templates />
        </author>
    </xsl:template>
<xsl:template match="tei:publisher">
        <publisher class="name">
            <xsl:apply-templates />
        </publisher>

    </xsl:template>

<xsl:template match="tei:bibl">
    
    <span>Autore: </span>
    <xsl:value-of select="tei:author/tei:forename" />
    <xsl:text>  </xsl:text>
    <xsl:value-of select="tei:author/tei:surname" />
    <xsl:text>,  </xsl:text>
    <xsl:text>  </xsl:text>
    <span>Titolo: </span>
    <xsl:value-of select="tei:title" />
    <xsl:text>,  </xsl:text>
    <xsl:text>  </xsl:text>
    <span>Luogo e data: </span>
    <xsl:value-of select="tei:pubPlace/tei:placeName" />
    <xsl:text>, </xsl:text>
    <xsl:value-of select="tei:publisher" />
    <xsl:text>, </xsl:text>
    <xsl:value-of select="tei:date/@when" />
    

  </xsl:template>


    <xsl:template match="tei:pb">
 
        <xsl:element name="div">
            <xsl:attribute name="id">Pagine<xsl:value-of select="current()/@n" />
            </xsl:attribute>
        </xsl:element>
        
    </xsl:template>


    <xsl:template match="tei:lb">
        <br />
        <xsl:element name="span">
            <xsl:attribute name="class">numeroRiga</xsl:attribute>
            <b>
                <xsl:value-of select="@n" />
            </b>
        </xsl:element>
    </xsl:template>

    </xsl:stylesheet>