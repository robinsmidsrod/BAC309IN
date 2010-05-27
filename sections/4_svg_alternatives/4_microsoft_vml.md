### Microsoft VML, et alternativ til SVG ###

VML har samme [deklarative fokuset][1] som SVG, og benytter også [XML syntaks][1]
for å lage grafikk og animasjoner. Det som er annerledes med VML er at produket
kommet fra Microsoft, og gjør mye av jobben SVG gjør for de fleste store
nettlesere idag for Internet Explorer.

VML er et propertiært språk utviklet av Microsoft som ble [presentert for W3C][2]
som en ny standard for animasjon og multimedia på nett. SVG valgte bort dette
språket til fordel for SVG.

Etter at W3C startet utviklingen av SVG isteden for VML, ble arbeidet med VML
[avsluttet][2]. Selv om utviklingen ble avsluttet har Microsoft valgt og fortsette
implementering av teknologien i nettleserene sine fra Internet Explorer 5.5 og
oppover. Dette gjør det mulig for utviklere også idag og bruke VML for å vise
animasjoner og grafikk på samme måte som SVG.

#### Fordeler ved Microsoft VML ####

VML er det eneste språket som ligner SVG som fungerer i Internet Explorer. Det
funger også bra, og kan vise både [grafikk og animasjoner][1] som SVG kan gjøre i andre
nettlesere. Det gjør at VML foreløpig er veldig nyttig for utviklere som et språk
likt SVG for å ha en form for cross-browser support i grafikken de lager. SVG
har enda ikke kommet dit at Internet Explorer støtter standarden, og det er derfor
behov for VML enda liten stund til.

En annen fordel med VML er at det i forhold til f.eks språk som Flash og
Silverlight bruker [XML stuktur][1]. Dette er samme struktur som SVG bruker for å vise
grafikk og animasjoner. Dette gjør for det første at koden er liten i størrelse
og kan enkelt komprimeres. Det er også enkelt for utvikler som har jobbet med
SVG og forstå strukturen i VML. Sammenligning av syntax viser store forskjeller,
men dette er kun et spørsmål om å lære hvordan VML skal brukes. 

Siden VML benytter XML struktur er det også mulig å konvertere mellom VML og SVG.
Dette trenger ikke å være en enkel prosess, men det er i prinsippe mulig siden
begge bruker en XML struktur.

#### Ulemper ved Microsoft VML ####

Først og fremst er VML enda en ting som utviklere må ha ta hensyn til når de
skal ta i bruk grafikk og animasjon i nettleseren. Vi kan bare se hvor mye 
problematikk ulik tolkning av CSS har skapt for web designere for å få et likt
result i f.eks Internet Explorer og Mozilla Firefox. Dette er samme teknologi i
to nettlesere, nå skal to teknologiere virke i to nettlesere.

Det kan være enkelt å f.eks legge ved både VML og SVG kode, så er det ikke behov
for å ta hensyn til hvilke nettleser som blir brukt for å vise innholdet. Dette
er tungvindt når man er ute å få en standard som alle kan benytte. 

Det kunne vært mulig å generert kode for enten VML eller SVG basert på hvilken
nettleser som ble brukt av klienten, men det måtte lages en eller annen form for
kode generator for SVG og VML som dynamisk kunne generere korrekt kode slik at
grafikk og animasjoner ble vist på rett måte.

VML er veldig nettleser spesifikt, det fungerer faktisk i kun en nettleser. Dette
er lite positivt ettersom all utvikling av VML grafikk, vil måtte skrives om til
noe annet for at andre enn IE brukere skal kunne se innholdet. Dette er kanskje
en av hovedgrunnene til at VML ikke ble tatt opp som en standard i W3C men at
W3C heller tok deler av VML og startet SVG utviklings gruppen.

VML har blitt en del av historien til Microsoft ettersom all videre utvikling
av denne teknologien ble avsluttet i 1998. Etter dette har Microsoft ikke gjort
forbedringer eller prøvd å lage mer funksjonalitet. Dette kan ha sammenheng med
nederlage hos W3C da VML ikke ble tatt opp som offisiell standard for multimedia
på internett.

Det er derfor til etter tanke at VML eksistens kun er tilstedet i fravær av annen
teknologi som fungerer like godt i Internet Explorer. Hadde Microsoft gjort en
innsats for utvikling av SVG også for Internet Explorer ville det vært mulig for
utviklere og brukere heller å fokusere mot SVG isteden for å tenke på begge. 

[1]: http://msdn.microsoft.com/en-us/library/bb250524%28VS.85%29.aspx
[2]: http://en.wikipedia.org/wiki/Vector_Markup_Language
