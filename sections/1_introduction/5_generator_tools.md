
### 1.5 Programvare som kan produsere SVG-dokumenter ###

Det finnes en [god del programvare][1] på markedet som allerede støtter
SVG-standarden til en varierende grad. Under har vi klassifisert de mest
populære verktøyene på markedet som faktisk kan brukes til å produsere
SVG-dokumenter.

#### 1.5.1 Kommersiell programvare ####

[Microsoft Visio][2] er et verktøy for å lage varierte vektoriserte
diagrammer. Visio beskriver ikke på sine nettsider eksplisitt at de støtter
SVG som et eksport-format, men en [omfattende artikkel][3] beskriver hvordan
Visio kan benyttes i en arbeidsflyt som involverer bruk av SVG. Avsnitt 3.3
i artikkelen forteller også om noen av begrensningene med å importere
SVG-dokumenter inn i Visio, f.eks. det at text og tspan-elementer i SVG ikke
eksplisitt gir opplysninger om teksten faktisk inneholder linjeskift eller
om teksten har blitt foldet fordi linjene er for lange. Det er en del andre
deler av SVG-standarden som ikke er støttet, men alt i alt er støtten
overraskende god.

[Adobe Illustrator][4] er et av verdens mest kjente verktøy for grafiske
designere. Illustrator har støttet SVG siden versjon 9 og fikk også utvidet
støtte for SVG Tiny i CS2 (versjon 12) i følge Wikipedia. Illustrator CS2 og
senere [støtter flere avanserte funksjonaliteter][5] i SVG, deriblant
filtere, interaktivitet, rik typografi, hyperlenking og mer.

[CorelDRAW][6] er et designer-verktøy på lik linje med Adobe Illustrator.
CorelDRAW har [støttet SVG siden versjon 10][7], som ble lansert i 2000. De
fleste statiske finessene i SVG er [godt støttet][8] i versjon 12. En ting
som er verdt å legge merke til er at skygger faktisk blir gjort om til
rastergrafikk istedenfor å benytte f.eks. blur-filter samt et offset-filter
som vist i forrige avsnitt (se rubrikken ang. filtere). Det er ikke klart
hvorfor de velger å benytte denne metoden på skygger.

[Xara Xtreme][9] er på lik linje med Illustrator og CorelDRAW et verktøy for
grafiske designere. Xara Xtreme har hatt [støtte for eksport av
SVG-dokumenter siden versjon 3.2][10]. Xara bekrefter at støtten for SVG
ikke er komplett, men at de jobber med å forbedre støtten fortløpende.

#### 1.5.2 Fri programvare ####

[OpenOffice.org Draw][11] er et tegneprogram som er en del av den større
OpenOffice.org-pakken (OOo) for produktivitet. [Følgende dokument][12]
bekrefter at OOo Draw har hatt grunnleggende støtte for eksport av
SVG-dokumenter siden 2002. Det som er interessant å legge merke til i dette
dokumentet er at OOo baserer seg sterkt på Batik SVG Toolkit (omtales under)
for håndtering av SVG. Siden Batik har en av de mest komplette
implementasjonene av SVG-standarden bør OOo Draw sin støtte være ganske god.

[Inkscape][13] er et vektorbasert tegneprogram på lik linje med Illustrator,
CorelDRAW og Xara Xtreme. Det som er spesielt med Inkscape er at det
benytter SVG som standard filformat for lagring av vektorisert grafikk.
Inkscape har ikke noe proprietært filformat. Inkscape [støtter majoriteten av
SVG 1.1][14], med unntak av animasjon og noen filtre.

[Scribus][15] er en programvare for produksjon av side-oppsett (DTP), på lik
linje med f.eks. det kommersielle Quark Express. Scribus sin [støtte for
SVG][16] er relativt grunnleggende. De forteller at de ikke støtter
tekst-elementer fullt ut enda, samt at graderinger, innebygde bilder og
masking/clipping også ikke er støttet. Derimot bekrefter de at nesten alle
funksjoner i et Scribus-dokument kan eksporteres til SVG med stort hell. Det
er stort sett import av SVG som er problematisk.

#### 1.5.3 Verktøy for utviklere ####

[Batik SVG Toolkit][17] er et bibliotek for Java-utviklere som kan benyttes
til å manipulere, produsere og presentere SVG. Versjon 1.7 av Batik støtter
den statiske profilen til SVG 1.1 uten mangler, samt at den også støtter en
god del av den deklarative spesifikasjonen for animasjon (SMIL).

