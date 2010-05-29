### 4.4 Microsoft VML, et alternativ til SVG ###

VML har samme [deklarative fokus][1] som SVG, og benytter også XML-syntaks
for å lage grafikk og animasjoner. VML er utviklet av Microsoft for Internet
Explorer of Office, og fungerer på mange måter likt med SVG for andre
nettlesere. Som nevnt tidligere er det så mange likheter at
JavaScript-bibliotek som Raphaël kan utnytte likhetene.

VML er et proprietært språk utviklet av Microsoft som ble [presentert for
W3C][2] som en ny standard for animasjon og multimedia på nett. SVG valgte
bort dette språket til fordel for SVG.

Etter at W3C startet utviklingen av SVG isteden for å ratifisere VML, ble
arbeidet med VML [avsluttet][2]. Selv om utviklingen ble avsluttet har
Microsoft valgt å beholde implementasjonen av teknologien i nettleserne sine
fra Internet Explorer 5.0 og oppover. Dette gjør det mulig for utviklere
også i dag å bruke VML for å vise animasjoner og grafikk på samme måte som
SVG.

#### 4.4.1 Fordeler ved Microsoft VML ####

VML er det eneste språket som ligner SVG og som fungerer i Internet
Explorer. Det funger også bra, og kan vise både [grafikk og animasjoner][1]
som SVG kan gjøre i andre nettlesere. Det gjør at VML foreløpig er veldig
nyttig for utviklere som et språk likt SVG for å ha en form for
cross-browser-support i grafikken som lages. SVG har enda ikke kommet dithen
at Internet Explorer støtter standarden, og det er derfor enda behov for
VML.

En annen fordel med VML er at det i forhold til f.eks språk som Flash og
Silverlight bruker XML-syntaks. Dette er samme struktur som SVG bruker for å
vise grafikk og animasjoner. Dette gjør for det første at koden er liten i
størrelse og kan enkelt komprimeres. Det er også enkelt for utviklere som
har jobbet med SVG å forstå strukturen i VML. Sammenligning av syntaks viser
store forskjeller, men dette er kun et spørsmål om å lære hvordan VML skal
brukes.

Siden VML benytter XML er det også mulig å konvertere mellom VML og SVG.
Dette trenger ikke å være en enkel prosess, men det er i prinsippet mulig
siden begge er implementert i XML.

#### 4.4.2 Ulemper ved Microsoft VML ####

Først og fremst er VML enda en ting webutviklere må ta hensyn til når de
skal ta i bruk grafikk og animasjon i nettleseren. Det kan være enkelt å
f.eks legge ved både VML- og SVG-kode så det ikke er behov for å ta hensyn
til hvilke nettleser som blir brukt for å vise innholdet. Det kunne vært
mulig å generere kode for enten VML eller SVG basert på hvilken nettleser
som ble brukt av klienten, men det måtte da lages en eller annen form for
kodegenerator for SVG og VML som dynamisk kunne generere korrekt kode slik
at grafikk og animasjoner ble vist på rett måte. Dette fører til høy kostnad
på serversiden.

VML er veldig nettleserspesifikt, det fungerer faktisk kun i en nettleser.
Dette er lite positivt ettersom all utvikling av VML-grafikk vil måtte
skrives om til noe annet for at andre enn IE-brukere skal kunne se
innholdet.

VML har blitt en del av historien til Microsoft ettersom all videre
utvikling av denne teknologien ble avsluttet i 1998. Etter dette har
Microsoft ikke gjort forbedringer eller prøvd å lage mer funksjonalitet.
Dette kan ha sammenheng med nederlaget hos W3C da VML ikke ble godkjent som
offisiell standard for multimedia på internett.

Det er derfor til ettertanke at VMLs eksistens kun er tilstede i fravær av
annen teknologi som fungerer like godt i Internet Explorer. Hadde Microsoft
gjort en innsats for utvikling av SVG også for Internet Explorer ville det
vært mulig for utviklere heller å fokusere på SVG istedenfor å bruke
ressurser på begge.

[1]: http://msdn.microsoft.com/en-us/library/bb250524%28VS.85%29.aspx "Vector Markup Language(VML), Microsoft, lest 2010-05-27"
[2]: http://en.wikipedia.org/wiki/Vector_Markup_Language "Vector Markup Language, Wikipedia, lest 2010-05-27"
