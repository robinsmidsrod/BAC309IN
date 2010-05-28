### 4.3 Kan JavaScript-bibliotek som Raphaël være et alternativ til SVG? ###

[RaphaëlJS][1] er et JavaScript-bibliotek som baserer seg
på SVG standarden for å kunne vise animasjoner og vektorgrafikk i
nettleseren. Den benytter seg også av VML, som er Microsoft versjon av SVG,
for å kunne vise vektorgrafikk og animasjoner selv i Internet Explorer.
Dette gjør det mulig for utviklere å ta i bruk en enkel kilde for å vise
animasjoner og grafikk, nemlig Raphaels JavaScript bibliotek.

Ved å inkludere samt benytte dette når det skal genereres vektor grafikk slipper 
man å tenke på om grafikken vil vises likt i de ulike nettleserne fordi biblioteket selv 
emulerer funksjonalitet som ikke er tilgjenglig i SVG implementasjonen for
nettlesere. Derfor kan man være enda litt sikrere på at innholdet vil bli vist på
korrekt måte uavhengig av nettleser.

I prinsippet kan man ikke kalle Raphael sitt JavaScript bibliotek et alternativ
til SVG siden den faktisk tar i bruk SVG, men emulerer funksjonalitet som enda
ikke er støttet hundre prosent i de ulike nettleserne. Det kan heller være et
godt hjelpemiddel for utviklere vant med en imperativ programmerings form. Utviklere 
som vil slippe å sette seg grundig inn i f.eks XML syntaks for å kunne lese SVG filer
direkte, men heller bruke et sett med funksjoner for å lage grafikken det er behov
for.

#### 4.3.1 Fordeler ved Raphaël sitt JavaScript bibliotek ####

Selv om Raphaëls bibliotek ikke er et nytt alternativ til SVG
standarden er det fortsatt et nyttig verktøy for utvikling av vektorgrafikk.

Raphaels JavaScript bibliotek gjør det mulig å lage grafikk ved å bruke
[funksjoner][2] som man ville gjort i f.eks Java eller C++. Biblioteket har altså
et [imperativt][3] programmerings fokus, i motsetning til SVG som er [deklarativt][4].
Ved å bruke denne programmerings formen er det enklere å f.eks duplisere 
elementer eller ta valg basert på hendelser i koden. 

SVG benytter en deklarativ programmerings form i sine tekstfiler som kan tolkes
av nettleseren. For utviklere eller brukere som er kjente med f.eks XML og HTML som
begge er deklarative språk, er det en kort lærningskurve for å kunne lage
avanserte animasjoner. De som ikke er kjent med denne formen for programmering
kan ha mer nytte av f.eks biblioteket til Raphael som lager grafikk ved å 
bruke kjent programmeringsstil. 

Det kan også være en tung affære å gjøre endringer på et SVG element etter å
ha skrevet komplisert kode til animasjoner og grafikk. Det kan f.eks være at
det har blitt valgt feil farge, eller gjort en skrive feil i en tekst som blir
definert flere steder for animasjon. I slike tilfeller kunne man sluppet unna
med mindre omskriving ved f.eks å bruke Raphaels bibliotek og duplisert
elementer med f.eks en for-løkke. 

#### 4.3.2 Ulemper ved bruk av Raphaël JavaScript-bibliotek ####

Biblioteket er ikke direkte støttet av nettleseren. Det kreves at et
bibliotek er importert i koden på nettsiden før eventuelle animasjoner
begynner å tegnes opp. Vi ser her noe av det samme som må til for å få
blant annet Flash og Silverlight til å fungere, men Raphael er allikevel
bedre ettersom det ikke er opp til brukeren å legge til noe ekstra, men
opp til utvikleren.

I en optimal verden er tredjeparts moduler som Flash og Silverlight byttet
ut med SVG funksjonalitet og denne er implementert med samme funksjonalitet
i alle nettlesere. Vi er enda ikke komme dit at SVG har full støtte i alle
nettlesere men det er fortsatt tungvint å måtte legge et lag i mellom nettleser
og klient for å få vist grafikk og animasjon.

Raphaels bibliotek har tatt utgangspunkt i grafikk, samt animasjonsfunksjonaliteten 
til SVG standarden. Dette har allerede blitt implementert i de fleste nettlesere 
igjennom SVG. Etter hvert som dette utvikles videre
kan man spørre om det faktisk er nødvendig med et eget bibliotek for å oppnå
funksjonalitet som senere vil eksistere i alle nettlesere med SVG. Selv Internet
Explorer har [annonsert][5] at de vil ha en SVG implementasjon ferdig i IE 9. Raphaëls bibliotek
har i en lenger periode gjort det enklere for utvikler å lage animasjoner som
fungerer i alle nettlesere, men vil bli overflødig så fort fulle implementasjoner
av SVG blir tilgjenglig i nettleserne.

Raphaels Javascript bibliotek vil først og fremst være et [verktøy][6] for å
bruke SVG teknologien som allerede finnes i nettleserne. Det hadde ikke fungert uten SVG
ettersom den bruker store deler av SVG standarden for å kunne vise elementene som lages ved
hjelp av dette bilblioteket. 

Inntil vi ser en jevn og god støtte i alle de store nettleserne er det behov
for slike biblioteker som gjør det mulig å utnytte funksjonalitet som enda
ikke funger helt prikkfritt. Dermed kan vi bli kan kjent med standarden og
hva den kan brukes til i fremtiden.

[1]: http://raphaeljs.com "Raphaels - JavaScript library, RaphaelJs, read 2010-05-27"
[2]: http://raphaeljs.com/reference.html "Raphael Reference, RaphaelJs, read 2010-05-27"
[3]: http://en.wikipedia.org/wiki/Imperative_programming "Imperative Programming, Wikipeida, read 2010-05-27"
[4]: http://en.wikipedia.org/wiki/Declarative_programming "Declarative Programming, Wikipedia, read 2010-05-27"
[5]: http://blogs.msdn.com/b/ie/archive/2010/03/18/svg-in-ie9-roadmap.aspx "SVG in IE9 Roadmap, IEBlog, 2010-03-18"
[6]: http://www.samuelclay.com/raphael/svg_open_paper.pdf "Raphaels Paper - SVG Open 2009, Raphael, read 2010-05-27"
