### Kan JavaScript-bibliotek som Raphaël være et alternativ til SVG? ###

[Raphaël](http://raphaeljs.com/) er et JavaScript-bibliotek som baserer seg
på SVG standarden for å kunne vise animasjoner og vektor grafikk i
nettleseren. Den benytter også seg av VML, som er Microsoft versjon av SVG,
for å kunne vise vektorgrafikk og animasjoner selv i Internet Explorer.
Dette gjør det mulig for utviklere og ta i bruk en enkel kilde for å vise
animasjoner og grafikk, nemlig Raphael sitt JavaScript bibliotek.

Ved å inkludere samt benytte dette når det skal genereres vektor grafikk slipper 
man å tenke på om grafikken vil vises likt i de ulike nettleserne fordi biblioteket 
emulerer selv funksjonalitet som ikke er tilgjenglig i SVG implementasjon for
nettlesere. Derfor kan man være enda litt sikrere på at innholdet vil bli vist på
korrekt måte uavhengi av nettleser.

I prinsippe kan man ikke kalle Raphael sitt JavaScript bibliotek et alternativ
til SVG siden den faktisk tar i bruk SVG, men emulerer funksjonalitet som enda
ikke er støttet hundre prosent i de ulike nettleserne. Det kan heller være et
godt hjelpemiddel for utvikler vant med en imperativ programmerings form. Som vil
slippe å sette seg grundig inn i f.eks XML syntaks for å kunne lese SVG filer
direkte, men heller bruke et sett med funksjoner for å lage grafikken det er behov
for.

#### Fordeler ved Raphaël sitt JavaScript bibliotek ####

Selv om ikke Raphaël sitt bibliotek kan være noen nytt alternativ til SVG
standarden er det fortsatt et nyttig verktøy for utvikling av vektor grafikk.

Raphael sitt JavaScript bibliotek gjør det mulig å lage grafikk ved å bruke
funksjoner som man ville gjort i f.eks Java eller C++. Biblioteket har altså
et imperativt programmerings fokus, i motsettning til SVG som er deklarativt.
Ved å bruke denne programmerings formen er det enklere å f.eks duplisere 
elementer eller ta valg basert på hendelser i koden. 

SVG benytter deklarativ programmerings form i sine tekstfiler som kan tolkes
av nettleseren. For utviklere eller brukere kjente med f.eks XML og HTML som
begge er deklarative språk, er det en kort lærningskurve for å kunne lage
avanserte animasjoner. De som ikke er kjent med denne formen for programmering
kan ha mer nytte av f.eks biblioteket til Raphael som lager grafikk ved å 
bruke kjent programmerings stil. 

Det kan også være en tung affære å gjøre endringer på et SVG element etter å
ha skrevet komplisert kode til animasjoner og grafikk. Det kan f.eks være at
det har blitt valgt feil farge, eller gjort en skrive feil i en tekst som blir
definert flere steder for animasjon. I slike tilfeller kunne man slippet unna
med mindre omskriving ved f.eks å bruke Raphael sitt bibliotek og duplisert
elementer med f.eks en for løkke. 

#### Ulemper ved bruk av Raphaël JavaScript-bibliotek ####

Biblioteket er ikke direkte støttet av nettleseren. Det kreves at et
bibliotek er importert i koden på nettsiden før eventuelle animasjoner
begynner å tegnes opp. Vi ser her noe av det samme som må til for å få
blant annet Flash og Silverlight til å fungere, men Raphael er alikvel
bedre ettersom det ikke er opp til brukeren å legge til noe ekstra, men
opp til utvikleren.

I en optimal verden er tredjeparts moduler som Flash og Silverlight byttet
ut med SVG funksjonalitet og denne er implementert med samme funksjonalitet
i alle nettlesere. Vi er enda ikke komme dit at SVG har full støtte i alle
nettlesere men det er fortsatt tungvindt å måtte legge et lag imellom nettlesere
og klient for å få vist grafikk og animasjon.

Raphael sitt bibliotek har tatt utgangspunkt i grafikk, samt animasjons
funksjonaliteten til SVG standarden. Dette har allerede blitt implementert
i de fleste nettlesere igjennom SVG. Etterhvert som dette utvikles videre
kan man spørre om det faktisk er nødvendig med et eget bibliotek for å oppnå
funksjonalitet som senere vil eksistere i alle nettlesere med SVG, selv Internet
Explorer har annonsert at de vil ha en SVG implementasjon ferdig i IE 9. Det
har i en lenger periode gjort det enklere for utvikler å lage animasjon som
fungere i alle nettlesere, men vil bli overflødig så fort fulle implementasjoner
av SVG blir tilgjenglig i nettlesere.

Raphael sitt Javascript bibliotek vil først og fremst være et verktøy for å
bruke SVG teknologien som allerede finnes i nettleserne. Det hadde ikke på
egenhånd fungert, om det ikke hadde SVG i bakhånden. Ettersom den bruker
store deler av SVG standarden for å kunne vise elementene som lages ved
hjelp av dette bilblioteket. 

Inntil vi ser en jevn og god støtte i alle de store nettleserne er det behov
for slike biblioteker som gjør det mulig å utnytte funksjonalitet som enda
ikke funger helt prikkfritt slik at vi kan bli kan kjent med standarden og
hva den kan brukes til i fremtiden.

FIXME: Legge lenker inn i teksten.

[1]: http://raphaeljs.com/
[2]: http://raphaeljs.com/reference.html
[3]: http://en.wikipedia.org/wiki/Imperative_programming
[4]: http://en.wikipedia.org/wiki/Declarative_programming
[5]: http://net.tutsplus.com/tutorials/javascript-ajax/an-introduction-to-the-raphael-js-library/ 
[6]: "Raphaels Paper - SVG Open 2009"
