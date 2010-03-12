# Hvor mye av SVG standaren støtter de ulike nettleserne? #
Nettlesere som alle har fått et rykte på dagens internett, har alle implementert
SVG-standarden til en viss grad. Støtten varier etter hvordan SVG blir implementert.
Det er for eksempel mulig å bygge SVG-standarden inn i nettleseren, eller det kan
benyttes et eksternt tilegg som gir SVG-støtte. Flere deler av standarden er for
eksempel støttet i Internet Explorer fordi man her må benytte en ekstern plugin, i
motsettning til Mozilla Firefox hvor dette er byggd inn i nettleseren.

Mozilla Firefox har fått SVG-standarden byggd direkte inn i nettleseren. Mozilla har
en egen prosjekt gruppe som jobber med SVG implementasjonen, i hovedsak mot Firefox.
Det er blitt opprettet en status-side[1] hvor det ligger en oversikt over funksjonalitet
som pr idag er implementert. Det er enkelt å legge merke til at flere moduler har
deler som enda ikke er støttet. For å kunne sammenligne Mozilla sin SVG-implementasjon
men andre nettlesere, skal vi trekke ut moduler som ikke er støttet av Mozilla og
sammenligne disse mot andre nettlesere.

Moduler vi bør legge spesielt merke til
 * Text
 * Color-profile
 * Cursor
 * View
 * Animation
 * Font

SVG-implementasjon i Mozilla, kan vi utifra status-sidene[1], konkludere med at har et
stykke igjen før alt fungerer. Vi ser blant annet at støtten for symboler, som f.eks i
japanske tegn eller i fonter, er dårlig. Det er ikke implement i det hele tatt i text
modulen i Mozilla sin implementasjon av SVG. Det er heller ikke mulig å spesifisere eget
utsende på pekeren igjennom cursor modulen. Funksjonalitetet nevnt over er ikke det
viktigste som SVG-standarden implementer, derimot har vi animasjon og font modulen
som burde være veldig relevante i forhold til å bruke SVG aktivt i utvikling. Alle
funksjoner under disse modulene er enten ikke implementert eller inneholder bugs. 
Noe av det som faktisk er flott med SVG er det å enkelt kunne lage animasjoner på nett.

Det står ikke konrekt informasjon om video, eller lyd er implementert i Mozilla sin
SVG-implementasjon. Dette har blant annet andre nettlesere gjort, og det fungerer utmerket
der for dette er implementert. 

<Finne informasjon om lyd og bilde i SVG-implementasjon til Mozilla>

Opera har en av de bedre implementasjon av SVG-standarden[2]. Det ble også gjort en
undersøkelse av Jeff Schiller, hvor han benyttet en test pakke fra W3C for å gradere
støtten for SVG i de ulike nettleserne. Det er fortsatt moduler som mangler i Opera også,
som det også gjøre i Mozilla. Vi kan se ut ifra status-sidene[4] til Opera, at
mye av den samme funksjonalitet som manglet i Mozilla sin implementasjon heller ikke
eksisterer her. Det står blant annet definert på disse sidene at SVG-implementasjon
i Opera ikke støtter video eller lyd. Det er også ingen støtte for sybolmer i fonter
eller f.eks japansk skriftspråk som består av ulike tegn.

Lyd og video støtte skal etterhvert bli integrert direkte i nettleseren ut i fra
hva man kan lese om Opera sitt videre arbeid med nettleseren. Dette vil da komme i
sammenheng med HTML5 som vil gjøre multimedia i nettlesere enklere. Da er det nok
naturlig og anta at det ikke er prioritert å implementer video eller lyd i SVG,
ettersom man uansett vil få tilgang til dette igjennom HTML5 når det blir tilgjenglig.

Mozilla Firefox baserer seg på Gecko, som er en motor for å vise bilde og tekst i
nettleseren, og implementasjonen av SVG ble derfor gjort opp i mot denne motoren.
Opera derimot har laget sin helt egen implementasjon, siden denne ikke baserer seg
på noen separat motor. Alt er altså byggd for å kun fungere mot Opera. Chrome, som
er Google sin nettlesere og relativt ny på markedet, og Safari, Apple sin nettlesere
som følger med OSX, baserer seg derimot på Webkit[7]. Webkit kan sammenlignes med
Gecko motoren som Mozilla Firefox benytter, og er grunnstenen i nettleseren. 
Implementasjon av SVG er derfor gjort i Webkit, og vi sammenligner derfor Webkit,
ikke Chrome og Safari hver for seg.

