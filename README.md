# progProgetto-Esame-Codifica-di-Testi_valentina_concas
Il progetto è stato realizzato da Valentina Concas per il corso di Codifica di testi del professor Angelo Mario Del Grosso per il Corso di Laurea in Informatica Umanistica.

# validazione con Xerces
## Il progetto è stato validato con Xerces usando il comando seguente:

java -cp "xerces/xercesImpl.jar;xerces/xml-apis.jar;xerces/xercesSamples.jar" dom.Counter -v progettoValentinaConcas.xml
## Ottenendo il seguente risultato:
progettoValentinaConcas.xml: 285;31;0 ms (351 elems, 1277 attrs, 2188 spaces, 6402 chars)

# Comando per la generazione del documento HTML di output tramite il processore XSLT Saxon
java -jar saxon-he-12.5.jar -s:ProgettoValentinaConcas.xml -xsl:stile.xsl -o:output.html

[Visualizza la pagina webl del documento]( https://valecont.github.io/Progetto-Esame-Codifica-di-Testi_valentina_concas/index.html)

