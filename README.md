# progProgetto-Esame-Codifica-di-Testi_valentina_concas
Il progetto è stato realizzato da Valentina Concas per il corso di Codifica di testi del professor Angelo Mario Del Grosso per il Corso di Laurea in Informatica Umanistica.

# validazione con Xerces
## Il progetto è stato validato con Xerces usando il comando seguente:

java -cp "xerces/xercesImpl.jar;xerces/xml-apis.jar;xerces/xercesSamples.jar" dom.Counter -v progettoValentinaConcas.xml
## Ottenendo il seguente risultato:
progettoValentinaConcas.xml: 215;26;0 ms (371 elems, 1323 attrs, 2286 spaces, 6530 chars)

# Comando per la generazione del documento HTML di output tramite il processore XSLT Saxon
java -jar saxon-he-12.5.jar -s:ProgettoValentinaConcas.xml -xsl:stile.xsl -o:output.html

https://github.com/Valecont/Progetto-Esame-Codifica-di-Testi_valentina_concas/blob/main/output.html(https://github.com/Valecont/Progetto-Esame-Codifica-di-Testi_valentina_concas/blob/main/output.html)
