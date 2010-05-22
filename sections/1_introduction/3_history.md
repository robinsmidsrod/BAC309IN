
### Historisk bakgrunn ###

Med utgangspunkt i dokumentet [The Secret Origin of SVG][1] er det tydelig
at mange organisasjoner var svært interessert i å få en enhetlig standard
for vektorgrafikk på internett i midten av 1990-tallet. Det eksisterte mange
forskjellige varianter, men rundt 1998 var det disse fem standardene som sto
igjen som de mest sannsynlige til å ta over markedet som en åpen standard
for vektorgrafikk: [PGML][2], [VML][3], [HGML][4], [DrawML][5] og
[WebCGM][6].

På grunnlag av disse forskjellige forslagene til standarder ble det avgjort
å stifte en arbeidsgruppe (SVG WG) for å utvikle en ny standard for
vektorgrafikk. Standarden ble utviklet fra bunnen av med erfaringer fra de
overnevnte forslagene.

SVG sin kompakte syntaks for å beskrive stier (path data) arves i stor grad
fra VML. Dette ble bestemt etter undersøkelser som viste at den kompakte
syntaksen hadde en stor innvirkning på filstørrelse, både med og uten
komprimering. Fra PGML (som igjen var basert på PostScript og PDF) benyttet
man konsepter rundt koordinatsystemet, transformasjoner, fargerom og
tekst/skrifttyper. En av tingene som er interessant å legge merke til er at
det ble tidlig bestemt at variabler som beskriver hvordan elementer oppfører
seg ble kodet som XML-attributter, ikke som element-innhold. Dette gjør det
enklere å tolke innholdet i et SVG-dokument for f.eks. søkemotorer og annen
programvare som håndterer XML på et generelt nivå. XML-attributtene blir i
en slik sammenheng ofte ignorert og man sitter igjen med tekst-innhold som
beskriver det faktiske innholdet i dokumentet istedenfor formateringen.
Siden SVG også støtter hyperlenking (både internt og eksternt) kan man lenke
til andre dokumenter like enkelt som i HTML. Dette gjør formatet godt egnet
til å formidle informasjon som kan konsumeres av både mennesker og maskiner
på en enkel måte.

Tidlig i utviklingen av SVG-standarden var det W3Cs Chris Lilley og Adobes
Jon Ferraiolo som var mest aktive. Som forrige avsnitt viser har Adobe sin
aktivitet synket noe siden den gang.

### Revisjoner og profiler av SVG-standarden ###

[SVG 1.0][7] ble en godkjent W3C standard 4. september 2001.

Forfatter-listen viser at følgende organisasjoner var involvert: Adobe,
Apple, Autodesk, BitFlash, Canon, Corel, Excosoft, Hewlett-Packard,
IBM, ILOG, IntraNet Solutions, Kodak, Lexica, Macromedia, Microsoft,
Netscape, OASIS, Opera, Oxford Brookes University, Quark, RAL (CCLRC), Sun
Microsystems, Visio, W3C og Xerox.

**[SVG 1.1][8] ble en godkjent W3C standard 14. januar 2003.**

Forfatter-listen viser at følgende organisasjoner nå også er involvert i
tillegg til de som nevnes for versjon 1.0: AGFA, America Online, Ericsson,
Expway, Fuchsia Design, KDDI Research Labs, Nokia, Openwave, Savage
Software, Schema Software, Sharp og Zoomon.

SVG 1.1 er først og fremst en ny versjon av standarden som modulariserer
standarden, slik at forskjellige profiler av standarden nå kan
implementeres. Dette baner vei for definisjon av subsettene SVG Tiny, Basic
og Print.

**[SVG Mobile (Basic og Tiny) 1.1][9] ble en godkjent W3C standard 14. januar
2003**,
samtidig som SVG 1.1 ble godkjent.

SVG Tiny er et direkte subsett av SVG Basic som igjen er et direkte subsett
av SVG 1.1. Dette gjør det enklere for utviklere å implementere løsninger
som ikke trenger å støtte hele SVG 1.1, men bare de mindre tunge profilene
SVG Basic eller SVG Tiny. SVG Tiny ble opprinnelig utviklet for
mobil-telefoner og SVG Basic var beregnet på mobile håndholdte enheter
(PDAer).

Forfatter-listen her viser flere interessante funn. Ikke alle som står
oppført på forfatter-listen for SVG 1.1 er oppført på listen over forfattere
for SVG Mobile. Dette kan bety at SVG-arbeidsgruppen har fordelt arbeidet
med de forskjellige standardiseringsjobbene basert på deres interesseområde.

