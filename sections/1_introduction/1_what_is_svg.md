
### Hva er SVG? ###

Scalable Vector Graphics ([SVG][1]) er en åpen standard utgitt av World 
Wide Web Consortium ([W3C][2]) som skal dekke behovet i markedet for å 
kunne representere to-dimensjonal grafikk på et utvalg av medier og 
enheter. Man kan si at det er et programmeringspråk for å beskrive 
to-dimensjonal grafikk og grafiske applikasjoner. Med to-dimensjonal 
grafikk snakker vi om vektoriserte figurer, raster-grafikk (bitmap) og 
tekst-elementer. 

SVG baserer seg på mange andre åpne standarder og prøver å 
[gjenbruke de][3] så mye som mulig for å unngå overlappende 
standardiseringsarbeid, både innenfor og utenfor W3C-prosessen. 

SVG-standarden er implementert som en applikasjon i [XML][4]. Det er en 
[deklarativ][5] standard på lik linje med [HTML][6]. Hvordan SVG fysisk 
representeres i XML omtales i seksjon 1.4. 

SVG har støtte for scripting, noe som gjør det mulig å lage avanserte 
brukergrensesnitt og interaksjoner basert på kjente 
programmeringsprinsipper benyttet i tradisjonell web-design. SVG 
benytter [ECMAScript][7] som sitt scriptspråk, noe som gjør det lett 
for en web-utvikler å benytte eksisterende kunnskap til å gjøre 
SVG-dokumenter interaktive. SVG benytter også [DOM-standarden][8], på 
linje med HTML og XML, for å kunne adressere og manipulere individuelle 
elementer i et SVG-dokument fra et script. 

SVG har også støtte for animasjon. Dette gjøres med notasjon basert 
på [SMIL-standarden][9]. Hvordan SMIL benyttes for å animere et 
element blir omtalt i seksjon 1.4. Animasjon basert på SMIL er 
deklarativ, mens animasjon basert på bruk av script-støtten i SVG er 
prosedyre-basert. Den deklarative notasjonen med SMIL er noe som brukere 
som har erfaring med tradisjonell animasjon sannsynligvis vil kjenne 
igjen fordi det baserer seg på tidskoder, synkronisering av aktiviteter 
over en tidslinje med mer. Tradisjonelle programmerer, derimot, vil 
sannsynligvis føle seg mer bekvemme med å bruke script-støtten for å 
utføre en tilsvarende animasjon. Dette betyr i praksis at 
SVG-standarden er fleksibel nok til at brukere med forskjellige 
teknologisk utgangspunkt kan ta den i bruk og benytte de delene som er 
nødvendig for dem.

W3C forklarer selv hva SVG er [på denne måten][10]:

> Scalable Vector Graphics (SVG) is like HTML for graphics. It is a markup 
> language for describing all aspects of an image or Web application, from 
> the geometry of shapes, to the styling of text and shapes, to animation, 
> to multimedia presentations including video and audio. It is fully 
> interactive, and includes a scriptable DOM as well as declarative 
> animation (via the SMIL specification). It supports a wide range of 
> visual features such as gradients, opacity, filters, clipping, and 
> masking. 
>
> The use of SVG allows fully scalable, smooth, reusable graphics, from 
> simple graphics to enhance HTML pages, to fully interactive chart and 
> data visualization, to games, to standalone high-quality static images. 
> SVG is natively supported by most modern browsers (with plugins to allow 
> its use on all browsers), and is widely available on mobile devices and 
> set-top boxes. All major vector graphics drawing tools import and export 
> SVG, and they can also be generated through client-side or server-side 
> scripting languages. 

### Forskjellige SVG profiler til ulike formål ###

Det finnes flere forskjellige [profiler av SVG][11] som beskriver deler 
av spesifikasjonen. Disse forskjellige profilene er utviklet slik at 
leverandører av programvare og enheter kan støtte et del-sett av SVG 
sin totale funksjonalitet og fremdeles være kompatibel med en gitt 
profil. Under kan du se en oversikt over de forskjellige profilene som 
er definert. 

 * SVG Full
   * SVG Mobile
     * SVG Basic
       * SVG Tiny
   * SVG Print

FIXME: Bytt til figur med UML-diagram av avhengighetene mellom profilene (i SVG).
   
SVG Mobile-profilen (som ombefatter både SVG Tiny og SVG Basic) ble 
adoptert av [3GPP][12], en samling av mobiloperatører, som grunnlaget 
for deres støtte for grafikk i mobile enheter. Flere av disse 
mobiloperatørene jobber aktivt med å videreutvikle SVG Mobile-profilen 
for å dekke deres behov på mobile enheter. 

SVG Print-profilen fokuserer på hvordan SVG kan benyttes til å gi 
høyoppløselige utskrifter av grafikk på papir og andre 
ikke-bevegelige medier. Animasjon og andre interaktive elementer i SVG 
er naturligvis ikke med i denne profilen da det ikke lar seg reprodusere 
i statisk format. Canon, HP, Adobe og Corel er aktive medlemmer som 
jobber med videreutvikling av denne profilen. 

SVG Full er den profilen som dekker opp for alle de andre variantene. 
Hvis man hevder at en applikasjon støtter SVG Full må den også 
støtte alle de andre profilene, fordi de andre profilene bare er 
del-sett av SVG Full. 

[1]: http://www.w3.org/Graphics/SVG/ "Scalable Vector Graphics"
[2]: http://www.w3.org "World Wide Web Consortium"
[3]: http://www.w3.org/2007/11/SVG_rechartering/SVG-WG-charter.html#coordination "SVG Dependencies"
[4]: http://www.w3.org/standards/xml "eXtensible Markup Language"
[5]: http://en.wikipedia.org/wiki/Declarative_programming "Declarative programming"
[6]: http://www.w3.org/standards/webdesign/htmlcss "HyperText Markup Language"
[7]: http://www.ecmascript.org/ "ECMAScript"
[8]: http://www.w3.org/DOM/ "Document Object Model"
[9]: http://www.w3.org/TR/smil-animation/ "Synchronized Multimedia Integration Language"
[10]: http://www.w3.org/standards/webdesign/graphics "W3C Graphics"
[11]: http://www.w3.org/Graphics/SVG/About.html "About SVG"
[12]: http://www.3gpp.org/ "3rd Generation Partnership Project"
