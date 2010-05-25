### Microsoft IE9 vil støtte SVG ###

I mai 2010 annonserte Microsoft at deres neste versjon av Internet Explorer
kommer til å [støtte grunnleggende elementer i SVG 1.1][1]. Annonseringen
viser at de støtter følgende elementer fra standarden (direkte utdrag):

* Most SVG document structure, scripting (eventing), and styling (inline and through CSS)
* Many presentation elements and their corresponding attributes and DOM, including:
  * paths
  * shapes
  * colors
  * transforms

Dette betyr at grunnleggende grafikk-operasjoner samt hendelseshåndtering og
scriptstøtte nå skal virke. Selv om de ikke støtter animasjon, tekst, filtre
og raster-bilder betyr det uansett at man nå skal ha mulighet til å lage
avanserte brukergrensesnitt med SVG.

Det at man ikke har støtte for tekst og raster-bilder, samt noen av de
grunnleggende filtrene, vil føre til at web-utviklere må benytte
tegneoperasjonene og tradisjonelle HTML-metoder for å kombinere tekst,
raster og vektorgrafikk for å få til det de ønsker på de populære
nettleserne. Forhåpentligvis vil man få støtte for mer SVG-funksjonalitet
før den endelige versjonen av IE9 foreligger.

[1]: http://msdn.microsoft.com/en-us/ie/ff468705.aspx#_Scaling_Vector_Graphics "Microsoft IE9 will support SVG, Microsoft Developer Network, 2010-05-05"
