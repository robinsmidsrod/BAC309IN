
# Støtte for SVG i nettlesere #

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

Webkit har mange likheter med blant annet Mozilla, men ut ifra status-sidene[10] virker
det som det eksister mangler eller halveis implementasjoner på moduler som f.eks Mozilla
og Opera har implementert fullstendig. Text modulen heller ikke her støtte for symboler,
som i Opera og Mozilla, og det kan virke som dette er et generelt problem å implementere.
Webkit har heller ingen fullstending implementasjon av Filter modulen. Det er få tall
som ikke er prøvd implementert men de aller fleste inneholder bugs eller er delvis
støttet. Det Webkit har klart imotsettning til Mozilla er å implementere store deler av
Animation modulen, selv om mye ikke er fullstendig. Webkit har også implementert store
deler av Font modulen, som enda ikke Mozilla og Opera har fått til.

Internet Explorer fra Microsoft har derimot ingen innbygget støtte for SVG. Det ser nå
lyser ut for Internet Explorer, ettersom det har blitt kjent at Microsoft har satt seg ned
med SVGWG, SVG working group, for å bygge inn SVG-standarden forhåpentligvis i IE9 [11].
I Internet Explorer 8 og tidligere finnes det ingen støtte for SVG-standarden, uten at
det blir benyttet en ekstern plugin. Adobe har f.eks laget en slik plugin som kan
benyttes for å vise SVG i IE[12]. Det finnes også andre tilegg som kan installeres for å
oppnå SVG støtte, der i blant Batik toolkit fra Apache som implementere SVG
spesifikasjonene[13].

Jeff Schiller, som er en aktiv deltaker i SVGIG eller SVG interest group, har laget
oversikt, tilgjenglig på nett[8], over hvilke deler av SVG-implementasjon som er
tilgjenglig i de ulike nettleserne. Det er en oversikt som tar for seg både browser
og andre applikasjoner som implementere SVG-standarden. Vår oppgave tar ikke
utgangspunkt i de andre applikasjonene er spesifsert her, men kun nettlesere som
er relevant og i bruk pr i dag. Det finnes gode statestikker på nettet over hvilke
nettlesere som er relevante for tiden, blant annet har statcounter[9] en veldig
god oversikt. Ut ifra denne oversikten kom vi frem til følgende nettlesere som
skal vurderes opp mot SVG-standarden.

 * Microsoft Internet Explorer 7 / 8
 * Mozilla Firefox 2.0 / 3.0 / 3.5 / 3.6
 * Google Chrome 2(Nightly-build) / 4
 * Opera 9.6(9.5 er nærmeste) / 10.0
 * Apple Safari 4

Alle nettlesere er godt representert på internett idag, og kjent av internett
brukere i hele verden.

På informasjon siden om SVG-status[8] i de ulike nettlesere ligger det også en prosent
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

Det finnes også en mer detaljert oversikt over hvilke elementer de ulike nettleserne
støtter iforhold til SVG. Denne oversikten finnes på samme sted, som prosent
fordelingene[8]. Oversikten gir en veldig god indikasjon på hvilke områder av SVG
standarden som ikke er implementert i de respektive nettleserne.

Det første vi legger merke til er at det finnes mange røde felter totalt. Det er så
klart noen nettlesere som har flere rød felter enn andre som man kan se utifra prosent
fordelingen som ble nevnt over. Første som virkelig er merket med røde felter er filtre.
Disse gjør det mulig å legge til ulike effekter på bilder, som f.eks uklarhet, lys eller
skarpe kanter.

Mozilla Firefox har i sine siste versjoner hatt full støtte for filtre. Eneste versjon
som ikke hadde noen støtte for filtre var Firefox 2.0. Både 3.0, 3.5 og 3.6 har hatt
god støtte for filtre, med unntak av 3.5 som manglet støtte for displace filteret.

Opera har også hatt god støtte for disse elementene, bortsett fra versjon 8.5 hvor det
ikke fantes støtte i det hele tatt. Det er også de eneste som har implementert filtre
av nettlesere vi har sett på.

Både Chrome og Safari som begge baserer seg på Webkit har ingen støtte for filtre. Det
kan se ut som at Chrome har prøvd å få til støtte i versjoen 5 beta, men denne ser
utifra oversikten relativt eksperimentel ut.

Det er generelt samme resultat på de resterende filter elementene som man finner på
tester litt lenger ned på status siden[8]. Noe som egentlig er interesant, fordi
det viser at man rett og slett i noen nettlesere bare har droppet hele denne modulen.
Er det noe man har gjort med vilje, eller er det på grunn av arbeidet som ligger
under SVG-standarden og påvirker.

