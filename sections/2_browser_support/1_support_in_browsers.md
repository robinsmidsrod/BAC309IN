### 2.1 Kort om nettlesere og SVG-støtte ###

SVG er en standard som lenge har vært tilgjengelig i de fleste populære
nettlesere på dagens marked. SVG gjør det mulig for nettlesere å utføre
avanserte animasjonsoppgaver, samt å generere egne tekst-typer relativt
enkelt. Dette vil sannsynligvis få stor betydning for hvordan vi utvikler
websider i fremtiden.

Et viktig spørsmål er hvor mye av standarden som fungerer i de ulike
nettleserne. Dette varierer en god del fra nettleser til nettleser. En mulig
årsak til at SVG ikke er tatt i bruk aktivt kan være at man ikke kan
garantere at resultatet blir som forventet i de ulike nettleserne.

Internet Explorer har ingen innebygget støtte for SVG, men SVG-støtte kan
oppnås ved å benytte en plugin utviklet av andre aktører. Adobe har lenge
tilbydt [SVG Viewer][4], en plugin som gir Internet Explorer mulighet til å
vise nesten alle elementer i standarden. Apache har også utviklet en plugin
navngitt [Batik][5] som Internet Explorer kan benytte. Denne kan også
benyttes av andre applikasjoner som har behov for SVG-støtte.

Alle de andre populære nettleserne har utviklet en implementasjon av
SVG-standarden, men ingen har kommet til det punktet at all funksjonalitet i
standarden er støttet fullt ut. Både Mozilla Firefox, Google Chrome, Apple
Safari og Opera har alle prøvd å implementere SVG. Noen av dem har lykkes i
større grad enn andre.

Jeff Schiller, som er en aktiv deltaker i [SVG Interest Group][3] (SVG IG)
har laget en [oversikt][1] over hvilke deler av SVG-standarden som er
implementert i de ulike nettleserne. Det er en oversikt som tar for seg både
nettlesere og andre applikasjoner som implementerer SVG-standarden. Denne
oppgaven tar ikke for seg de andre applikasjonene som er spesifisert her,
kun nettlesere som er relevante og i bruk i dagens marked. Det finnes gode
kilder på nettet over hvilke nettlesere som er i bruk i dagens marked.
[StatCounter][2] er en slik kilde som gir en veldig god oversikt. Ut fra
denne oversikten kom vi frem til følgende nettlesere som bør få deres
SVG-implementasjon evaluert:

 * Microsoft Internet Explorer 7 / 8
 * Mozilla Firefox 2.0 / 3.0 / 3.5 / 3.6
 * Google Chrome 2 (Nightly build) / 4
 * Opera 9.6 (9.5 er nærmeste) / 10.0
 * Apple Safari 4

På Jeff Schillers informasjonsside om SVG-status i ulike nettlesere er det
angitt en prosentandel som forteller hvor mye av standarden som er støttet i
den respektive nettleser. Det er interessant å se at Opera, som har utviklet
sin egen nettlesermotor, kommer bedre ut av testen enn f.eks Firefox, hvor
SVG-implementasjonen er utviklet på toppen av en eksisterende motor.

 * Microsoft Internet Explorer 0.00% / 0.00%
 * Mozilla Firefox 46.17% / 60.40% / 60.77% / 61.50%
 * Google Chrome 81.39% / 82.12%
 * Opera 94.16% / 94.34%
 * Apple Safari 82.12%

Ut i fra prosentfordelingen over kan man legge merke til at både Chrome 4 og
Safari 4 har samme prosentfordeling, noe som er rimelig ettersom begge er
basert på WebKit sin implementasjon av SVG. Firefox kommer dårlig ut i
prosentfordeling, selv om det er en av de mest brukte nettleserne etter
Internet Explorer. Som nevnt tidligere legger vi merke til at Internet
Explorer ikke har innebygget støtte for SVG i det hele tatt.

[1]: http://www.codedread.com/svg-support-table.html "SVG Support in browsers, Jeff Schiller, uthentet 2010-03-14"
[2]: http://gs.statcounter.com/#browser_version-ww-monthly-200902-201003-bar "StatCounter Global Stats, Browser version, February 2009 to March 2010"
[3]: http://www.w3.org/Graphics/SVG/IG/ "SVG Interest Group, W3C, lest 2010-05-27"
[4]: http://www.adobe.com/svg/viewer/install/ "Adobe SVG Viewer IE Plugin install page, Adobe, lest 2010-05-27"
[5]: http://xmlgraphics.apache.org/batik/ "Batik Java SVG Toolkit, Apache Software Foundation, 2010-01-02"
