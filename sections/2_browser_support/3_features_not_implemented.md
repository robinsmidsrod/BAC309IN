
# Funksjonalitet som ikke er implementert #

Det finnes også en mer detaljert oversikt over hvilke elementer de ulike nettleserne
støtter iforhold til SVG. Denne oversikten finnes på samme sted, som [prosent-fordelingene][8].
Oversikten gir en veldig god indikasjon på hvilke områder av SVG-standarden som
ikke er implementert i de respektive nettleserne.

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
tester litt lenger ned på [statussiden][8]. Noe som egentlig er interesant, fordi
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

