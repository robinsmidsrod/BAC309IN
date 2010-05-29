### 4.1 Hvordan utviklere benytter Adobe Flash fordi SVG ikke er tilgjengelig? ###

[Adobe Flash][1] har lenge vært en viktig del av vår hverdag på internett.
Reklame har fått et helt nytt medium med Flash. Det er enkelt å produsere
spennende video og grafikk som fanger brukerens oppmerksomhet. Det også
mange internett-sider som er utviklet fullt og helt i Flash, noe som vil gi
en helt spesiell brukeropplevelse.

Først og fremst er Flash en multimedia-plattform som nå vedlikeholdes av
[Adobe][1]. Det er mulig å lage interaktive nettsider ved å bruke Flash for
å vise video, lyd og animasjoner. Flash benytter vektor- og raster-grafikk
for å lage animasjoner.  Det gjør det mulig å lage animasjoner som kan
skaleres etter behov uten å miste detaljer (forutsatt at man ikke benytter
raster-grafikk).

Flash har også fått et objektorientert script-språk, [ActionScript][1], som utviklere kan
bruke for å øke funksjonaliteten i Flash-videoer. Dette kan for eksempel være at
man vil koble opp mot eksterne script og hente ned informasjon eller lagre
informasjon som blir skrevet inn.

Det eneste kravet for å vise Flash-animasjoner og videoer er at man installer en plugin
fra Adobe, [Adobe Flash Player][1].

#### 4.1.1 Fordeler ved Adobe Flash ####

Adobe Flash har lenge vært [markedsdominerende][2] når video, lyd og
animasjon skal vises i nettleseren. Alle har gjort seg vant med at en plugin
må installeres for å kunne se siste trailer av en kommende film eller en
videoreportasje fra en avis. Etter at Microsoft tok dette i bruk under
utvikling av [MSN-nettsidene][1] sine, har flere og flere fulgt etter. De
fleste internettsider man besøker idag inneholder Flash i en eller annen
form. Dette kan være alt fra reklame til nettsider bygget i Flash.

Utvikler som ønsker å bruke animasjoner eller video i sitt arbeid, kan være
sikker på at de aller fleste vil kunne vise innholdet om de benytter Flash
som teknologi. Utviklere kunne valgt å benytte f.eks SVG til denne oppgaven,
da også SVG gjør mye av den samme jobben som Flash gjør. SVG har midlertidig
ingen hundre prosent god implementasjon og ingen nettlesere støtter all
funksjonalitet SVG-standarden har å tilby. Internet Explorer støtter ingen
deler av SVG-standarden og det må også her brukes en [plugin][3].

#### 4.1.2 Ulemper ved Adobe Flash ####

Med tiden har vi blitt mer bevisst på hva vi benytter av applikasjoner og
tillegg for å kunne se det vi vil på nettet. Vi har også blitt mer bevisst
på hvilke teknologier vi støtter på bakgrunn av åpenhet mot brukermassen,
stabilitet og sikkerhet. Jobben som Adobe Flash gjør kunne og burde blitt
gjort med andre teknologier med bakgrunn i flere forhold.

Først kan vi se på [sikkerheten][4] i Adobe Flash opp igjennom årene, og det
er ingen lys verden vi får innblikk i. Adobe Flash er kanskje en av de store
synderne med tanke på sikkerhetshull og mulighet for å kunne kjøre skadelig
kode i klientens nettleser. Det ble gjort en undersøkelse av blant annet
[Trusteer][5] som sa at Adobe Flash var en av de mest brukte teknologiene er
for å kjøre skadelig kode på nettbrukeres maskiner.

For å kunne utvikle noe i Flash kreves det egne [verktøy][6] som kan kompilere og generere
koden som skrives slik at sluttresultatet kan vises i Adobe Flash
Player. Det er flere verktøy ute på markedet som gjør denne jobben, både gratis-verktøy
og kommersielle verktøy. Det er ofte at kommersielle verktøy må velges siden mange 
av gratis-verktøyene ikke gjør konverteringsjobben godt nok.

Utvikling av SVG krever mindre verktøy enn Flash. Utvikleren kan velge en teksteditor
de kjenner og kan bruke effekten uten tidskostnaden ved å måtte lære et nytt verktøy.
En SVG-fil kan enkelt testes underveis. Ettersom det ikke er behov for en ekstra plugin kan
utvikleren bare åpne SVG-filen i nettleseren. SVG er strukturert tekst i XML format, så
enhver utvikler med litt forståelse for XML-formatet kan enkelt tolke SVG-filer.

En ekstra fordel ved SVG er at formatet lagres som tekst. Dette gjør det mulig å
komprimere innholdet enda mer, ved å bruke f.eks [gzip][7]. 

Det er også viktig å nevne at Adobe Flash krever en egen [plugin][8] for å kjøre Flash
formatet. Dette fordi det ikke eksisterer noen implementasjon i nettleserne for å
kunne lese Flash direkte uten å benytte tredjepartstillegg.

SVG er implementert direkte i nettleseren og krever derfor ingen ekstra programvare
for å kunne vises. Dette gjør det enklere for brukeren å få informasjonen, samtidig
som det reduserer antall ekstra- og tredjeparts-programvare man må ha installert. Det
er også viktig å påpke at støtte for SVG ikke er helt fullstendig enda, men
dette forbedres daglig hos alle de store nettleserne. Per idag har flere av
de store mer enn god nok implementasjon for at SVG kan bli tatt i bruk av flere
webutviklere.

Adobe Flash er et [proprietært][9] prosjekt. Det er Adobe som eier alle
rettigheter til Flash Player og det er bare Adobe som kan rette feil eller
implementere ny funksjonalitet. Flash er blitt et format som brukes overalt
på internett, det er til og med flere store sider som baserer seg på å vise
video ved hjelp av Flash. Det at formatet kontrolleres av et enkelt firma
gjør det vanskelig for plattformer firmaet ikke er interessert i å støtte.

I motsetning til Flash er det flere andre teknologier, som blir kontrollert
av standardiseringsorganisasjoner, som kan benyttes til web-utvikling. CSS,
JavaScript og HTML er teknologier som er åpne for alle. Dette gjelder også
SVG, som er en åpen standard, og utviklere som er interesert i å være med i
utviklingen av disse kan selv involvere seg på forskjellige måter.

[1]: http://en.wikipedia.org/wiki/Adobe_Flash "Adobe Flash, Wikipedia, lest 2010-05-27"
[2]: http://www.adobe.com/products/player_census/flashplayer/version_penetration.html "Adobe Flash plugin usage worldwide, Adobe, lest 2010-05-27"
[3]: http://www.planetsvg.com/content/svg-solutions-internet-explorer "SVG solutions for Internet Explorer, PlanetSVG, 2009-02-15"
[4]: http://www.adobe.com/support/security/#flashplayer "Adobe Security bulletins and advisories, Adobe, lest 2010-05-27"
[5]: http://www.trusteer.com/files/Flash_Security_Hole_Advisory.pdf "Adobe Flash Security Hole Advisory, Trusteer, 2009-08-13"
[6]: http://en.wikipedia.org/wiki/SWF "SWF, Wikipedia, lest 2010-05-27"
[7]: http://www.w3.org/TR/SVG11/minimize.html "Minimize SVG File Size, W3C, 2003-01-14"
[8]: http://en.wikipedia.org/wiki/Adobe_Flash_Player "Adobe Flash Player, Adobe, lest 2010-05-27"
[9]: http://www.apple.com/hotnews/thoughts-on-flash "Thoughts on Flash, Apple, lest 2010-05-27"
