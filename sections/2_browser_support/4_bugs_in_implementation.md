### 2.4 Funksjonalitet med feil i implementasjonene ###

I Mozilla Firefox jobbes det i hovedsak med feil i to av SVG-modulene. Det
er Font- og Animation-modulen. Animasjonsmodulen står det verst til med
ettersom denne inneholder elementer som enten ikke er implementert, eller
som er prøvd implementert men inneholder feil som gjør at de ikke funger på
en riktig måte i forhold til standarden.

Første element som ikke fungerer korrekt er `animate`, som gjør det mulig å
animere et enkel attributt eller ting over tid. Det er lagt inn en
[feil-rapport][1] på denne modulen i Firefox sitt feilhåndteringssystem,
Bugzilla. Et annet element som inneholder feil er `animateTransform`.
Elementet skal blant annet gjøre det mulig å skalere eller rotere en ting i
SVG, f.eks et rektangel eller en firkant. Det er også her lagt inn en
[feil-rapport][1] i Bugzilla. Elementet funger ikke som det skal, noe som
har opprinnelse i feilen som også eksisterer i animate-elementet. Totalt
sett gjør dette at det å animere elementer ikke fungerer i
SVG-implementasjonen i Firefox.

Den andre modulen som enda ikke er ferdig implementert i Firefox er
Font-modulen. Foreløpig har Mozilla ikke klart å vise mer avanserte fonter,
eller fonter som inneholder spesielle symboler som man f.eks finner i
japansk tegnsett. Dette fører til at fonter generelt ikke vil fungere
korrekt. Istedenfor å vise deler av fonten som faktisk fungerer eller gi
tilbake en generell font, blir tekst som bruker en avansert font ikke vist i
det hele tatt. Det har også her blitt lagt inn en [feil-rapport][2] i
Bugzilla. Feilen skaper problemer med å vise tekst som blir generert av SVG
generelt og vil igjen gjøre SVG upålitelig til å vise tekst i når det blir
brukt avanserte fonter.

WebKit har flere moduler som inneholder feil. Dette går på flere av de samme
modulene som Firefox har hatt problemer med å implementere, men også
Cursor-modulen, samt View. Cursor-modulen gjør det mulig å lage en
egendefinert peker som kan benyttes i applikasjonen, f.eks at man har lyst
til å bruke et eget ikon som skal fungere som mus. Det finnes ingen
feilhenvisninger som viser hva som er feil på Cursor-modulen. Men modulen er
definitivt ikke implementert korrekt og markert med gult. View-modulen har
fått registrert en [feil][3] som forteller at det ikke er mulig å hente ut
currentView. Dette er hvilke elementer vi har i nettleseren på et gitt
aktivt tidspunkt, og W3C har selv kommentert at dette er vanskelig å
implementere.

WebKit har også flere av svakhetene som eksisterer i implementasjonen til
Firefox. Dette går i hovedsak på animasjonsmodulen. Flere av elementene i
animasjonsmodulen inneholder feil. Dette gjør blant annet at det ikke er
mulig å sette attributter under en animasjon for en viss tidsperiode. Det er
heller ikke mulig å flytte en ting på en linje, eller skalere og rotere et
element for å lage en animasjon. Dette er relativt viktige deler når det
kommer til å lage animasjoner. F.eks når man skal få ting til å sakte føres
inn og viskes ut eller bare vil at ting flytter seg fra et sted til et
annet. Implementasjonen av animasjonsmodulen i WebKit gir derfor ikke
utviklere mye å benytte. Det samme gjelder for gradvise endringer i farger,
hvor det har blitt registrert en [feil][4] i WebKit sin Bugzilla.

Opera har ikke spesifisert steder hvor elementer i de ulike modulene kun er
delvis implementert. Ut fra den [generelle SVG-status-siden][5] kan vi
trekke en konklusjon på hvordan det står til med SVG-støtten i Opera.  Ut
fra status-siden ser man få tegn til elementer som fungerer delvis.  Det
eneste som kan nevnes er at Opera generelt har flere grønne felter enn både
WebKit- og Gecko-baserte nettlesere. Det finnes et par tester som viser at
det kun er delvis støtte tilgjengelig. Dette er blant annet på
animasjonstesten, og på testen som går på fonter som inneholder symboler.
Det ser fortsatt ut som både fonter og animasjon er bedre implementert i
Opera enn i WebKit og Mozilla Firefox.

[1]: https://bugzilla.mozilla.org/show_bug.cgi?id=216462 "Implement SVG (SMIL) Animation, Mozilla Bug Tracker, rapportert: 2003-08-17, sist endret: 2010-03-05, status: RESOLVED FIXED"
[2]: https://bugzilla.mozilla.org/show_bug.cgi?id=119490 "Implement SVG fonts, Mozilla Bug Tracker, rapportert: 2002-01-11, sist endret: 2010-05-25, status: ASSIGNED"
[3]: https://bugs.webkit.org/show_bug.cgi?id=15495 "SVGViewSpec DOM bindings aka SVGSVGElement.currentView is unimplemented, WebKit Bug Tracker, rapportert: 2007-10-13, sist endret: 2010-05-18, status: NEW"
[4]: https://bugs.webkit.org/show_bug.cgi?id=6034 "WebKit+SVG needs to support color-interpolation for gradients and opacity calculations, WebKit Bug Tracker, rapportert: 2005-12-10, sist endret: 2010-01-30, status: NEW"
[5]: http://www.codedread.com/svg-support-table.html "SVG Support in browsers, Jeff Schiller, uthentet 2010-03-14"
