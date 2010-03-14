
# Hvordan ser SVG ut? #

Som tidligere nevnt er SVG en applikasjon i XML. Det betyr at SVG dokumenter
er beskrevet som XML-kode. For at programmer skal skjønne at man jobber med
SVG og ikke en generisk form for XML må man sørge for å spesifisere et [XML
namespace][1] som identifiserer SVG. SVG sitt namespace er definert som
`http://www.w3.org/2000/svg` i [SVG versjon 1.1][2]. For at nettlesere og
andre enheter som benytter HTTP skal kunne identifisere SVG uten å måtte
dekode dokumentet bør man benytte mimetypen `image/svg+xml`, som er
[registrert][3] hos IANA. Hvis XML-dokumentet innholder data fra forskjellige
navnerom kan man benytte den mer generiske mimetypen [`application/xml`][4].
Tradisjonelt blir filer med SVG-data navngitt med .svg eller .svgz (for
komprimert data) som [filendelse][5].

SVG inneholder et sett med primitiver som kan benyttes for å lage komplekse
figurer i likhet med andre systemer for å tegne vektorisert grafikk. I
tillegg støtter den også tekst og vanlig raster-grafikk (bitmaps). I første
omgang skal vi se på hvilke primitiver som er tilgjengelig, senere kommer vi
inn på bruken av tekst og rastergrafikk.

Følgende primitiver er [tilgjengelig][6] (XML-element benyttet i SVG i parentes):

 * Linje (line)
 * Sammenhengende linjer (polyline)
 * Polygon (polygon)
 * Rektangel (rect)
 * Sti (path)
 * Sirkel (circle)
 * Ellipse (ellipse)

Nedenfor vil jeg gå gjennom hver enkelt primitiv i detalj. Som man kan se i
eksemplene er det alltid et rot-element med navn `svg` som definerer synlig
område ([viewport][7]) for hele tegneflaten. I tillegg er det her man definerer
hvilken versjon av SVG-standarden man benytter, evt. hvilken SVG-profil man
baserer seg på (`baseProfile`) samt navnerommet, som nevnt over. En ting som
er verdt å merke seg er at ingen av eksemplene spesifiserer `width` eller
`height`, noe som betyr at viewport skal være så stor som overhodet mulig
(dvs. begge verdier har en standard-verdi på 100%).

## Linje ##

Under kan man se et eksempel på [line-elementet][8] i SVG.

{{{INCLUDE:line.svg}}}

![<line> example](line.svg)

Eksempelet viser en linje fra punkt 0,0 (øverst til venstre) til 300,300.
Farge og tykkelse er spesifisert ved hjelp av CSS med attributtene `stroke`
og `stroke-width`. Man bruker tradisjonell CSS-syntax innenfor
style-attributtet, akkurat som i HTML/XHTML. Det man må være oppmerksom på
er at attributtene ikke er de samme som i HTML. Se en oversikt over hvilke
[CSS-attributter som er gyldige for SVG][9].

## Sammenhengende linjer ##

Under kan man se et eksempel på [polyline-elementet][10] i SVG.

{{{INCLUDE:polyline.svg}}}

![<polyline> example](polyline.svg)

I dette eksempelet ser vi en linje trukket gjennom et sett med punkter
spesifisert med `points`-attributtet. Vær oppmerksom på at dersom man skal
spesifisere desimaltall for koordinatene _må_ man benytte punktum som
desimalskille, ikke komma. Kommaet skiller mellom X- og Y-koordinatet mens
et eller flere mellomrom skiller mellom koordinatene i listen. Det som også
er verdt å legge merke til er at verdiene for å sette tykkelse og farge er
her spesifisert med presentasjonsattributter istedenfor CSS-verdier via
style-attributtet. Presentasjonsattributter har [lavere rang][11] enn
CSS-verdier, så hvis begge deler er spesifisert får verdiene som er
spesifisert i stilarket prioritet. Fordelen med å bruke stilark er de samme
som i HTML, at man kan samle sammen utseende-definisjoner og gjenbruke de på
mange elementer. Presentasjonsattributtene arver etter samme regler som i
CSS2, men dokumentasjonen for attributtet forteller om det [støtter arv
eller ikke][12]. SVG-verktøy må ikke støtte CSS, så det er verdt å tenke på
at dersom man ønsker et mest mulig kompatibelt dokument, bør man bruke
presentasjonsattributter.

## Polygon ##

Under kan man se et eksempel på [polygon-elementet][13] i SVG.

{{{INCLUDE:polygon.svg}}}

![<polygon> example](polygon.svg)

På lik linje med `polyline` benytter man et attributt med navn `points` til
å spesifisere hvilke punkter polygonet skal bestå av. I praksis er et
polygon det samme som en polyline, men etter det siste koordinatet blir det
tegnet en ekstra linje tilbake til første koordinat og hele elementet blir
fylt med spesifisert fyll-farge. Legg merke til at fargene er her
spesifisert med tradisjonelle hex-koder som i HTML.

