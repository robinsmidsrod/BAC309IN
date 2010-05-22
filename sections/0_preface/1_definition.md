Bachelor for Informatikk 2009/2010

Høgskolen i Vestfold

Gruppemedlemmer:

* Petter Dahl Thunæs
* Robin Smidsrød

Veileder: Viggo Holmstedt

## Problemstilling ##

SVG-standarden (Scalable Vector Graphics) har vært tilgjengelig i mange 
år. Den har likevel ikke total markedspenetrasjon. Vi ønsker å finne 
ut hvorfor SVG den dag i dag fremdeles ikke kan benyttes av utviklere 
uten å måtte forholde seg til hvor standarden er støttet. En viktig 
del av dette er å finne ut hvordan Microsoft har påvirket utvikleres 
syn på SVG som en moden standard. I tillegg ønsker vi også å finne 
ut av om SVG fremdeles er den teknologien som anbefales for presentasjon 
av skalerbar grafikk på World Wide Web, eller om det er kommet andre 
teknologier på markedet som bedre løser SVG sitt problemområde. 

For å illustrere bruk av SVG ønsker vi å lage et bibliotek som 
genererer diagrammer til forretningsbruk, slik som kakediagram og 
linjediagram. Vi velger også å lage et tradisjonelt program med 
grafisk brukergrensesnitt. Dette programmet skal ta imot data fra 
brukeren og generere SVG-filer ved hjelp av biblioteket omtalt over. 
Programmet skal kunne lese inn data fra ekstern kilde, slik som en fil 
eller URL. 

