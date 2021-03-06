### 4.2 Kan Microsoft Silverlight benyttes for å omgå mangel på SVG-støtte? ###

[Microsoft Silverlight][1] er på mange måter det samme som Flash fra Adobe,
pakket inn i kjent Microsoft-stil. Silverlight er først og fremst et
rammeverk for utviklere som bruker ASP, C# eller andre språk fra Microsoft.
Dette rammeverket gjør det mulig å lage grafikk, animasjoner og vise både
lyd og bilde. Rammeverket har også fått deler av .NET-rammeverket integrert,
slik at mye av den samme funksjonaliteten som finnes i det vanlige
.NET-biblioteket også finnes i Silverlight.

Silverlight er tilgjengelig på andre plattformer enn Microsoft sin, ved å
bruke Moonlight. [Moonlight][2] er utviklet av Novell, og gjør det mulig å
bruke Silverlight på både Linux og BSD-plattformen.

Microsoft har med Silverlight gjort det mulig for utviklere å bruke de samme
verktøyene som de er vant til i utviklingen av .NET-applikasjoner.
Utvikleren kan også benytte en tekstbehandler for å lage en
Silverlight-applikasjon, men dette er en mer komplisert prosess enn å bare
bruke f.eks Visual Studio hvor mye av jobben blir automatisert.

#### 4.2.1 Fordeler ved Microsoft Silverlight ####

Microsoft har laget et rammeverk for å lage større applikasjoner som
benytter både grafikk, animasjoner, lyd og video. Det er viktig å se at
dette ikke bare er en standard for å vise grafikk på nett men at det er et
rammeverk for utviklere som kan brukes for å lage [Rich Internet
Applications][5]. Silverlight begrenser seg altså ikke til kun å vise
grafikk, animasjoner, video og lyd på nett som SVG gjør. Den har et mye
bredere fokus.

#### 4.2.2 Ulemper ved Microsoft Silverlight ####

Silverlight har sine fordeler, men det er ikke uten ulemper når vi skal
sammenligne den mot SVG. Siden SVG ikke har like mange muligheter som
Silverlight, er det en mye mer spesialisert teknologi.

Silverlight er som sagt et rammeverk, og det blir ikke generert en fil som
inneholder alle elementer brukt i applikasjonen. Det er [flere filer][3] og
mapper som må være til stede på server-siden av en applikasjon for at den
skal fungere. Det er også relativt komplisert struktur på noen av filene, og
det kan derfor være vanskelig å sette sammen en applikasjon uten et
skikkelig verktøy.

SVG har en stor fordel når det kommer til antall filer som må være tilstede,
siden den kun krever filen som inneholder grafikken. Dette er også en
tekstfil, som ikke trenger noe annet enn en nettleser for å tolkes. SVG kan
også bestå av store filer med mange linjer kode, men man vil fortsatt slippe
å trekke inn biblioteker eller andre filer for å vise grafikken som er
laget. Siden det kun er en fil som bruker den velkjente XML-strukturen, kan
SVG-grafikk enkelt lages i en teksteditor.

Silverlight er som Flash en klientside-applikasjon. Det vil si at det er
nettleseren som tar seg av kjøringen av Silverlight applikasjonen.
Nettleseren har ingen innebygget støtte for Silverlight, og trenger derfor
[tredjepartsprogramvare][4] for å kunne vise applikasjonen. Det er sjelden
positivt når en bruker oppsøker et nettsted og trenger enda en plugin for å
kunne vise innholdet. Brukeren hadde fått en bedre opplevelse om andre
teknologier kunne brukes for å slippe slike tillegg.

SVG har denne fordelen. Siden det støttes direkte i nettleseren trenger ikke
brukeren å bekymre seg om å laste ned ekstra tillegg for å tolke innholdet
på ulike nettsider. Ettersom det er store forskjeller på alder og
ferdigheter blant internett-brukere er det viktig å gjøre mest mulig
informasjon tilgjenglig for flest mulig.

Egentlig kan man stille spørsmål om hvorfor det var behov for enda en
teknologi som gjør den samme jobben flere andre har gjort før den.
Silverlight og Flash utfører mange av de samme oppgavene i nettleseren.
Silverlight har et par mer avanserte funksjoner, som mulighet for å
distribuere Silverlight innhold mellom nettsteder. Silverlight er også mer
integrert mot Microsoft sine lyd- og video-formater. Mange vil derfor gå så
langt som å si at Silverlight er Flash i Microsoft-innpakning.

Hvis vi sammenligner f.eks hvordan SVGs XML og Silverlights XAML ser ut når
nettleseren skal tolke det, er dette veldig likt. Mange stiller derfor
spørsmål hvorfor Microsoft ikke heller tok i bruk SVG som allerede var
etablert istedenfor å lage noe helt eget og proprietært.

[1]: http://en.wikipedia.org/wiki/Microsoft_Silverlight "Microsoft Silverlight, Wikipedia, lest 2010-05-27"
[2]: http://www.mono-project.com/Moonlight#Goals "Moonlight - Mono Goals, Mono Project, lest 2010-05-27"
[3]: http://www.smashingmagazine.com/2009/05/09/flash-vs-silverlight-what-suits-your-needs-best "Flash vs. Silverlight - Deployment Part, Smashingmagazine, 2009-05-09"
[4]: http://www.microsoft.com/silverlight/what-is-silverlight "What Is Silverlight?, Microsoft, lest 2010-05-27"
[5]: http://en.wikipedia.org/wiki/Rich_Internet_application "Rich internet applications, Wikipedia, lest 2010-05-28"
