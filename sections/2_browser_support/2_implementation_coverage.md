
# Dekningsgrad i implementasjonene #

Mozilla Firefox har fått SVG-standarden byggd direkte inn i nettleseren. Mozilla har
en egen prosjekt gruppe som jobber med SVG implementasjonen, i hovedsak mot Firefox.
Det er blitt opprettet en [statusside][1] hvor det ligger en oversikt over funksjonalitet
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

SVG-implementasjon i Mozilla, kan vi utifra [statussidene][1], konkludere med at har et
stykke igjen før alt fungerer. Vi ser blant annet at støtten for symboler, som f.eks i
japanske tegn eller i fonter, er dårlig. Det er ikke implement i det hele tatt i text
modulen i Mozilla sin implementasjon av SVG. Det er heller ikke mulig å spesifisere eget
utsende på pekeren igjennom cursor modulen. Funksjonalitetet nevnt over er ikke det
viktigste som SVG-standarden implementer, derimot har vi animasjon og font modulen
som burde være veldig relevante i forhold til å bruke SVG aktivt i utvikling. Alle
funksjoner under disse modulene er enten ikke implementert eller inneholder bugs. 
Noe av det som faktisk er flott med SVG er det å enkelt kunne lage animasjoner på nett.

Opera har en av de bedre implementasjon av [SVG-standarden][2]. Det ble også gjort en
undersøkelse av Jeff Schiller, hvor han benyttet en test pakke fra W3C for å gradere
støtten for SVG i de ulike nettleserne. Det er fortsatt moduler som mangler i Opera også,
som det også gjøre i Mozilla. Vi kan se ut ifra [statussidene][4] til Opera, at
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
som følger med OSX, baserer seg derimot på [Webkit][7]. Webkit kan sammenlignes med
Gecko motoren som Mozilla Firefox benytter, og er grunnstenen i nettleseren. 
Implementasjon av SVG er derfor gjort i Webkit, og vi sammenligner derfor Webkit,
ikke Chrome og Safari hver for seg.

Webkit har mange likheter med blant annet Mozilla, men ut ifra [statussidene][10] virker
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
med SVGWG, SVG working group, for å bygge inn SVG-standarden forhåpentligvis i [IE9][11].
I Internet Explorer 8 og tidligere finnes det ingen støtte for SVG-standarden, uten at
det blir benyttet en ekstern plugin. Adobe har f.eks laget en slik plugin som kan
benyttes for å vise SVG i [IE][12]. Det finnes også andre tilegg som kan installeres for å
oppnå SVG støtte, der i blant Batik toolkit fra Apache som implementere [SVG-spesifikasjonene][13].