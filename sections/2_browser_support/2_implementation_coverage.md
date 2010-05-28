
### 2.2 Dekningsgrad i implementasjonene ###

Mozilla Firefox har fått SVG-standarden bygd direkte inn i nettleseren. Mozilla har
en egen prosjektgruppe som jobber med SVG implementasjonen i Firefox.
Det er blitt opprettet en [statusside][7] hvor det ligger en oversikt over funksjonalitet
som pr idag er implementert. Det er enkelt å legge merke til at flere moduler har
deler som enda ikke er støttet. For å kunne sammenligne Mozilla sin SVG-implementasjon
men andre nettlesere, skal vi trekke ut moduler som ikke er støttet av Mozilla og
sammenligne disse mot andre nettlesere.

Moduler vi spesielt bør legge spesielt merke til:

 * [Text][1]
 * [Color-profile][2]
 * [Cursor][3]
 * [View][4]
 * [Animation][5]
 * [Font][6]

Ut fra [statussidene][7] kan vi konkludere med at SVG-implementasjonen i Mozilla har et
stykke igjen før alt fungerer. Vi ser blant annet at støtten for symboler, f.eks
japanske tegn er dårlig. Disse er ikke implementert i [tekst][1] modulen i Mozillas 
implementasjon av SVG. Det er heller ikke mulig å spesifisere eget utseende på 
musepekeren i [cursor-modulen][3]. Funksjonalitet nevnt over er ikke det viktigste som 
SVG-standarden implementer, derimot har vi [animasjon][5] og [font][6] som burde være 
veldig relevante i forhold til å bruke SVG aktivt i utvikling. Alle funksjoner under 
disse modulene er enten ikke implementert eller inneholder bugs. Noe av det som
antakelig kunne tiltrekke utviklere er enkel animasjon i nettapplikasjoner.

Opera har en av de bedre implementasjonene av SVG-standarden. Det ble også gjort en
[undersøkelse][8] av Jeff Schiller, hvor han benyttet en testpakke fra W3C for å gradere
støtten for SVG i de ulike nettleserne. Det er fortsatt moduler som mangler i Opera også,
som det gjør i Mozilla. Vi kan se ut fra [statussidene][9] til Opera, at
mye av den samme funksjonaliteten som manglet i Mozillas implementasjon heller ikke
eksisterer her. Det står blant annet definert på disse sidene at SVG-implementasjon
i Opera ikke støtter video eller lyd. Det er heller ikke støtte for symboler i fonter
eller f.eks japansk skriftspråk.

Støtte for lyd og video skal etter hvert bli integrert direkte i nettleseren ut fra
hva man kan lese om Operas [arbeid][10] med nettleseren. Dette vil da komme i
sammenheng med HTML5 som vil gjøre multimedia i nettlesere enklere. 

Mozilla Firefox baserer seg på [Gecko][11], som er en motor for å vise bilde og tekst i
nettleseren. Implementasjonen av SVG ble derfor gjort opp mot denne motoren.
Opera derimot har laget sin helt egen implementasjon, siden Opera ikke baserer seg
på noen separat motor. Dette gjør antagelig at Operas motor er mer tilrettelagt for SVG.

Googles Chrome og Apples Safari baserer seg derimot på [Webkit][12]. Webkit kan sammenlignes 
med Gecko motoren som Mozilla Firefox benytter, og er grunnstenen i nettleseren. 
Implementasjon av SVG er derfor gjort i Webkit. Vi vurderer derfor Webkit, ikke Chrome 
og Safari hver for seg.

Webkit har mange likheter med blant annet Mozilla, men ut fra [statussidene][13] ser
det ut til at det er mangler eller halveis implementasjoner på moduler som f.eks Mozilla
og Opera har implementert fullstendig. Text modulen har heller ikke her støtte for symboler,
som i Opera og Mozilla, og det kan virke som om dette er generelt vanskelig å implementere.
Webkit har heller ingen fullstending implementasjon av Filter modulen. Det er få som ikke 
er prøvd implementert men de fleste inneholder bugs eller er bare delvis støttet. Det Webkit 
har klart i motsetning til Mozilla er å implementere store deler av animasjonsmodulen, selv om 
mye ikke er fullstendig. Webkit har også implementert store deler av Font modulen, Mozilla og 
Opera ennå ikke har fått til.

Internet Explorer fra Microsoft har derimot ingen innbygget støtte for SVG.
Det ser nå lysere ut for Internet Explorer, ettersom det har blitt kjent at
Microsoft har [meldt seg inn i SVG WG][14], forhåpentligvis for å bygge
SVG-standarden inn i IE9. I Internet Explorer 8 og tidligere finnes det
ingen støtte for SVG-standarden, uten at det blir benyttet en ekstern
plugin. Adobe har f.eks laget en slik plugin som kan benyttes for å [vise
SVG i IE][15]. Det finnes også andre tillegg som kan installeres for å oppnå
SVG-støtte, blant annet [Batik toolkit fra Apache][16] som implementerer
SVG-spesifikasjonene.

[1]: http://www.w3.org/TR/SVG11/text.html "Text - SVG 1.1, W3C, 2003-01-14"
[2]: http://www.w3.org/TR/SVG11/color.html "Color - SVG 1.1, W3C, 2003-01-14"
[3]: http://www.w3.org/TR/SVG11/interact.html "Interact - SVG 1.1, W3C, 2003-01-14"
[4]: http://www.w3.org/TR/SVG11/linking.html "Linking - SVG 1.1, W3C, 2003-01-14"
[5]: http://www.w3.org/TR/SVG11/animate.html "Animate - SVG 1.1, W3C, 2003-01-14"
[6]: http://www.w3.org/TR/SVG11/fonts.html "Fonts - SVG 1.1, W3C, 2003-01-14"
[7]: http://www.mozilla.org/projects/svg/status.html "Mozilla SVG Status, Mozilla, lest 2010-03-25"
[8]: http://www.codedread.com/svg-support-table.html
[9]: http://www.opera.com/docs/specs/svg/ "SVG support in Opera 9, Opera, lest 2010-03-25"
[10]: http://www.opera.com/docs/specs/presto25/html5/ "Opera: HTML5 elements attributes and APIs support in Opera Presto 2.5, Opera, lest 2010-03-25"
[11]: https://developer.mozilla.org/en/Gecko "Gecko - MDC, Mozilla, 2010-03-12"
[12]: http://webkit.org/ "The Webkit Open Source Project, Webkit, lest 2010-03-25"
[13]: http://webkit.org/projects/svg/status.xml "WebKit SVG Status, Webkit, 2010-01-05"
[14]: http://blogs.msdn.com/b/ie/archive/2010/01/05/microsoft-joins-w3c-svg-working-group.aspx "Microsoft joins W3C SVG Working Group, Microsoft IE Team Blog, 2010-01-05"
[15]: http://www.adobe.com/svg/viewer/install/ "Adobe SVG Viewer, Adobe, lest 2010-03-25"
[16]: http://xmlgraphics.apache.org/batik/ "Batik Java SVG Toolkit, Apache Software Foundation, 2010-01-02"
