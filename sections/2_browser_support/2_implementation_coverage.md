
# Dekningsgrad i implementasjonene #

Mozilla Firefox har f�tt SVG-standarden byggd direkte inn i nettleseren. Mozilla har
en egen prosjekt gruppe som jobber med SVG implementasjonen, i hovedsak mot Firefox.
Det er blitt opprettet en [statusside][1] hvor det ligger en oversikt over funksjonalitet
som pr idag er implementert. Det er enkelt � legge merke til at flere moduler har
deler som enda ikke er st�ttet. For � kunne sammenligne Mozilla sin SVG-implementasjon
men andre nettlesere, skal vi trekke ut moduler som ikke er st�ttet av Mozilla og
sammenligne disse mot andre nettlesere.

Moduler vi b�r legge spesielt merke til
 * Text
 * Color-profile
 * Cursor
 * View
 * Animation
 * Font

SVG-implementasjon i Mozilla, kan vi utifra [statussidene][1], konkludere med at har et
stykke igjen f�r alt fungerer. Vi ser blant annet at st�tten for symboler, som f.eks i
japanske tegn eller i fonter, er d�rlig. Det er ikke implement i det hele tatt i text
modulen i Mozilla sin implementasjon av SVG. Det er heller ikke mulig � spesifisere eget
utsende p� pekeren igjennom cursor modulen. Funksjonalitetet nevnt over er ikke det
viktigste som SVG-standarden implementer, derimot har vi animasjon og font modulen
som burde v�re veldig relevante i forhold til � bruke SVG aktivt i utvikling. Alle
funksjoner under disse modulene er enten ikke implementert eller inneholder bugs. 
Noe av det som faktisk er flott med SVG er det � enkelt kunne lage animasjoner p� nett.

Opera har en av de bedre implementasjon av [SVG-standarden][2]. Det ble ogs� gjort en
unders�kelse av Jeff Schiller, hvor han benyttet en test pakke fra W3C for � gradere
st�tten for SVG i de ulike nettleserne. Det er fortsatt moduler som mangler i Opera ogs�,
som det ogs� gj�re i Mozilla. Vi kan se ut ifra [statussidene][4] til Opera, at
mye av den samme funksjonalitet som manglet i Mozilla sin implementasjon heller ikke
eksisterer her. Det st�r blant annet definert p� disse sidene at SVG-implementasjon
i Opera ikke st�tter video eller lyd. Det er ogs� ingen st�tte for sybolmer i fonter
eller f.eks japansk skriftspr�k som best�r av ulike tegn.

Lyd og video st�tte skal etterhvert bli integrert direkte i nettleseren ut i fra
hva man kan lese om Opera sitt videre arbeid med nettleseren. Dette vil da komme i
sammenheng med HTML5 som vil gj�re multimedia i nettlesere enklere. Da er det nok
naturlig og anta at det ikke er prioritert � implementer video eller lyd i SVG,
ettersom man uansett vil f� tilgang til dette igjennom HTML5 n�r det blir tilgjenglig.

Mozilla Firefox baserer seg p� Gecko, som er en motor for � vise bilde og tekst i
nettleseren, og implementasjonen av SVG ble derfor gjort opp i mot denne motoren.
Opera derimot har laget sin helt egen implementasjon, siden denne ikke baserer seg
p� noen separat motor. Alt er alts� byggd for � kun fungere mot Opera. Chrome, som
er Google sin nettlesere og relativt ny p� markedet, og Safari, Apple sin nettlesere
som f�lger med OSX, baserer seg derimot p� [Webkit][7]. Webkit kan sammenlignes med
Gecko motoren som Mozilla Firefox benytter, og er grunnstenen i nettleseren. 
Implementasjon av SVG er derfor gjort i Webkit, og vi sammenligner derfor Webkit,
ikke Chrome og Safari hver for seg.

Webkit har mange likheter med blant annet Mozilla, men ut ifra [statussidene][10] virker
det som det eksister mangler eller halveis implementasjoner p� moduler som f.eks Mozilla
og Opera har implementert fullstendig. Text modulen heller ikke her st�tte for symboler,
som i Opera og Mozilla, og det kan virke som dette er et generelt problem � implementere.
Webkit har heller ingen fullstending implementasjon av Filter modulen. Det er f� tall
som ikke er pr�vd implementert men de aller fleste inneholder bugs eller er delvis
st�ttet. Det Webkit har klart imotsettning til Mozilla er � implementere store deler av
Animation modulen, selv om mye ikke er fullstendig. Webkit har ogs� implementert store
deler av Font modulen, som enda ikke Mozilla og Opera har f�tt til.

Internet Explorer fra Microsoft har derimot ingen innbygget st�tte for SVG. Det ser n�
lyser ut for Internet Explorer, ettersom det har blitt kjent at Microsoft har satt seg ned
med SVGWG, SVG working group, for � bygge inn SVG-standarden forh�pentligvis i [IE9][11].
I Internet Explorer 8 og tidligere finnes det ingen st�tte for SVG-standarden, uten at
det blir benyttet en ekstern plugin. Adobe har f.eks laget en slik plugin som kan
benyttes for � vise SVG i [IE][12]. Det finnes ogs� andre tilegg som kan installeres for �
oppn� SVG st�tte, der i blant Batik toolkit fra Apache som implementere [SVG-spesifikasjonene][13].