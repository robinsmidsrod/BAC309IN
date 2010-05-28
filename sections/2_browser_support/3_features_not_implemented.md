
### 2.3 Funksjonalitet ikke støttet i implementasjonene ###

Det finnes en mer detaljert oversikt over hvilke elementer de ulike nettleserne
støtter i forhold til SVG. Denne oversikten finnes på samme sted, som [prosentfordelingene][1].
Oversikten gir en veldig god indikasjon på hvilke områder av SVG-standarden som
ikke er implementert i de respektive nettleserne.

Det første vi legger merke til er at det finnes mange røde felter totalt. Fra
prosentfordelingen nevnt ovenfor frem går det klart at noen nettlesere har flere røde elementer 
enn andre. Det første som legges merke til er filtre, som inneholder store deler røde felter.
Disse gjør det mulig å legge til ulike effekter på bilder, som f.eks uklarhet, lys eller
skarpe kanter.

Mozilla Firefox har i sine siste versjoner hatt full støtte for filtre. Eneste versjon
som ikke hadde noen støtte for filtre var Firefox 2.0. Både 3.0, 3.5 og 3.6 har hatt
god støtte for filtre, med unntak av 3.5 som manglet støtte for displace filteret.

Opera har også hatt god støtte for disse elementene, bortsett fra versjon 8.5 hvor det
ikke fantes støtte i det hele tatt. Opera er også den eneste som har implementert filtre,
av nettlesere vi har sett på.

Både Chrome og Safari som begge baserer seg på Webkit har ingen støtte for filtre. Det
kan se ut som om Chrome har prøvd å få til støtte i versjon 5 beta, men denne ser
ut fra oversikten, relativt eksperimentel ut.

Det er generelt samme resultat på de resterende filterelementene som man finner på
tester litt lenger ned på [statussiden][1]. Dette er egentlig interessant, fordi
det viser at man rett og slett i noen nettlesere bare har droppet hele denne modulen.
Er det noe man har gjort med vilje, eller er det på grunn av arbeidet som ligger
under SVG-standarden og påvirker.

Det er derimot motsatt med font elementene, som gjør det mulig for SVG å tegne opp
bokstaver på ulike måter. Det ser ut som Webkit har implementert flere av font
elementene som igjen gjør det mulig for både Safari og Chrome å bruke disse.
Opera har også fått med disse i sin implementasjon av SVG, mens Firefox i de
fleste versjoner har feilet i å implementere disse.

Det er egentlig en viktig del av SVG standarden å kunne vise fonter korrekt i
nettleser, for at man i det hele tatt skal kunne lage en webside eller bruke
deler av SVG i en webside uten å måtte tenke på om det vil se annerledes ut i
i de ulike nettleserne. Siden font er et relativt viktig element når det gjelder
tekst på Web, gjør det at SVG ikke blir veldig brukelig slik det er
implementert i dag.

En annen del av oversikten er animasjonselementene. Det første vi oppdager er at Firefox
ikke har støtte for noen av aninimasjons elementene bortsett fra 3.7-Alpha. Aninimasjons 
elementene er bedre implementert i både Chrome og Safari, i alle fall i de siste versjonene. 
Noen elementer har kun blitt delvis implementert eller inneholder mangler, men det meste av 
animasjons elementene er implementert i både Chrome, Safari og Opera. Det kan se ut som 
vi får animasjonsstøtte når Firefox 3.7 kommer på markedet.

Det siste røde feltet er text elementer i SVG. Det kan se ut som Firefox har hatt
problemer med å implementere disse elementene i alle sine versjoner. De andre
nettleserne hatt en relativt feilfri implementasjon, men det er et par stykker som
enda ikke er helt fullført eller mangler.

Generelt kan det se ut som de fleste av nettleserne har fått det til når det kommer
til implementasjon av SVG-standarden, men det er relativt stor forskjell på
hvilke elementer som faktisk er støttet i de ulike nettleserne. Dette gjør det
vanskelig å ta høyde for spesiell funksjonalitet når man skal utvikle f.eks websider
med SVG innhold. Man kan heller ikke regne med at animasjoner fungerer som de skal, 
eller at fonten man har valgt å bruke vises likt i alle nettlesere. Dette er en
veldig svakhet, som gjør jobben til utviklere og designere vanskelig. Det er 
indikasjoner på at ting begynner å bli bedre jo høyere versjonsnummerne
blir på de ulike nettleserne. Dette kan bety at SVG-standarden kan bli brukt
mer aktivt i web applikasjoner.

Internet Explorer er ikke nevnt ovenfor fordi den ikke støtter SVG uten å
måtte ha installert en plugin for å vise SVG. Det er påbegynt arbeid med SVG
i Internet explorer i Januar 2010, noe som kan bety at vi i fremtiden kanskje får se
en Internet Explorer også med SVG støtte. Dette vil nok gjøre SVG mer kjent og vil
i beste fall øke bruken av SVG. Det er først da vi vil se 100% korrekte
implementasjoner av SVG. Foreløpig er det Opera som når høyest på listen, og
inneholder det aller meste av elementene.

[1]: http://www.codedread.com/svg-support-table.html
