### 4.3 Kan JavaScript-bibliotek som Raphaël være et alternativ til SVG? ###

[Raphaël][1] er et JavaScript-bibliotek som baserer seg på SVG-standarden
for å kunne vise animasjoner og vektorgrafikk i nettleseren. Den benytter
seg også av VML for å kunne vise vektorgrafikk og animasjoner i Internet
Explorer. Dette gjør det mulig for webutviklere å ta i bruk et enkelt
verktøy for å vise animasjoner og vektorgrafikk, nemlig Raphaël.

Ved å benytte scriptet når det skal genereres vektor-grafikk på en nettside
slipper man å tenke på om grafikken vil vises likt i de ulike nettleserne.
Biblioteket emulerer funksjonalitet som ikke er tilgjenglig i
vektorgrafikk-implementasjonen til nettleseren. Derfor kan man være enda
sikrere på at innholdet blir vist på korrekt måte uavhengig av nettleser.

I prinsippet kan man ikke kalle Raphaël et alternativ til SVG fordi det
faktisk tar i bruk SVG og emulerer funksjonalitet som enda ikke er støttet
helt ut i de ulike nettleserne. Det kan heller være et godt hjelpemiddel for
webutviklere som er vant med en imperativ programmeringsform. Webutviklere
som vil ikke ønsker å sette seg grundig inn i en XML-syntaks for å kunne
utvikle SVG-filer direkte kan heller bruke et sett med bibliotek-funksjoner
for å lage grafikken de har behov for.

#### 4.3.1 Fordeler ved Raphaël ####

Selv om Raphaël ikke er et nytt alternativ til SVG-standarden er det
fortsatt et nyttig verktøy for utvikling av vektorgrafikk.

Raphaël gjør det mulig å lage vektorgrafikk ved å bruke [metodekall][2]
som man ville gjort i f.eks Java eller C++. Biblioteket har altså et
[imperativt][3] programmeringsfokus, i motsetning til SVG som er
[deklarativt][4]. Ved å bruke denne programmeringsformen er det enklere å
f.eks duplisere elementer og foreta valg basert på hendelser i koden.

SVG benytter en deklarativ programmeringsform i sine tekstfiler som kan
tolkes av nettleseren. For utviklere eller brukere som er kjente med f.eks
XML og HTML, som begge er deklarative språk, er det en kort læringskurve til
å kunne lage avanserte animasjoner. De som ikke er kjent med denne formen
for programmering kan ha mer nytte av f.eks Raphaël som lager
vektorgrafikk ved å bruke kjente programmeringsmetoder.

Det kan også være en tung affære å gjøre endringer på et SVG-element etter å
ha skrevet komplisert kode for animasjoner og grafikk. Det kan f.eks være at
det har blitt valgt feil farge, eller gjort en skrivefeil i en tekst som
blir definert flere steder for animasjon. I slike tilfeller kunne man
sluppet unna med mindre omskriving ved å bruke Raphaël og duplisert
elementer med en for-løkke.

#### 4.3.2 Ulemper ved Raphaël ####

Biblioteket er ikke direkte støttet av nettleseren. Det kreves at
biblioteket er inkludert i koden på nettsiden før eventuelle animasjoner vil
tegnes opp. Vi ser her noe av det samme som må til for å få blant annet
Flash og Silverlight til å fungere, men Raphaël er likevel bedre ettersom
det ikke er opp til brukeren å legge til noe ekstra, men opp til
webutvikleren.

I en optimal verden er tredjepartsmoduler som Flash og Silverlight byttet ut
med innebygd SVG-støtte som er er implementert identisk i alle nettlesere.
Siden vi enda ikke er kommet dit hen at SVG har full støtte i alle
nettlesere er det fortsatt nødvendig å måtte legge et lag i mellom nettleser
og klient for å få vist grafikk og animasjon på tvers av nettlesere.

Raphaël har tatt utgangspunkt i grafikk, samt animasjonsfunksjonaliteten,
i SVG-standarden. Denne funksjonaliteten har allerede blitt implementert i
de fleste nettlesere ved hjelp av SVG. Etterhvert som funksjonaliteten
utvikles videre kan man spørre seg om det faktisk er nødvendig med et eget
bibliotek for å oppnå funksjonalitet som senere vil eksistere i alle
nettlesere med SVG. Selv Microsoft har [annonsert][5] at de vil ha en
grunnleggende SVG-implementasjon klar i IE 9. Raphaël har i en lenger
periode gjort det enklere for webutvikler å lage animasjoner som fungerer i
alle nettlesere men vil bli overflødig så fort komplette implementasjoner av
SVG-standarden blir tilgjenglig i nettleserne.

Raphaël vil først og fremst være et [verktøy][6] for å bruke
vektorgrafikk-teknologien som er til stede i nettleserne. Biblioteket hadde
ikke fungert uten SVG- og VML-støtten som er tilgjengelig i nettleserne.
Inntil vi ser en jevn og god støtte for SVG i alle de store nettleserne er
det behov for biblioteker som Raphaël som gjør det mulig å utnytte felles
funksjonalitet i to inkompatible implementasjoner for vektorgrafikk.

[1]: http://raphaeljs.com "Raphaël - JavaScript Library, Dmitry Baranovskiy, lest 2010-05-27"
[2]: http://raphaeljs.com/reference.html "Raphaël Reference, Dmitry Baranovskiy, lest 2010-05-27"
[3]: http://en.wikipedia.org/wiki/Imperative_programming "Imperative Programming, Wikipedia, lest 2010-05-27"
[4]: http://en.wikipedia.org/wiki/Declarative_programming "Declarative Programming, Wikipedia, lest 2010-05-27"
[5]: http://blogs.msdn.com/b/ie/archive/2010/03/18/svg-in-ie9-roadmap.aspx "SVG in IE9 Roadmap, Jennifer Yu (Microsoft IE Team Member), 2010-03-18"
[6]: http://www.samuelclay.com/raphael/svg_open_paper.pdf "SVG Open 2009 Raphaël Paper, Samuel Clay, 2009-07-14"
