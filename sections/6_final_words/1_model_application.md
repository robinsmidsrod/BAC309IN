#### 6.1 Modellapplikasjonen ####

Å utvikle en applikasjon for å generere SVG var utfordrende. SVG er en
omfattende spesifikasjon og få overblikk over. Valget vi tok om å skrive
kapittel 1 før vi utviklet [SVG-generatoren][1] var nok svært smart, da det
tvang oss til å sette oss inn SVG sin syntaks før vi startet med
implementasjonen.

Under utviklingen av generatoren var det helt klart at det mest utfordrende
aspektet i SVG var å forstå koordinatsystemet, og hvordan man utførte
transformasjoner. Den andre store utfordringen var kalkulering av størrelse
på tekst. I flere av bitene av diagrammet har vi benyttet oss av
tilnærminger i steden for nøyaktige mål for tekst-størrelser. Hvis vi hadde
benyttet et bibliotek som Batik ville nok denne biten vært svært mye
enklere, fordi Batik har alle kalkulasjonene for beregning av størrelser
implementert.

Hvis hovedformålet med applikasjonen ikke hadde vært læring ville vi nok ha
benyttet Batik fra starten av. Det som er interessant å nevne er at selve
genereringen av SVG-kode er relativt godt isolert, og det burde være
relativt enkelt å bytte ut denne koden med funksjonalitet fra Batik. API-et
generatoren tilgjengeliggjør benytter seg kun av standard Java-klasser som
File og OutputStream for levering av XML-dataene. Implementasjonsdetaljer er
helt skjult ved hjelp av riktig innkapsling.

Under utviklingen av biblioteket bygde vi en liten [test-applikasjon][2] som
gjorde det enkelt å teste ut at API-et i biblioteket var brukbart fra
klientsiden. Dette gjorde det enkelt å sørge for at API-et var svært enkelt
og ikke ble bundet for sterkt til implementasjonsdetaljer i klienten.

Parallellt med arbeidet på biblioteket/generatoren arbeidet vi på
[desktop-applikasjonen][3]. Denne applikasjonen bruker mønsteret
Chain-Of-Responsibility (CoR) gjennomgående for å unngå kompleks
overføring av variabler som igjen fører til høy kobling. Siden API-et fra
biblioteket var designet med tanke på Model-View-Controller-mønsteret (MVC)
var det svært enkelt å bygge opp denne applikasjonen etter det samme
mønsteret. Swing-biblioteket til Java, som vi benyttet, baserer seg sterkt
på MVC-mønsteret. Desktop-applikasjonen tok seg sånn sett av View og
Controller-rollene, og benyttet klasser fra SVG-generatoren som Model.
Utfordringen var sånn sett mest å koble opp forskjellige Layout-klasser for
å få til den presentasjonen vi ønsket på brukergrensesnittet, samt å sørge
for at endringer i visningsobjektene propagerte riktig til modellobjektene
via kontrolleren.

[1]: http://github.com/robinsmidsrod/SVGChartLibrary "SVG Chart Generator Library, Robin Smidsrød, 2010-05-28"
[2]: http://github.com/robinsmidsrod/SVGChartTest "SVG Chart Library test application, Robin Smidsrød, 2010-05-28"
[3]: http://github.com/petterthunaes/SVGChartApp "SVG Chart Desktop Application, Petter Dahl Thunæs, 2010-05-28"