Følgende selskaper er ikke involvert i det hele tatt i SVG Mobile: Apple,
Autodesk, Excosoft, IBM, Lexica, Macromedia, Microsoft, Netscape, Opera,
Oxford Brookes University, RAL(CCLRC), Visio og Xerox.

Det som er overraskende med denne oversikten er at Apple og Opera ikke har
involvert seg nok i arbeidet med den mobile SVG-standarden, selv om de helt
klart er veldig fokusert på det mobile markedet. Det er mulig at både Apple
og Opera har fokusert på SVG Full istedenfor Mobile-profilen fordi deres
nettlesere faktisk prøver å støtte den fulle SVG-standarden uansett enhet
nettleseren kjører på.

**[SVG Tiny 1.2][10] ble en godkjent W3C standard 22. desember 2008.**

Forfatter-listen viser at enda flere organisasjoner har kommet til: France
Telecom, Groupe des Ecoles des Télécommunications (GET), Motorola, OpenText,
Quickoffice, Research in Motion (RIM), Samsung, SAP, Streamezzo, Telecom
Italia og Vodafone.

I tillegg har flere organisasjoner utvidet antall personer de har involvert
i arbeidsgruppen, noe som helt klart tyder på at standarden begynner å få
større markedsandeler og blir benyttet mer. Det som er interessant å legge
merke til er at de fleste nye organisasjonene er selskaper som leverer
tjenester på mobile enheter eller utvikler mobile enheter.

SVG Tiny 1.2 foretok en endring i måten de forskjellige profilene i
SVG-standarden påvirker hverandre. SVG Tiny 1.2 er definert som et subsett
av SVG 1.1, men med ny funksjonalitet.

**[SVG Full 1.2][11] er enda ikke godkjent som en W3C standard, men ble sist
oppdatert 13. april 2005.**

SVG Full 1.2 er ment som den komplette videreføringen av SVG 1.1, som
benytter SVG Tiny 1.2 som basis og utvider den standarden for å oppnå full
støtte for SVG 1.1 pluss ny funksjonalitet.

Siden standarden enda ikke er godkjent er det uvisst hvilke organisasjoner
som vil være involvert i den endelige versjonen av standarden.

**[SVG Print 1.2][12] er enda ikke godkjent som en W3C standard, men ble sist
oppdatert 21. desember 2007.**

SVG Print er en ment som en standard for utskrift av SVG-dokumenter. Et
program som sier at det støtter SVG Print må teknisk sett støtte SVG Tiny
1.2 sin [statiske profil][13]. SVG Print er således en utvidelse av det
statiske subsettet av SVG Tiny 1.2.

Siden standarden enda ikke er godkjent er det uvisst hvilke organisasjoner
som vil være involvert i den endelige versjonen av standarden. Fra
oversikten over redaktører er det tydlig at Canon viser en stor interesse
for dette arbeidet.

Det vedlaget dokumentet viser en [oversikt over alle forfatterne for de
forskjellige revisjonene av SVG-standarden][14] fargekodet med når de
involverte seg i arbeidsgruppen.

[1]: http://www.w3.org/Graphics/SVG/WG/wiki/Secret_Origin_of_SVG "The Secret Origin of SVG"
[2]: http://www.w3.org/TR/1998/NOTE-PGML-19980410 "Precision Graphics Markup Language"
[3]: http://www.w3.org/Submission/1998/08/ "Vector Markup Language"
[4]: http://www.w3.org/TR/1998/NOTE-HGML-19980619 "Hyper Graphics Markup Language"
[5]: http://www.w3.org/Submission/1998/20/ "Draw Markup Language"
[6]: http://www.w3.org/Submission/1998/13/ "Web profile of Computer Graphics Metafile standard, ISO/IEC 8632:1992"
[7]: http://www.w3.org/TR/SVG10/ "SVG 1.0 W3C Recommendation"
[8]: http://www.w3.org/TR/SVG11/ "SVG 1.1 W3C Recommendation"
[9]: http://www.w3.org/TR/2003/REC-SVGMobile-20030114/ "Mobile SVG Profiles: SVG Tiny and SVG Basic"
[10]: http://www.w3.org/TR/SVGTiny12/ "SVG Tiny 1.2 Specification"
[11]: http://www.w3.org/TR/SVG12/ "SVG Full 1.2 Working Draft"
[12]: http://www.w3.org/TR/SVGPrint12/ "SVG Print 1.2 Working Draft"
[13]: http://www.w3.org/TR/SVGMobile12/feature.html#SVG-static "SVG Tiny 1.2 Static Profile"
[14]: svg_authors.pdf "Oversikt over forfattere av SVG-standarder"