Det er derimot motsatt med font elementene, som gjør det mulig for SVG å tegne opp
bokstaver på ulike måter. Det ser ut som Webkit har implementert flere av font
elementene som igjen gjør det mulig for både Safari og Chrome og bruke disse.
Opera har også fått med disse i sin implementasjon av SVG, men Firefox har i de
fleste versjoner feilet i å implementere disse.

Det er egentlig en viktig del av SVG standarden og kunne vise fonter korrekt i
nettleser, for at man i det hele tatt skal kunne lage en webside eller bruke
deler av SVG i en webside uten å måtte tenke på om det vil se annerledes ut i
i de ulike nettleserne. For en designer og utvikler gjør dette, font er et
releativt viktig element når det kommer til tekst på web, at SVG ikke blir
veldig bruklig som det er implementert idag.

En annen bit oversikten er animasjons elementene. Det første vi oppdager er at Firefox
ikke har støtte for noen av aninimasjons elemtene bortsett fra 3.7-Alpha. I forhold
til andre nettlesere som har f.eks har vært dårligere enn Firefox på andre ting.
Vi kan f.eks nevne Safari og Chrome, som i mange tilfeller mangler implementasjon av
elementer Firefox har fått til. Aninimasjons elementene er bedre implementert i både
Chrome og Safari, iallefall i de siste versjonene. Det er elementer som kun har blitt
implementert halveis eller inneholder mangler men det meste av animasjons elementene
er implementert i både Chrome, Safari og Opera. Det kan se ut som vi får aninimasjons
støtte når Firefox 3.7 når markedet.

Det siste røde feltet er text elementer i SVG. Det kan se ut som Firefox har hatt
problemer med å implementere disse elementene i alle sine versjoner. De andre
nettleserne hatt en relativt feilfri implementasjon men det er et par stykker som
enda ikke er helt fullført eller mangler.

Generelt kan det se ut som de fleste av nettleserne har fått det til når det kommer
til implementasjons av SVG-standarden, men det er relativt stor forskjell på
hvilke elementer som faktisk er støttet i de ulike nettleserne. Dette gjør det
vanskelig å ta høyde for spesiell funksjonalitet når man skal utvikle f.eks websider
med SVG innhold og man ikke kan regne med at animasjoner fungerer som de skal, eller
om fonten man har valgt å bruke vises likt i allefall nettlesere. Dette er en
veldig svakhet, som gjør jobben til utviklere og designere vanskelig. Det kan være
en indikasjon på at ting begynner å bli bedre ettersom jo høyere versjons nummerne
blir på de ulike nettleserne. Dette kan bety at SVG-standarden kan bli brukt
mer aktivt i web applikasjoner.

Internet explorer ikke nevnt ovenfor av en grunn, den støtter ikke SVG uten å
måtte ha installert en plugin for å vise SVG. Det er påbegynt arbeid med SVG
i Internet explorer i Januar 2010. Noe som kan bety at vi kanskje får se
en Internet Explorer også med SVG støtte. Dette vil nok gjøre SVG mer kjent og vil
i beste tilfelle øke bruken av SVG. Det er først da vi vil se 100% korrekte
implementasjon av SVG. Foreløpig er det Opera som når høyest på listen, og
inneholder det aller meste av elementene.

[1] http://www.mozilla.org/projects/svg/status.html
[2] http://www.w3.org/Graphics/SVG/IG/wiki/SVG_Plugin_for_IE#Use_of_the_SVG_rendering_technology_present_in_web-browsers_with_native_SVG_support
[3] http://operawatch.com/news/2007/04/how-opera-ranks-with-its-svg-implementation-best-native-implementation.html
[4] http://www.opera.com/docs/specs/svg/
[5] http://dev.opera.com/articles/view/introduction-html5-video/
[6] http://dev.w3.org/html5/html4-differences/
[7] http://webkit.org/
[8] http://www.codedread.com/svg-support-table.html
[9] http://gs.statcounter.com/#browser_version-ww-monthly-200902-201003-bar
[10] http://webkit.org/projects/svg/status.xml
[11] http://blogs.msdn.com/ie/archive/2010/01/05/microsoft-joins-w3c-svg-working-group.aspx
[12] http://www.adobe.com/svg/viewer/install
[13] http://xmlgraphics.apache.org/batik/index.html
