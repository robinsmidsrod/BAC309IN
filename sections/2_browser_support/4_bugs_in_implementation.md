
# Manger i implementasjon av SVG #

Mozilla Firefox har i hovedsak mangl i to av SVG-modulene som jobbes med. Dette er
Font og Animasjons modulen. Animasjons modulen står det verst til med ettersom
denne inneholder elementer som enten ikke er implementert, og de som er prøvd
implementert inneholder mangler som gjør at de ikke funger på en riktig måte i
forhold til W3C sin SVG-standard. Første element som ikke fungerer korrekt er
animate, som gjør det mulig å animere en enkel attribut eller ting over tid. Det
er lagt inn en bug [melding][1] på denne modulen, som finnes i bugzilla. Et
annet element som er market som mangle fult er, animateTransform. Elementet
skal blant annet gjøre det mulig å skalere eller rotere en ting i SVG, f.eks
et rektangel eller en firkant. Det er også her lagt inn en bug melding[1] i
tracking systemet mozilla benytter under utvikling. Elementet funger ikke
som det skal, noe som har opprinnelse i feilen som også eksister i animate
elementet. Dette gjør at det å animere elementer ikke fungerer i 
SVG-implementasjon i Firefox.

Den andre modulen som enda ikke er ferdig implementert i Firefox er Font modulen.
Foreløpig har Mozilla ikke klart å vise mere avanserte fonter, eller fonter som
inneholder spesielle symboler som man f.eks finner i japansk tegnsett. Dette
fører til at fonter generelt ikke vil fungere korrekt. Og isteden for å vise
deler av fonten som faktisk fungerer eller gi tilbake en generell font, blir
tekst som bruker en avansert font ikke bli vist i det hele tatt. Det har blitt
også her lagt inn en [bug][2] i bugzilla, som med aninimasjons feilen. Dette
skaper problemer for å vise tekst som blir generert av SVG generelt og vil
igjen gjøre SVG upolitelig til å vise tekst i når det blir brukt avanserte
fonter.

Webkit har flere moduler som inneholder mangler. Dette går på flere av de samme
modulene som Firefox har hatt problemer med å implementere men også Cursor
modulen, samt View. Cursor modulen gjør det mulig å lage en egendefinert peker
som kan benyttes i applikasjonen. F.eks om man har lyst til å bruke et eget
ikon som skal fungere som mus. Det finnes ingen bug henvisninger på cursor
modulen, til hva som faktisk er feil. Men modulen er definitivt ikke
implementert korrekt og markert med gult. View modulen har fått registrert
en [bug][3] som forteller at det ikke er mulig å hente ut currentView.
Det er hva vi har i nettleseren på et gitt aktivt tidspunkt, og W3C har
selv kommentert at denne er vanskelig og implementere. 

Webkit har også flere svakhetere som også eksister i implementasjon til
Firefox. Dette går da i hovedsak på animasjons modulen. Flere av 
elementene i animasjons modulen inneholder feil, dette gjør blant annet
at det ikke er mulig å sette attributter under en aninmasjon for en vis
tidsperiode. Det er heller ikke mulig å flytte en ting et på en linje,
eller skalere og rotere et elementet for å lage en aninmasjon. Dette
er relativt viktige delere når det kommer til å lage animasjoner. F.eks
når man skal få ting til å fade inn, og fade ut eller bare vil at ting
flytter seg fra et sted eller annet. Implementasjon av aninmasjons
modulen er derfor relativt ubrukelig i webkit. Samme gjelder for gradevis
endringer i farger, hvor det har blitt registrert en [bug][4] i Webkit
sin bugzilla.

Opera har ikke spesifisert steder hvor elementer i de ulike modulene kun
er delevis implementert. Vi kan derimot utifra den [generelle][5] SVG-status
siden, som benytter SVG tester, trekke ut en konklusjon på hvordan det
står til med SVG-støtten i Opera. Ut ifra status-sidene ser man få tegn
til elementer som fungerer delevis. Det eneste som kan nevnes er at Opera
generelt har flere grønne felter enn både Webkit baserte nettlesere og Mozilla.
Det finnes et par tester som viser at det kun er delevis støtte tilgjenglig.
Dette er blant annet på aninimasjons testen, og på testen som går på fonter
som inneholder symboler. Det ser fortsatt ut som både font og aninmasjon
er bedre implementert i Opera enn i Webkit og Mozilla.

[1]: https://bugzilla.mozilla.org/show_bug.cgi?id=216462
[2]: https://bugzilla.mozilla.org/show_bug.cgi?id=119490
[3]: https://bugs.webkit.org/show_bug.cgi?id=15495
[4]: https://bugs.webkit.org/show_bug.cgi?id=6034
[5]: http://www.codedread.com/svg-support-table.html
