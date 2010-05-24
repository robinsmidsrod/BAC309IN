
### Kan JavaScript-bibliotek som [Raphaël http://raphaeljs.com/] være et alternativ til SVG? ###

Raphael sitt JavaScript bibliotek baserer seg på SVG standarden, for å kunne vise
animasjoner og vektor grafikk i nettleseren. Den benytter også seg av VML teknologi
for å kunne vise vektorgrafikk og animasjoner selv i Internet Explorer.

Det eksister mange nettlesere idag, og det er like mye variasjoner i hvor stor del
av SVG standarden de ulike nettleserne støtter. Det er derfor lite gunstig for 
en utvikler som baserer seg på at f.eks grafikken skal se lik ut i alle nettlesere
ikke kan ta denne forutsetningen.

Det er her Raphael kommer inn i bildet, ettersom biblioteket hans baserer seg på SVG
standarden er mye av funksjonalitet også tilstedet i biblioteket. Ved å inkludere
samt benytte dette når man skal generere vektor grafikk slipper man å tenke på om
grafikken vil vises likt i de ulike nettleserne fordi biblioteket emulerer selv
funksjonalitet som ikke er tilgjenglig i SVG implementasjon for nettleseren. Derfor
kan være litt ekstra sikker på å få et resultat som er tilgjenglig for de aller aller
fleste.

Det eneste som skal til for å benytte Raphael sitt bibliotek er å plassere biblioteket
et sted på nettsiden, samt lage en import settninig i javascript delen hvor det er
nødvendig å bruke biblioteket for å lage grafikk.

En stor fordel ved å bruke biblioteket er at du får muligheten til å bruke vanlig
imperativ programmerings metodikk for å lage SVG grafikk. Dette gjør det f.eks
enkelere å multiplisere et element, eller bruke annen funksjonalitet som kommer
med standard JavaScript som f.eks if tester.

Dette er en stor fordel når man ser på antall gjentagelser man få i en tekstfil
med SVG markup. Ofte kan det være tidkrevende å endre f.eks en farge eller
størrelse på teksten til flere elementer ettersom dette defineres på flere
ulike steder i teksten. 

Raphaels har også en fordel som vi ser Flash mangler. Flash har ikke mulighet
til å ta ut informasjon fra DOM i nettleseren, og kan heller ikke snakke med
nettleseren direkte. Dette er ingen begrensning i Raphael sitt bibliotek siden
det er basert på JavaScript. 

Det er heller ikke behov for tredjeparts applikasjoner eller biblioteker på
klient siden. Dette legges med på selve nettsiden, slik at brukeren har en
ting mindre å bekymre seg med.

Raphael sitt javascript bibliotek er fortsatt bundet til hva Javascript og
SVG kan gjøre sammen, og det er derfor ikke noe grensespengende som er mulig
å oppnå ved bruk av dette biblioteket f.eks visning av lyd og bilde. Men
det er absolutt et godt bibliotek for med sikkerhet å kunne vise grafikk
og animasjoner likt til alle brukere med ulik nettleser.

Det kan også være et godt alternativ for utvikler som ikke er kjent
med den XML lignende markupen til SVG. Slik at de kan bruke den imperative
metodikken også når de trenger å vise animasjoner eller grafikk.

#### Fordeler ved Raphael sitt JavaScript bibliotek ####

- Crossbrowser functionality from same source.
- Creates native element to browser and DOM.
- Works in every large scale browser, including ie6
- 

#### Ulemper ved Raphael sitt Javascript bibliotek ####

-