Webkit

[1] http://www.mozilla.org/projects/svg/status.html
[2] http://www.w3.org/Graphics/SVG/IG/wiki/SVG_Plugin_for_IE#Use_of_the_SVG_rendering_technology_present_in_web-browsers_with_native_SVG_support
[3] http://operawatch.com/news/2007/04/how-opera-ranks-with-its-svg-implementation-best-native-implementation.html
[4] http://www.opera.com/docs/specs/svg/
[5] http://dev.opera.com/articles/view/introduction-html5-video/
[6] http://dev.w3.org/html5/html4-differences/
[7] http://webkit.org/






























Støtten 
for SVG er ikke fullkommen i noen av nettleserne, men de fleste støtter store deler. 
Det finnes nettlesere som ikke har implementert SVG direkte, men benytter en plugin 
for å oppnå samme effekten. Microsoft sin Internet Explorer benytter blant annet denne
løsningen, for å vise SVG data. Mozilla, Safari, Opera og Chrome har alle innbygget støtte for SVG. 
Det er også liten forskjell for hvilken 
støtte som finnes i de ulike nettleserne. Det er altså de samme funksjonene innen 
SVG biblioteket som ikke fungerer i de ulike nettleserne.

Mozilla har implementert nesten alle aspekter av SVG standarden. Målet til Mozilla 
er å ha implementert hele Full 1.1 spesifikasjonen til SVG. Det er deler av SVG hvor 
det meste av standarden er implementert. Mozilla har f.eks implementert store deler 
av Text modulen, men mangler delene som har med "glyps" å gjøre. De store bitene som 
mangler i implementasjonen til Mozilla er Font og Animation modulen. Det er her ingen 
funksjoner som fungerer korrekt innenfor modulen. Det er prøvd å implementere deler 
av Animation, men det eksisterer bugs på disse til dags dato.
[http://www.mozilla.org/projects/svg/status.html]

Opera har i motsetning til Mozilla implementert helt på egenhånd. Siden Opera ikke 
bygger på Gecko motoren, måtte dette gjøres helt fra bunn. Opera har også 
implementert store deler av SVG standarden, men også her mangler det flere moduler. 
Som hos Mozilla mangler det støtte for "glyphs", men hos Opera har man har klart å 
implementere animasjons aspektet av SVG. Det er ikke hunder prosent, ettersom det 
mangler både lyd og video støtte. Det er heller ingen støtte for font eller cursor 
modulen som også Mozilla mangler. 
[http://www.opera.com/docs/specs/svg/]

Chrome og Safari baserer seg på Webkit som er en nettleser motor for å vise grafikk. 
Derfor vil det være naturlig å bruke statusen for SVG implementasjonen i Webkit 
isteden for å sammenlignende nettleserne. Ettersom disse benytter Webkit, og vil ha 
samme feil og mangler. Webkit har implementert store deler av SVG standarden, men også 
her mangler det flere moduler. Det finnes flere likheter med de andre nettlesernes 
mangler også i Webkit. Blant annet mangler det "glyph" støtte i tekst modulen, samt 
store deler av animation modulen. Det som er annerledes fra Webkit til f.eks Opera, 
er at det i webkit mangler støtte for flere filter. Webkit har derimot bedre støtte 
når det kommer til font modulen.
[http://webkit.org/projects/svg/status.xml]

Internet Explorer har ingen native støtte for SVG. Den baserer seg på at man benytter 
en form for plugin, hvor den mest kjente er produsert av Adobe. Denne støtter den fulle 
SVG standarden, inkludert både animasjonen og fonter. Det finnes også flere plugins 
som f.eks Batik SVG kit. Kiten er skrevet i Java, og har like god støtte som Adobe 
pluginen. Microsoft har planlagt og delta mer aktivt i SVG utviklingen, men inntil videre 
må man nøye seg med en plugin om man vil benytte SVG i Internet Explorer.
[http://www.planetsvg.com/content/svg-solutions-internet-explorer]

# SVG-støtte i nettlesere #