## Rektangel ##

Under kan man se et eksempel på [rect-elementet][14] i SVG.

{{{INCLUDE:rect.svg}}}

![<rect> example](rect.svg)

Et rektangel er spesifisert ved å sette `x`, `y`, `width` og `height`
attributter som forventet. Attributtene `rx` og `ry` derimot krever litt mer
forklaring. De gjør det mulig å få runde hjørner på rektangelet. Verdiene
representerer radius i X- og Y-retning for sirkelen som benyttes for å tegne
hjørnet. Dersom ingen av disse er spesifisert får man hjørner med en 90
graders vinkel. Det som er viktig å huske på er at negative verdier for
rx/ry/width/height ikke er tillatt. I dette eksempelet ser man også bruke av
de konstante navnene i CSS for farger, samt bruk av transparens med
`opacity`-attributtet. I dette tilfellet er elementet 50% gjennomskinnelig.

## Sti ##

Under kan man se et eksempel på [path-elementet][15] i SVG.

{{{INCLUDE:path.svg}}}

![<path> example](path.svg)

I dette eksempelet ser man en spiral tegnet opp ved å bruke en rekke
tegneoperasjoner etter hverandre presentert i et kompakt format. En `M`
betyr moveto og setter utgangspunktet for tegneoperasjonen. En `C` betyr
curveto og tegner en bézierkurve fra utgangspunktet gjennom to
kontrollpunkter til destinasjonspunktet. Destinasjonspunktet blir da det nye
utgangspunktet og tegneoperasjonen fortsetter. Det finnes flere [andre
tegneoperasjoner][16] man kan benytte til å tegne en sti som vi ikke omtaler
her. Det som er interessant å legge merke til er at alle de andre
primitivene jeg har beskrevet her også kan tegnes ved hjelp av en sti.

## Sirkel ##

Under kan man se et eksempel på [circle-elementet][17] i SVG.

{{{INCLUDE:circle.svg}}}

![<circle> example](circle.svg)

Dette er et ganske enkelt eksempel som viser en sirkel plassert i senter av
viewport med en radius på 50 punkter. Bruken av prosent-anvisninger følger
samme tankegang som HTML sin boksmodell ved at tallet blir evaluert i
forhold til størrelsen på forelder-elementet.

## Ellipse ##

Under kan man se et eksempel på [ellipse-elementet][18] i SVG.

{{{INCLUDE:ellipse.svg}}}

![<ellipse> example](ellipse.svg)

På lik linje med sirkelen spesifiserer `cx` og `cy` senterpunktet for
tegneoperasjonen. Men det som er spesielt med en ellipse er at radius i X-
og Y-retningen er forskjellige (i motsetning til sirkelen hvor radius er
identisk i X- og Y-retningen). Man må derfor spesifisere både `rx` og `ry`
for å tegne ellipsen. Radius kan heller ikke her være negativ, på lik linje
med rektangelet.

# FIXME: Tekst #

# FIXME: Filter #

# FIXME: Animasjon #

[1]: http://www.w3.org/TR/xml-names/ "XML Namespaces"
[2]: http://www.w3.org/TR/SVG11/attindex.html "SVG 1.1 attribute index"
[3]: http://www.w3.org/TR/SVGTiny12/mimereg.html "SVG Tiny 1.2 mimetype registration"
[4]: http://tools.ietf.org/html/rfc3023#section-3.2 "application/xml mimetype registration"
[5]: http://www.w3.org/TR/SVG/intro.html#MIMEType "SVG mime type, file name extension"
[6]: http://www.w3.org/TR/SVG11/intro.html#TermShape "Shape term"
[7]: http://www.w3.org/TR/SVG11/struct.html#SVGElement "<svg> element"
[8]: http://www.w3.org/TR/SVG11/shapes.html#LineElement "<line> element"
[9]: http://www.w3.org/TR/SVG11/styling.html "SVG styling properties"
[10]: http://www.w3.org/TR/SVG11/shapes.html#PolylineElement "<polyline> element"
[11]: http://zvon.org/xxl/svgReference/Standard1.1/styling.html#UsingPresentationAttributes "Using presentation attributes"
[12]: http://www.w3.org/TR/SVG11/styling.html#Inheritance "Styling inheritance rules"
[13]: http://www.w3.org/TR/SVG11/shapes.html#PolygonElement "<polygon> element"
[14]: http://www.w3.org/TR/SVG11/shapes.html#RectElement "<rect> element"
[15]: http://www.w3.org/TR/SVG11/paths.html#PathElement "<path> element"
[16]: http://www.w3.org/TR/SVG11/paths.html#PathData "Path data"
[17]: http://www.w3.org/TR/SVG11/shapes.html#CircleElement "<circle> element"
[18]: http://www.w3.org/TR/SVG11/shapes.html#EllipseElement "<ellipse> element"
