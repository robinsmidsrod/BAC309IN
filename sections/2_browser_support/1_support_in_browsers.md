
# Støtte for SVG i nettlesere #

SVG er en standard som for lengst har blitt implementert i de fleste populære
nettlesere som blir brukt av verdens befolkning. Det er heller et spørsmål om hvor
mye av standaren som faktisk fungerer i de ulike nettleserne. Dette varier en god
del fra nettleser til nettleser og det er kanskje ikke rart at SVG enda ikke er
tatt i bruk aktivt ettersom man ikke kan garantere for at resultatet blir som
forventet i de ulike nettleserne. 

En nettleser har enda ikke gjort en innsatts for å implementere SVG, noe som kan
ha en innvirkning på hvor mange utviklere og brukere SVG har. Internet Explorer
har ingen innebygget støtte for SVG, men SVG støtte kan oppnås ved å benytte en
plugin utviklet av andre aktører. Adobe har f.eks lenge utviklet en SVG-viewer,
som gir Internet Explorer mulighet til å vise nesten alle elementene i standarden.
Apache har også gjort en innsats for å utvikle en plugin som Internet Explorer kan
benytte, eller andre applikasjoner som skulle ha behov for SVG-støtte.

Jeff Schiller, som er en aktiv deltaker i SVGIG eller SVG interest group, har laget
oversikt, [tilgjenglig på nett][8], over hvilke deler av SVG-implementasjon som er
tilgjenglig i de ulike nettleserne. Det er en oversikt som tar for seg både browser
og andre applikasjoner som implementere SVG-standarden. Vår oppgave tar ikke
utgangspunkt i de andre applikasjonene er spesifsert her, men kun nettlesere som
er relevant og i bruk pr i dag. Det finnes gode statestikker på nettet over hvilke
nettlesere som er relevante for tiden, blant annet [denne][9] som er en veldig
god oversikt. Ut ifra denne oversikten kom vi frem til følgende nettlesere som
skal vurderes opp mot SVG-standarden.

 * Microsoft Internet Explorer 7 / 8
 * Mozilla Firefox 2.0 / 3.0 / 3.5 / 3.6
 * Google Chrome 2(Nightly-build) / 4
 * Opera 9.6(9.5 er nærmeste) / 10.0
 * Apple Safari 4

Alle nettlesere er godt representert på internett idag, og kjent av internett
brukere i hele verden.

På informasjon siden om [SVG-status][8] i de ulike nettlesere ligger det også en prosent
andel som forteller hvor mange prosent av standarden som er støttet. Det er interesant
at nettlesere som har bygget SVG-standarden inn i nettleser motoren, som f.eks Mozilla
har gjort med Gecko og Safari har gjort med Webkit, kommer dårligere ut av denne
testen imotsettning til Opera som har laget sin helt egen nettleser motor og bygget
SVG-standarden inn i denne.

 * Microsoft Internet Explorer 0.00% / 0.00%
 * Mozilla Firefox 46.17% / 60.40% / 60.77% / 61.50%
 * Google Chrome 81.39% / 82.12%
 * Opera 94.16% / 94.34%
 * Apple Safari 82.12%

Ut i fra prosent fordeling over kan man legge merke til at både Chrome 4 og Safari 4
har samme prosent fordeling, noe som er rimlig ettersom begge er basert på Webkit sin
implementasjon av SVG. Firefox kommer dårlig ut i prosent fordeling, selv om det er
en av de mest brukte nettleserne etter Internet Explorer. Det må også legges merke
til at Internet Explorer ikke har innebygget støtte for SVG i det hele tatt.


[1]: http://www.mozilla.org/projects/svg/status.html
[2]: http://www.w3.org/Graphics/SVG/IG/wiki/SVG_Plugin_for_IE#Use_of_the_SVG_rendering_technology_present_in_web-browsers_with_native_SVG_support
[3]: http://operawatch.com/news/2007/04/how-opera-ranks-with-its-svg-implementation-best-native-implementation.html
[4]: http://www.opera.com/docs/specs/svg/
[5]: http://dev.opera.com/articles/view/introduction-html5-video/
[6]: http://dev.w3.org/html5/html4-differences/
[7]: http://webkit.org/
[8]: http://www.codedread.com/svg-support-table.html
[9]: http://gs.statcounter.com/#browser_version-ww-monthly-200902-201003-bar
[10]: http://webkit.org/projects/svg/status.xml
[11]: http://blogs.msdn.com/ie/archive/2010/01/05/microsoft-joins-w3c-svg-working-group.aspx
[12]: http://www.adobe.com/svg/viewer/install
[13]: http://xmlgraphics.apache.org/batik/index.html