[Cairo][18] er et 2D grafikk-bibliotek for utviklere. I tillegg til å kunne
presentere vektorgrafikk på interaktive flater som X11, Win32 og Quartz, kan
den også generere SVG-dokumenter av tegne-operasjonene.  Cairo er et
C-bibliotek med bindinger til mange programmeringsspråk, bl.a. PHP, Python,
Perl, Ruby, Lisp, Java, C++, .NET, med mer. Cairo benyttes av blant annet
[Gecko][19] for fremvisning av SVG i Mozilla-baserte nettlesere, samt at den
benyttes av WebKit-motoren, som danner grunnlaget for nettleserne Safari og
Chrome.

[Processing][20] er et programmeringsspråk som fokuserer på å lære
programvareutvikling ved hjelp av en visuell kontekst. Verktøyet kommer med
en integrert IDE som gjør det enkelt å komme i gang med programmeringen og
umiddelbart se resultater. Processing er faktisk Java på bunnen, og benytter
seg av den spesialiserte klassen [PApplet][21] som implementerer mesteparten
av språket. Processing har [innebygd støtte for SVG][22], noe som gjør det
enkelt å inkludere avansert vektorgrafikk i et Processing-prosjekt.
SVG-støtten er relativt [grunnleggende][23], det er kun mulig å laste inn
enkle primitiver. Fordelen med dette er at det ikke øker størrelsen på
klasse-filen som må distribueres altfor mye. Hvis man derimot trenger
avansert SVG-støtte kan man benytte Batik-biblioteket som nevnt ovenfor.

[1]: http://en.wikipedia.org/wiki/Scalable_Vector_Graphics#Software_and_support_in_applications "SVG support in applications, Wikipedia, 2010-03-26"
[2]: http://office.microsoft.com/en-us/visio/FX100487861033.aspx "Microsoft Office Visio 2007 front page, Microsoft, read 2010-04-04"
[3]: http://www.svgopen.org/2003/papers/SVG_Scenarios_using_Microsoft_Office_Visio_2003/index.html "SVG Scenarios for Microsoft Visio 2003, Richard See, 2003"
[4]: http://www.adobe.com/products/illustrator/ "Adobe Illustrator graphic design software, Adobe, read 2010-04-04"
[5]: http://www.adobe.com/svg/tools.html "Adobe SVG Authoring Tools, Adobe, read 2010-04-04"
[6]: http://www.corel.com/servlet/Satellite/us/en/Product/1191272117978 "CorelDRAW Graphics Suite X5, Corel, read 2010-04-04"
[7]: http://www.unleash.com/davidt/svg/index.asp "SVG - From CorelDRAW to Your Browser, David Troidl, 2007"
[8]: http://corel.custhelp.com/app/answers/detail/a_id/754171/ "CorelDRAW SVG support information - Corel Knowledgebase, Corel, read 2010-04-04"
[9]: http://www.xara.com/us/products/xtreme/ "Xara Xtreme graphics software, Xara Group Limited, read 2010-04-04"
[10]: http://support.xara.com/index.php?_m=knowledgebase&_a=viewarticle&kbarticleid=2562 "Xara Xtreme SVG support - Xara knowledgebase, Xara Group Limited, 2007-06-13"
[11]: http://www.openoffice.org/product/draw.html "OpenOffice.org Draw, Oracle/Sun, read 2010-04-04"
[12]: http://graphics.openoffice.org/files/documents/12/406/svg_overview.htm "OpenOffice.org Graphics SVG integration improvement proposal, Vincent Hardy/Kai Ahrens, 2002-07-01"
[13]: http://www.inkscape.org/ "Inkscape vector graphics editor, read 2010-04-04"
[14]: http://wiki.inkscape.org/wiki/index.php/FAQ#What_SVG_features_does_Inkscape_implement.3F "Inkscape SVG support, Inkscape Wiki, 2010-02-12"
[15]: http://www.scribus.net/ "Scribus Open Source Desktop Publishing, read 2010-04-04"
[16]: http://docs.scribus.net/index.php?lang=en&page=scribus-svg "Scribus SVG support, Scribus documentation, read 2010-04-04"
[17]: http://xmlgraphics.apache.org/batik/ "Batik Java SVG Toolkit, Apache Software Foundation, 2010-01-02"
[18]: http://cairographics.org/ "Cairo 2D graphics library, 2010-03-02"
[19]: https://wiki.mozilla.org/Gecko_1.9_Roadmap#cairo_Graphics_Substrate "Cairo usage in Mozilla Gecko, Mozilla wiki, 2007-01-10"
[20]: http://processing.org/about/ "Processing programming language, Ben Fry/Casey Reas, read 2010-04-04"
[21]: http://dev.processing.org/reference/core/javadoc/processing/core/PApplet.html "PApplet class definition, Processing Project, read 2010-04-04"
[22]: http://processing.org/reference/libraries/candy/SVG.html "Processing SVG support, Processing Project, 2008-09-22"
[23]: http://dev.processing.org/reference/core/javadoc/processing/core/PShapeSVG.html "PShapeSVG class definition, Processing Project, read 2010-04-04"
