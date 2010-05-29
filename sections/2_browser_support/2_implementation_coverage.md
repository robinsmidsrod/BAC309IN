### 2.2 Dekningsgrad i implementasjonene ###

Mozilla Firefox har bygd SVG-standarden direkte inn i nettleseren. Mozilla
har en egen prosjektgruppe som jobber med SVG-implementasjonen i Firefox.
Det er blitt opprettet en [status-side][7] hvor det ligger en oversikt over
funksjonalitet som per i dag er implementert. Denne blir løpende oppdatert.
Det er enkelt å legge merke til at flere moduler har deler som enda ikke er
støttet. Vi har valgt å basere sammenligningen vår på de modulene i
SVG-standarden Mozilla Firefox ikke har støtte for eller har en mangelfull
implementasjon av.

Moduler vi bør legge spesielt merke til:

 * [Text][1]
 * [Color Profile][2]
 * [Cursor][3]
 * [View][4]
 * [Animation][5]
 * [Font][6]

Ut fra [status-sidene][7] kan vi konkludere med at SVG-implementasjonen i
Firefox har et stykke igjen før alt fungerer fullgodt. Vi ser blant annet at
støtten for symboler, deriblant japanske tegn, er dårlig. Disse er ikke
implementert i [tekstmodulen][1] i Firefox' implementasjon av SVG. Det er
heller ikke mulig å spesifisere eget utseende på musepekeren i
[cursor-modulen][3]. Funksjonalitet nevnt over er ikke blant de mest
benyttede i SVG-standarden, derimot har vi [animasjon][5] og [tekst][6] som
burde være veldig relevant i forhold til bruk av SVG aktivt i web-utvikling.
All funksjonalitet under disse modulene er enten ikke implementert eller
inneholder feil.

Opera har en av de bedre implementasjonene av SVG-standarden. Jeff Schillers
[undersøkelse][8], som benytter en testpakke fra W3C for å gradere støtten
for SVG i de ulike nettleserne, bekrefter dette. Det er fortsatt moduler med
mangler i Opera, som det er i Mozilla. Vi kan se ut fra [status-sidene][9]
hos Opera at mye av den samme funksjonaliteten som mangler i Mozillas
implementasjon heller ikke eksisterer hos Opera. Det står blant annet
definert på disse sidene at SVG-implementasjon i Opera ikke støtter video
eller lyd. Det er heller ikke her støtte for symboler i fonter. Støtte for
lyd og video skal etter hvert bli integrert direkte i nettleseren ut fra hva
man kan lese om Operas [videre utviklingsarbeid][10] med nettleseren. Dette
er helt klart tett knyttet til arbeidet med støtte for HTML5, som vil gjøre
inkludering av multimedia i nettlesere enklere.

Mozilla Firefox baserer seg på [Gecko][11], som er en motor for å vise
bilder og tekst i nettleseren. SVG-støtte ble derfor implementert på toppen
av denne motoren. Opera derimot har laget en helt egen implementasjon siden
de ikke baserer seg på noen separat motor. Dette gjør det sannsynlig at
Operas motor er mer tilrettelagt for SVG.

Google Chrome og Apple Safari baserer seg derimot på [WebKit][12]. WebKit
kan sammenlignes med Gecko-motoren som Mozilla Firefox benytter, og er
grunnsteinen i nettleseren.  Implementasjon av SVG er derfor gjort i WebKit.
Vi vurderer derfor WebKit, ikke Chrome og Safari, som en enkelt
implementasjon.

WebKit har mange likheter med Mozilla, men ut fra [status-sidene][13] ser
det ut til at det er mangler eller ufullstendige implementasjoner på moduler
som f.eks Mozilla og Opera har implementert fullstendig. Text-modulen har
heller ikke her støtte for symboler, som i Opera og Mozilla, noe som kan
indikere at denne funksjonaliteten er vanskelig å implementere. WebKit har
heller ingen fullstendig implementasjon av Filter-modulen. Det er få moduler
som ikke er prøvd implementert, men de fleste inneholder feil eller er bare
delvis implementert. Det WebKit har klart i motsetning til Mozilla er å
implementere store deler av animasjonsmodulen, selv om det finnes mange
feil. WebKit har også implementert store deler av Font-modulen, noe Mozilla
og Opera ennå ikke har fått til.

Internet Explorer fra Microsoft har derimot ingen innbygget støtte for SVG.
Det ser nå lysere ut for Internet Explorer, ettersom det har blitt kjent at
Microsoft har [meldt seg inn i SVG WG][14], forhåpentligvis for å bygge
SVG-støtte inn i IE9. I Internet Explorer 8 og tidligere finnes det ingen
støtte for SVG-standarden uten at det blir benyttet en ekstern plugin.

[1]: http://www.w3.org/TR/SVG11/text.html "SVG 1.1 - Text module, W3C, 2003-01-14"
[2]: http://www.w3.org/TR/SVG11/color.html "SVG 1.1 - Color module, W3C, 2003-01-14"
[3]: http://www.w3.org/TR/SVG11/interact.html "SVG 1.1 - Interaction module, W3C, 2003-01-14"
[4]: http://www.w3.org/TR/SVG11/linking.html "SVG 1.1 - Linking module, W3C, 2003-01-14"
[5]: http://www.w3.org/TR/SVG11/animate.html "SVG 1.1 - Animation module, W3C, 2003-01-14"
[6]: http://www.w3.org/TR/SVG11/fonts.html "SVG 1.1 - Font module, W3C, 2003-01-14"
[7]: http://www.mozilla.org/projects/svg/status.html "Mozilla SVG Status, Mozilla SVG Team, lest 2010-03-25"
[8]: http://www.codedread.com/svg-support-table.html "SVG Support in browsers, Jeff Schiller, uthentet 2010-03-14"
[9]: http://www.opera.com/docs/specs/svg/ "SVG support in Opera 9, Opera, lest 2010-03-25"
[10]: http://www.opera.com/docs/specs/presto25/html5/ "Opera: HTML5 elements attributes and APIs support in Opera Presto 2.5, Opera, lest 2010-03-25"
[11]: https://developer.mozilla.org/en/Gecko "Gecko - MDC, Mozilla, 2010-03-12"
[12]: http://webkit.org/ "The WebKit Open Source Project, WebKit, lest 2010-03-25"
[13]: http://webkit.org/projects/svg/status.xml "WebKit SVG Status, WebKit, 2010-01-05"
[14]: http://blogs.msdn.com/b/ie/archive/2010/01/05/microsoft-joins-w3c-svg-working-group.aspx "Microsoft joins W3C SVG Working Group, Microsoft IE Team Blog, 2010-01-05"
