### 3.1 Internet Explorers manglende støtte for SVG ###

Fra analysen av nettlesere tidligere ser vi at Microsoft sin Internet
Explorer (IE) aldri har hatt innebygget støtte for SVG. Man har alltid vært
avhengig av et tredjepartstillegg (plugin) for å kunne se SVG i IE. Det
[mest populære tillegget][1] har til nå vært Adobe sin SVG Viewer, men andre
har nå kommet på markedet fordi Adobe valgte å [stoppe å utvikle sin
plugin][2].

IE har siden [versjon 5.0][3] hatt støtte for et annet grafikk-språk som
heter VML (Vector Markup Language). VML er implementert i XML på lik linje
med SVG, men er en mye eldre implementasjon som aldri har blitt
standardisert. Vi kommer inn på VML i litt mer detalj senere.

Fordi VML allerede var implementert i IE var Microsoft [ikke interessert][4]
i å legge inn støtte for en konkurrerende teknologi som SVG. De mente det
var nok å ha ett vektorformat og var derfor uvillig til å støtte en åpen
standard som SVG. Sammen med det faktum at IE sitt utviklerteam nærmest ble
lagt ned etter utviklingen av IE6 og at det var [stille på nettleserfronten i
over 5 år][5] førte til en stagnering av nettlesermarkedet.

Det førte til store problemer for SVG WG, fordi Microsoft hadde gitt klart
uttrykk for at VML var en standard som [ikke skulle endres/videreutvikles
fordi den allerede var i bruk][6]. W3C ble da sittende mellom barken og
veden. De kunne utvikle en standard som de hadde kontroll over og kunne
videreutvikle, som markedslederen ikke var interessert i å støtte.
Alternativet ville være å ratifisere en standard de ikke kunne
videreutvikle, men som ville være mulig å få god markedspenetrasjon på i
løpet av relativt kort tid. Det at SVG eksisterer som en standard i dag som
ikke er kompatibel med VML viser klart og tydelig at de valgte å gå for den
første løsningen. Dette har gitt oss en markedsituasjon hvor nettleseren med
størst markedsandel ikke støtter den ledende og mest anerkjente teknologien
på markedet.

Helt siden IE fikk støtte for VML har Microsoft vært [uvillig til å endre
sitt standpunkt][4] på om de ønsker å implementere SVG i nettleseren. Dette,
sammen med det faktum at Microsoft ikke var villig til å videreutvikle IE,
har ført til at sluttbrukere har begynt å benytte andre nettlesere, slik som
Firefox, Safari, Opera og Chrome. Alle disse nettleserne støtter SVG i
varierende grad, som tidligere avklart. Det at IE sine markedsandeler har
[falt drastisk de siste årene][7] har gjort at Microsoft har vært nødt til å
revurdere sin strategi hvis de ønsker å beholde brukerne. Det at
EU-domstolen også har [gitt medhold][8] for at Microsoft driver med
monopolistisk oppførsel rundt tilgang til alternative nettlesere har gitt
sluttbrukere en mer synlig opsjon når det kommer til deres valg av
nettleser. Dette, sammen med [utbredelsen av diverse mobile enheter][9] som
[ikke støtter flere av de alternative teknologiene][10] vi kommer inn på
senere, har ført til at behovet for SVG fra web-utviklere bare blir sterkere
og sterkere.

[1]: http://www.oreillynet.com/mac/blog/2001/04/exploring_svg.html "Exploring SVG, Jason McIntosh, 2001-04-30"
[2]: http://www.adobe.com/svg/eol.html "Adobe to Discontinue Adobe SVG Viewer, Adobe, 2009-01-01"
[3]: http://en.wikipedia.org/wiki/Vector_Markup_Language "Vector Markup Language, Wikipedia, lest 2010-05-25"
[4]: http://www.robweir.com/blog/2006/07/cum-mortuis-in-lingua-mortua.html "VML and OOXML: Cum mortuis in lingua mortua, Rob Weir, 2006-07-24"
[5]: http://www.readwriteweb.com/archives/web_browser_faceoff.php "Web Browser Faceoff, Alex Iskold, 2006-10-06"
[6]: http://www.w3.org/Graphics/SVG/WG/wiki/Secret_Origin_of_SVG "Secret Origins of SVG, W3C, lest 2010-05-25"
[7]: http://gs.statcounter.com/#browser-ww-monthly-200807-201005 "StatCounter Global Stats, Browsers, July 2008 to May 2010"
[8]: http://www.sitepoint.com/blogs/2009/12/17/microsoft-browser-ballot-screen/ "Microsoft agrees to browser ballot terms, Craig Buckler, 2009-12-17"
[9]: http://gs.statcounter.com/#mobile_vs_desktop-ww-monthly-200812-201005 "StatCounter Global Stats, Mobile vs. Desktop,  December 2008 to May 2010"
[10]: http://www.dlocc.com/articles/apple-ipad-no-flash-plugin-support/ "Apple iPad: No Flash plugin support, Devin Walker, 2010-01-27"