## Spørsmål som dekker grunnlaget for oppgaven ##

 - Introduksjon: Hva er SVG?
 - Hvilke nettlesere må støtte SVG for at man som utvikler kan benytte SVG uten å tenke på klient-støtte?
   - Hvor mye av SVG-standarden støtter de forskjellige nettleserne?
     - Hvilke nettlesere støtter standarden i det hele tatt?
     - Er det noe spesifikk funksjonalitet i SVG-standarden som ikke er støttet?
     - Finnes det noen mangler eller andre svakheter i støtten av SVG-standarden i disse nettleserne, f.eks. feil implementasjon?
 - Hvorfor støtter ikke Microsoft Internet Explorer SVG-standarden?
   - Hvordan forholder Microsoft seg til W3C sin SVG-standard?
     - Har det synspunktet endret seg over tid?
   - Hvilke andre teknologier har Microsoft valgt å benytte isteden?
   - Hvilken innvirkning på markedet har Microsoft sitt synspunkt på adopsjon av SVG i sin helhet?
 - Hvilke alternative teknologier eksisterer som dekker SVG sin funksjonalitet?
   - Hvordan benytter utviklere Adobe Flash fordi SVG ikke er tilgjengelig?
   - Kan Microsoft SilverLight også benyttes for å omgå mangel på SVG-støtte?
   - Kan JavaScript-bibliotek som [Raphaël http://raphaeljs.com/] være et alternativ til SVG?
     - Hvordan skille Raphaël sin imparative fokus seg fra SVG sin deklarative fokus?   
   - Kunne VML (Vector Markup Lanuage), som Microsoft støtter, vært avansert som en global standard istedenfor SVG?
     - Finnes det proprietære elementer i VML som gjør den uskikket som en åpen standard?
     - Er VML som standard knyttet for sterkt til Microsoft sin implementasjon?
 - Konklusjon: Hva må skje i markedet for at SVG skal "ta av" som standard?
 
## Arbeidsmetodikk ##

Vi vil bruke en smidig utviklingsmetodikk (agile), hvor vi setter opp korte 
perioder (sprint), hvor vi jobber på spesifikke problemstillinger. 
Idéen med smidig utvikling er at etter hver periode sitter man igjen 
med et system som virker med den funksjonaliteten som var planlagt for 
perioden. Hver periode begynner med en planleggingsrunde over hva man 
skal ha med, og avsluttes med versjoner av applikasjon og bibliotek som 
kan benyttes slik de er. Vi setter opp til en felles dag i uken med 
arbeid i plenum og jobber hver for oss de resterende dagene. Vi kommer 
til å bruke 3 uker pr. periode. Oppgaver som ikke er utført i en 
periode på grunn av manglende tid vil bli overført til neste periode. 
Start og slutt på en periode legges til felles arbeidsdager i den 
gjeldende uken. All dokumentasjon av programvaren benytter engelsk som 
språk. Dette gjør det enklere for tredjeparter å evaluere koden i 
prosjektet uavhengig av norsk språkforståelse.

## Modellapplikasjon ##

### Bibliotek: SVG-generator ###

Vi skal lage et Java-bibliotek som gjør det mulig å generere SVG-filer 
basert på instanser med strukturerte data. Vi velger å benytte 
mønstre for god programdesign slik at biblioteket gjør det enkelt å 
utvide biblioteket til å støtte mer funksjonalitet på et senere 
tidspunkt. Vi planlegger å benytte white-box reuse-konseptet for å 
oppnå høy fleksibilitet.

#### Tolk for å lese inn data fra fil ####

Vi planlegger å lage en tolk (eng:parser) som kan ta inndata i form av 
XML eller CSV (Comma Separated Values) og gjøre om dette til strukturer 
som SVG-generatoren kan benytte. Intensjonen er å gjøre det mulig å 
enkelt eksportere data fra et regneark (f.eks. Excel eller OpenOffice) 
som kan benyttes som inn-data til denne tolken. Poenget er å støtte 
det eksport-formatet som er enklest å generere for en sluttbruker av 
desktop-applikasjonen. Excel sitt "XML-regneark 2003"-format er f.eks. 
godt egnet som inndata. 

### Applikasjon: Grafisk brukergrensesnitt for håndtering av inndata ###

Her planlegger vi å lage en normal applikasjon som kan gi et 
grensesnitt til brukeren for å skrive inn data eller laste inn en fil 
for å fylle inn et datasett. Den skal igjen kunne generere SVG-filer 
basert på dette datasettet og åpne de i en nettleser. Applikasjonen 
skal detektere hvilke nettlesere brukeren har og gi en opsjon på 
hvilken man ønsker å benytte til presentasjon av SVG-filen. Hvis tiden 
strekker til vurderer vi og også legge inn støtte for å prosessere 
mange filer på en gang (eng:batch-conversion). Med et godt API for 
hvordan generere et datasett burde det være enkelt å utvide 
applikasjonen fra å håndtere kun en fil til å kunne håndtere mange 
filer på en gang. Vi planlegger å benytte mønstre for god programdesign
for å gjøre applikasjonen enkel å utvide og lettere å vedlikeholde. Dette
vil passe godt sammen med vårt valg om å benytte en smidig utviklingsmetodikk.

### Lisensiering ###

Kildekoden til biblioteket og applikasjonen velger vi å tilgjengeliggjøre
under BSD-lisensen. Dette gjør det mulig for andre utviklere å benytte
koden fra denne bacheloroppgaven i kommersielle sammenhenger.

## Valg av verktøy til prosessen ##

Vi velger å benytte oss av Eclipse på grunn av god erfaring med denne 
utviklingsplatformen. Siden vi har opparbeidet oss god erfaring med bruk 
av Java velger vi å benytte dette programmeringsspråket til 
modellapplikasjonen. 

For å koordinere arbeidsoppgavene i prosjektet velger vi å benytte 
LiquidPlanner.com (LP) som er et svært godt planleggingsverktøy som er 
gratis tilgjenglig for akademisk bruk. LP er svært godt egnet til en 
smidig utviklingsmetodikk. 

Versjonskontroll er viktig i større prosjekter. For å dekke det 
behovet velger vi å benytte Git og GitHub.com. Git gir oss gode 
muligheter til å jobbe på flere deler av prosjektet samtidig uten 
frykt for integrasjonsproblemer. Denne muligheten kommer fra det faktum 
at Git er et distribuert revisjonskontrollsystem. 

Grunnen til at vi velger GitHub.com som tjenesteleverandør er at de gir 
gratis tilgang til prosjekter som klassifiseres som fri programvare. De 
er en seriøs aktør på markedet med svært god stabilitet og 
sikkerhet. I tillegg har brukergrensesnittet deres mange fiffige 
funksjoner som øker effektiviteten i en distribuert 
utviklingsarbeidsflyt. Dersom noen utviklere i fremtiden ønsker å 
videreutvikle prosjektet gir GitHub dem en enkel mulighet til å gjøre 
det. 
