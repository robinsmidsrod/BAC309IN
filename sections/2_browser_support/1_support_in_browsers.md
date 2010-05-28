
### 2.1 Kort om nettlesere og SVG-støtte ###

SVG er en standard som for lengst har blitt implementert i de fleste populære
nettlesere som blir brukt av verdens befolkning. Det er heller et spørsmål om hvor
mye av standarden som fungerer i de ulike nettleserne. Dette variere en god
del fra nettleser til nettleser og en årsak til at SVG ikke er tatt i bruk aktivt 
er nok at man ikke kan garantere for at resultatet blir som forventet i de ulike 
nettleserne.

Internet Explorer har en lengre vei å gå enn andre for å implementere SVG, noe som kan
ha en innvirkning på hvor mange utviklere og brukere SVG har. Internet Explorer
har ingen innebygget støtte for SVG, men SVG støtte kan oppnås ved å benytte en
plugin utviklet av andre aktører. Adobe har f.eks lenge utviklet en [SVG-viewer][4],
som gir Internet Explorer mulighet til å vise nesten alle elementene i standarden.
Apache har også gjort en innsats for å utvikle en [plugin][5] som Internet Explorer 
kan benytte. Denne kan også benyttes av andre applikasjoner som skulle ha behov for 
SVG-støtte. 

Flere av de andre populære nettleserne har gjort en implementasjon av SVG-standarden
men ingen har kommet til det punktet at all funksjonalitet er støttet hundre fullt ut.
Både Mozilla Firefox, Google Chrome, Apple Safari og Opera har alle prøvd å implementere 
SVG. Noen av dem har lykkes i større grad enn andre, men alle har begynt på en vei vi 
ser frem til å følge videre. SVG gjør det mulig for nettlesere å utføre avanserte 
aninimasjonsoppgaver, samt å generere egne teksttyper relativt enkelt. Dette vil
sannsynligvis få stor betydning for hvordan vi utvikler websider i fremtiden. 

Jeff Schiller, som er en aktiv deltaker i [SVGIG][3] eller SVG interest group, har laget
en oversikt, [tilgjenglig på nett][1], over hvilke deler av SVG-implementasjon som er
tilgjenglig i de ulike nettleserne. Det er en oversikt som tar for seg både nettlesere
og andre applikasjoner som implementerer SVG-standarden. Vår oppgave tar ikke
utgangspunkt i de andre applikasjonene som er spesifisert her, men kun nettlesere som
er relevante og i bruk pr i dag. Det finnes gode statistikker på nettet over hvilke
nettlesere som er relevante for tiden, blant annet [Statcounter][2] som gir en veldig
god oversikt. Ut ifra denne oversikten kom vi frem til følgende nettlesere som skal 
vurderes opp mot SVG-standarden.

 * Microsoft Internet Explorer 7 / 8
 * Mozilla Firefox 2.0 / 3.0 / 3.5 / 3.6
 * Google Chrome 2(Nightly-build) / 4
 * Opera 9.6(9.5 er nærmeste) / 10.0
 * Apple Safari 4

Alle nettlesere er godt representert på internett i dag, og kjent av internettbrukere 
i hele verden.

På informasjonssiden om [SVG-status][1] i de ulike nettlesere er det angitt en prosent
andel som forteller hvor mange prosent av standarden som er støttet. Det er interessant
at nettlesere som har SVG-standarden innbygget i nettlesermotoren, som f.eks Mozilla
har gjort med Gecko og Safari har gjort med Webkit, kommer dårligere ut av denne
testen i motsetning til Opera som har laget sin egen nettlesermotor og bygget
SVG-standarden inn i denne.

 * Microsoft Internet Explorer 0.00% / 0.00%
 * Mozilla Firefox 46.17% / 60.40% / 60.77% / 61.50%
 * Google Chrome 81.39% / 82.12%
 * Opera 94.16% / 94.34%
 * Apple Safari 82.12%

Ut i fra prosentfordelingen over kan man legge merke til at både Chrome 4 og Safari 4
har samme prosentfordeling, noe som er rimlig ettersom begge er basert på Webkit sin
implementasjon av SVG. Firefox kommer dårlig ut i prosentfordeling, selv om det er
en av de mest brukte nettleserne etter Internet Explorer. Internet Explorer har ikke
innebygget støtte for SVG i det hele tatt.

[1]: http://www.codedread.com/svg-support-table.html "SVG Support in browsers, Jeff Schiller, extracted 2010-03-14"
[2]: http://gs.statcounter.com/#browser_version-ww-monthly-200902-201003-bar "StatCounter Global Stats, Browser version, February 2009 to March 2010"
[3]: http://www.w3.org/Graphics/SVG/IG/ "SVG Interest Group, W3C"
[4]: http://www.adobe.com/svg/viewer/install/ "Adobe SVG Viewer IE Plugin install page, Adobe"
[5]: http://xmlgraphics.apache.org/batik/ "Batik Java SVG Toolkit, Apache Software Foundation, 2010-01-02"
