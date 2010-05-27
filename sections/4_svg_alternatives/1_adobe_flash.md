### Hvordan benytter utviklere Adobe Flash fordi SVG ikke er tilgjengelig? ###

Adobe Flash har lenge vært en viktig del av vår hverdag på internett. Reklamsjon er
blitt gitt et helt nytt medium med Flash. Da det enkelt nå kan produseres spennende
snutter som fanger brukerens oppmerksomhet. Det også mange sider som er utviklet
fult og helt i Flash, som vil lage en helt spesiell bruker opplevelse. 

Først og fremst er Flash en multimedia plattform som nå vedlikeholdes av [Adobe][1]. Det
er mulig å lage interaktive nettsider ved å bruke Flash for å vise video, lyd og
animasjoner. [Flash][1] benytter vektor og raster grafikk for å lage animasjoner. 
Det gjør det mulig å lage animasjoner som kan skaleres etterbehov uten at man mister 
skarpheten. Dette er en av fordelene ved vektor-grafikk.

Flash har også fått et objektorient script språk, [ActionScript][1], som utviklere kan
bruke for å øke funksjonalitet i Flash snutten. Dette kan for eksempel være at
man vil koble opp mot eksterne script og hente ned informasjon eller lagre
informasjonen som blir skrevet inn.

Eneste kravet for å vise flash animasjoner og videoer er at man installer en plugin
fra adobe, [Adobe Flash Player][1].

#### Fordeler ved Adobe Flash ####

Adobe Flash har lenge vært [markedsdominerende][2] når video, lyd og animasjon skal vises
i nettleseren. Alle har gjort seg vant med at en plugin må installeres for å kunne se
siste trailer av en kommende film eller en video reportasje fra en avis. Etter at
Microsoft tok i bruk under utvikling av MSN [nettsidene][1] sine, har flere og flere fulgt etter.
Idag benytter store deler av nettsidene vi besøker flash på deler eller hele siden.

Utvikler som ønsker å bruke animasjoner eller video i sitt arbeid, kan være sikker
på at de aller fleste vil kunne vise innholdet om de benytter Flash som teknologi.
Utviklere kunne valgt å benytte f.eks SVG til denne oppgaven, da også SVG gjør mye
av den samme jobben som Flash gjør, men SVG har ingen hundre prosent god
implementasjon og ingen nettlesere støtter all funksjonalitet SVG standarden har å
tilby. Internet Explorer støtter ingen deler av SVG standarden, og det må her
brukes en [plugin][3] uansett.


#### Ulemper ved Adobe Flash ####

Med tiden har vi blitt mer bevist på hva vi benytter av applikasjoner og tillegg
for å kunne se det vi vil på nettet. Vi har også blitt mer bevist på hvilke teknologier
vi støtter på bakgrunn av åpenhet mot brukermassen, stabilitet og sikkerhet. Jobben
som Adobe Flash gjør kunne og burde blitt gjort med andre teknologier med bakgrunn
i flere punkter.

Først kan vi se på [sikkerheten][4] i Adobe Flash opp igjennom årene, og det er ingen lys
verden vi får innblikk i. Adobe Flash er kanskje en av de store synderne med tanke
på sikkerhetshull og mulighet for å kunne eksekvere skadelig kode på klient siden. Det
ble gjort en undersøkelse av blant annet [Trusteer][5] sa at Adobe Flash var en
av de mest brukte teknologien for å eksekvere skadeling kode på nettbrukeres maskiner.

For å kunne utvikle noe i Flash kreves det egene [verktøy][6] som kan kompilere og generere
koden som skrives slik at vi sluttresultatet kan vises i nettleseren eller Adobe Flash
Player. Det er en stor del verktøy ute på markedet som gjør denne jobben, både gratis
og komersielle verktøy. Det er ofte at komersielle verktøy må velges siden, siden
mange av gratis verktøyene ikke gjør konverterings jobben godt nok.

Utvikling av SVG krever mindre verktøy enn Flash. Utvikleren kan velge en tekst editor
de kjenner og kan bruke effekten uten tidskostnaden ved å måtte lære et nytt verktøy.
En SVG kan enkelt testes underveis, ettersom det ikke er behov en ekstra plugin kan
utvikleren bare åpne SVGen i nettleseren. SVG er strukturert tekst i XML format, så
for en hver utvikler med litt forståelse for XML formatet kan enkelt tolke SVG filer.

En ekstra fordel ved SVG er at formatet lagres som tekst. Dette gjør det mulig å
komprimere innholdet enda mer, ved å bruke f.eks [gzip][7]. 

Det er også viktig å nevne at Adobe Flash krever en egen [plugin][8] for å kjøre Flash
formatet. Dette fordi det ikke eksister noen implementasjon i nettleserne for å
kunne lese Flash direkte uten å benytte tredjeparts moduler.

SVG er implementert direkte i nettleseren og krever derfor ingen ekstra programvare
for å kunne vises. Dette gjør det enklere for brukeren å få informasjonen, samtidig
som det reduserer antall ekstra og tredjeparts programvare man må ha installert. Det
er også viktig å påpke at støtte for SVG ikke er helt hundre prosent enda, men
dette forbedres daglig hos alle de store nettleserne og pr idag er har flere av
de store mer en god nok implementasjon for at SVG kan bli tatt i bruk av flere
utviklere.

Adobe Flash er et hundre prosent [propertiært][9] prosjekt. Det er Adobe som eier alle
rettigheter til formatet og det er bare Adobe som kan rette feil eller implementere
ny funksjonalitet. Flash er blitt et format som brukes overalt på internett, det
er til og med flere store sider som baserer seg på å vise video ved hjelp av Flash.
Det er derfor skremmende at dette ikke er en teknologi som også er tilgjenglig
for allmenheten og kontrollert av et sentralt organ.

I motsettning til Flash er flere andre teknologier som blir benyttet på nettsider
og kontrollert av en sentral enhet hvor store aktør innenfor internett markedet
idag åpne standarer. CSS, JavaScript og HTML er teknologier som er åpne for alle,
er med å bestemmer. Dette gjelder også for SVG som er en åpen standard, og utviklere
som er interesert i å være med i utvikling kan selv ta ansvar for å rapportere feil.

[1]: http://en.wikipedia.org/wiki/Adobe_Flash "Adobe Flash, Wikipedia, read 2010-05-27"
[2]: http://www.adobe.com/products/player_census/flashplayer/version_penetration.html "Adobe Flash plugin usage worldwide, Adobe, read 2010-05-27"
[3]: http://www.planetsvg.com/content/svg-solutions-internet-explorer "SVG solutions for Internet Explorer, PlanetSVG, 2009-02-15"
[4]: http://www.adobe.com/support/security/#flashplayer "Adobe Security bulletins and advisories, Adobe, read 2010-05-27"
[5]: http://www.trusteer.com/files/Flash_Security_Hole_Advisory.pdf "Adobe Flash Security Hole Advisory, Trusteer, 2009-08-13"
[6]: http://en.wikipedia.org/wiki/SWF "SWF, Wikipedia, read 2010-05-27"
[7]: http://www.w3.org/TR/SVG11/minimize.html "Minimize SVG File Size, W3C, 2003-01-14"
[8]: http://en.wikipedia.org/wiki/Adobe_Flash_Player "Adobe Flash Player, Adobe, read 2010-05-27"
[9]: http://www.apple.com/hotnews/thoughts-on-flash "Thoughts on Flash, Apple, read 2010-05-27"