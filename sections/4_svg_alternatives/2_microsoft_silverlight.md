
### Kan Microsoft SilverLight også benyttes for å omgå mangel på SVG-støtte? ###

Microsoft Silverlight er på mange måter det samme som Flash fra Adobe, pakket inn
i kjent Microsoft stil. Silverlight er først og fremst et rammeverk for utviklere
som bruker ASP, C# eller andre språk støttet av Microsoft. Dette rammeverket gjør
det mulig å lage grafikk, animasjoner å vise både lyd og bilde. Rammeverket har også
fått deler av .NET rammeverket integrert, slik at mye av den samme funksjonaliteten
som finnes i standard .NET biblioteket finnes i Silverlight.

Silverlight er også tilgjenglig på andre platformer enn Microsoft sine egene,
igjennom Moonlight. Moonlight er utviklet av Novell, og gjør det mulig å bruke
Silverlight på både Linux og BSD platform.

Microsoft har med Silverlight gjort det mulig for utviklere å bruke de samme
verktøyene som de er vant med i utviklingen av .NET applikasjoner. Utvikleren kan
også benytte en tekst editor for å lage en Silverlight applikasjon, men dette
er en mer komplisert prosess enn å bare bruke f.eks Visual Studio hvor mye av
jobben blir automatisert.

#### Fordeler ved Microsoft Silverlight ####

Microsoft har laget et rammeverk for å lage større applikasjoner som benytter
både grafikk, animasjoner, lyd og video. Det er viktig å se at dette ikke bare
er en standard å vise grafikk på nett men at det er et rammeverk for utviklere
som kan brukes for å lage rike web applikasjoner. Silverlight begrenser seg
altså ikke til kun å vise grafikk, animasjoner, video og lyd på nett som SVG
kanskje gjør.

#### Ulemper ved Microsoft Silverlight ####

Silverlight har sine fordeler, men det er ikke uten ulemper når vi skal sammenligne
den mot SVG. Siden SVG ikke har like mange muligheter som Silverlight, er det
en mye mer spesialisert teknologi.

Silverlight er som sagt et rammeverket, og det blir ikke generert en fil som
inneholder alle menter brukt i en Silverlight applikasjon. Det er flere filer, og
mapper som må være tilstede på server siden av en applikasjonen for at den skal
fungere. Det er også relativt komplisert struktur på noen av filene, og kan derfor
være vanskelig å sette sammen en applikasjon uten et skikkelig verktøy.

SVG har en stor fordel når det kommer til antall filer små må være tilstedet, siden
den kun krever filen som inneholder grafikken. Dette er også en tekst fil, som
ikke trenger noe annet enn en nettleser for å tolkes. SVG kan også få store filer,
med mange linjer kode men man vil fortsatt slippe å trekke inn biblioteker eller
andre filer for å vise grafikken som er laget. Siden det kun er en fil som bruker
den velkjente XML strukturen, kan SVG grafikk enkelt lages i en tekst editor.

Silverlight er som Flash en klient side applikasjon. Det vil si at det er nettleseren
som tar seg av kjøringen av Silverlight applikasjonen. Nettleseren har ingen 
innebygget støtte  for Silverlight, og trenger derfor tredjeparts programvare for
å kunne vise applikasjonen. Det er sjeldent positivt når en bruker oppsøker et nettsted
og trenger enda en plugin for å kunne vise innholdet. Brukeren hadde fått en
bedre opplevelse om andre teknologier kunne brukes for å slippe alle pluginene.

SVG har denne fordelen, siden det støttes direkte i nettleseren trenger ikke
brukeren å bekymre seg om å laste ned ekstra tillegg for å finne innholdet på
ulike nettsider. Ettersom det er store forskjeller i dag på alder og ferdigheter
på internett brukere er det viktig å gjøre mest mulig informasjon tilgjenglig
for flest mulig. 

Egentlig kan man stille spørsmål ved hvorfor det var behov for enda en teknologi
som gjorde den samme jobben som flere andre før den. Vi kan f.eks mange likheter
i mellom Silverlight og Flash. Mange vil gå så langt å si at Silverlight er Flash
i en Microsoft wrapping, som på mange måter er korrekt. Hvis vi sammenligner
f.eks hvordan SVG sin XML og Silverlight sin XAML ser ut når nettleseren skal
tolke det. Er dette veldig likt, så mange stiller spørsmål ved hvorfor Microsoft
ikke heller tok i bruk teknologi som allerede var tilstedet, SVG, isteden for
å lage noe helt eget og propertiert. 

http://en.wikipedia.org/wiki/Microsoft_Silverlight
http://www.smashingmagazine.com/2009/05/09/flash-vs-silverlight-what-suits-your-needs-best/
http://faq.programmerworld.net/programming/silverlight.html
http://news.cnet.com/what-is-silverlight-really/
http://weblogs.asp.net/jgalloway/archive/2007/06/05/silverlight-and-xaml-have-you-guys-met-old-man-svg.aspx
