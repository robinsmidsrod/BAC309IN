### 2.3 Funksjonalitet ikke støttet i implementasjonene ###

Det finnes en mer detaljert oversikt over hvilke elementer de ulike
nettleserne støtter i forhold til SVG på samme sted som
[prosentfordelingsoversikten][1]. Oversikten gir en veldig god indikasjon på
hvilke områder av SVG-standarden som ikke er implementert i de respektive
nettleserne.

Jeff Schiller gir følgende [beskrivelse av fargekodene][2]:

> I use a top secret scoring system ... ok, well actually I just use GREEN
> for "Pass" (2 points), YELLOW for "Almost Pass" (1 point), RED for "Fail"
> (0 points) and BLACK for "Fail with Crash" (-1 point).  The "Almost Pass"
> scoring is subjective, so think of it as me giving out points for trying.

Det første vi legger merke til er at det finnes mange røde felter totalt.
Fra prosentfordelingen nevnt ovenfor fremgår det klart at noen nettlesere
har flere røde elementer enn andre. Det første som legges merke til er
filtre, som inneholder store deler røde felter. Disse gjør det mulig å legge
til ulike effekter på bilder, som f.eks uklarhet, lys eller uskarpe kanter.

Mozilla Firefox har i sine siste versjoner hatt full støtte for filtre.
Eneste versjon som ikke hadde støtte for filtre var Firefox 2.0. Både 3.0,
3.5 og 3.6 har hatt god støtte for filtre, med unntak av 3.5 som manglet
støtte for displace-filteret.

Opera har også hatt god støtte for filter-elementene, bortsett fra versjon
8.5 hvor det ikke fantes støtte i det hele tatt.

Både Chrome og Safari, som begge baserer seg på WebKit, har ingen støtte for
filtre. Det kan se ut som om Chrome har prøvd å få til støtte i versjon 5
beta, men denne ser ut fra oversikten, relativt eksperimentell ut.

Det er generelt samme resultat på de resterende filter-elementene som man
finner på tester litt lenger ned på [status-siden][1]. Dette er egentlig
interessant, fordi det viser at man rett og slett i noen nettlesere bare har
droppet hele denne modulen.

Det er derimot motsatt med font-elementene, som gjør det mulig for SVG å
tegne opp bokstaver på ulike måter. Det ser ut som WebKit har implementert
flere av font-elementene som igjen gjør det mulig for både Safari og Chrome
å bruke disse. Opera har også fått med disse i sin implementasjon av SVG,
mens Firefox i de fleste versjoner ikke har klart å implementere disse uten
feil.

Det er egentlig en viktig del av SVG-standarden å kunne vise fonter korrekt
i en nettleser. Siden font-modulen er et så viktig element når det gjelder
tekst på internett, kan det diskuteres om SVG, slik standarden er
implementert i dag, er veldig brukelig for webutviklere.

En annen del av oversikten er animasjonselementene. Det første vi oppdager
er at Firefox ikke har støtte for noen av aninimasjonselementene bortsett
fra 3.7-Alpha. Animasjons-elementene er bedre implementert i både Chrome og
Safari, i det minste i de siste versjonene.  Noen elementer har kun blitt
delvis implementert eller inneholder mangler, men det meste av
animasjons-elementene er implementert i både Chrome, Safari og Opera. Det
kan se ut som vi får animasjon-støtte når Firefox 3.7 kommer på markedet.

Det siste røde feltet er text-elementer i SVG. Det kan se ut som Mozilla har
hatt problemer med å implementere disse elementene i alle sine versjoner av
Firefox. De andre nettleserne har relativt feilfrie implementasjoner, men
det er et par stykker som enda ikke er helt komplette eller har feil.

Generelt kan det se ut som de fleste av nettleserne har fått det til når det
kommer til implementasjon av SVG-standarden, men det er relativt stor
forskjell på hvilke elementer som faktisk er støttet i de ulike nettleserne.
Dette gjør det vanskelig å ta høyde for spesiell funksjonalitet når man skal
utvikle websider med SVG-innhold. Man kan heller ikke regne med at
animasjoner fungerer som de skal, eller at skrifttypen man har valgt å bruke
vises likt i alle nettlesere. Dette er en stor svakhet som gjør jobben til
webutviklere og webdesignere vanskelig. Det er indikasjoner på at ting blir
bedre og bedre ettersom versjonsnummeret øker på de ulike nettleserne.

Internet Explorer er ikke nevnt ovenfor fordi den ikke støtter SVG uten å
installere et tredjepartstillegg for å vise SVG. Det er påbegynt arbeid med
SVG i Internet Explorer i januar 2010, noe som kan bety at vi i fremtiden
kanskje får se en Internet Explorer-versjon også med SVG-støtte. Dette antar
vi vil gjøre SVG mer kjent og forhåpentligvis vil øke bruken av SVG.

Så langt er det Opera som har førsteplass og innehar den mest komplette
implementasjonen.

[1]: http://www.codedread.com/svg-support-table.html "SVG Support in web browsers, Jeff Schiller, uthentet 2010-03-14"
[2]: http://www.codedread.com/svg-support.php "SVG Support in web browsers, Jeff Schiller, lest 2010-05-29"
