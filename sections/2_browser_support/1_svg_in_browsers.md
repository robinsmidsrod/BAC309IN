# Hvor mye av SVG standaren støtter de ulike nettleserne? #
SVG er implementert i de fleste store nettlesere, på en eller annen måte. Støtten 
for SVG er ikke fullkommen i noen av nettleserne, men de fleste støtter store deler. 
Det finnes nettlesere som ikke har implementert SVG direkte, men benytter en plugin 
for å oppnå samme effekten. Microsoft har fått mye kritikk for å ikke tidligere å ha 
startet planlegging av SVG støtte i deres Internet Explorer. Mozilla, Safari, Opera 
og Chrome har alle innbygget støtte for SVG. Det er også liten forskjell for hvilken 
støtte som finnes i de ulike nettleserne. Det er altså de samme funksjonene innen 
SVG biblioteket som ikke fungerer i de ulike nettleserne.

Mozilla har implementert nesten alle aspekter av SVG standarden. Målet til Mozilla 
er å ha implementert hele Full 1.1 spesifikasjonen til SVG. Det er deler av SVG hvor 
det meste av standarden er implementert. Mozilla har f.eks implementert store deler 
av Text modulen, men mangler delene som har med "glyps" å gjøre. De store bitene som 
mangler i implementasjonen til Mozilla er Font og Animation modulen. Det er her ingen 
funksjoner som fungerer korrekt innenfor modulen. Det er prøvd å implementere deler 
av Animation, men det eksisterer bugs på disse til dags dato.
[http://www.mozilla.org/projects/svg/status.html]

Opera har i motsetning til Mozilla implementert helt på egenhånd. Siden Opera ikke 
bygger på Gecko motoren, måtte dette gjøres helt fra bunn. Opera har også 
implementert store deler av SVG standarden, men også her mangler det flere moduler. 
Som hos Mozilla mangler det støtte for "glyphs", men hos Opera har man har klart å 
implementere animasjons aspektet av SVG. Det er ikke hunder prosent, ettersom det 
mangler både lyd og video støtte. Det er heller ingen støtte for font eller cursor 
modulen som også Mozilla mangler. 
[http://www.opera.com/docs/specs/svg/]

Chrome og Safari baserer seg på Webkit som er en nettleser motor for å vise grafikk. 
Derfor vil det være naturlig å bruke statusen for SVG implementasjonen i Webkit 
isteden for å sammenlignende nettleserne. Ettersom disse benytter Webkit, og vil ha 
samme feil og mangler. Webkit har implementert store deler av SVG standarden, men også 
her mangler det flere moduler. Det finnes flere likheter med de andre nettlesernes 
mangler også i Webkit. Blant annet mangler det "glyph" støtte i tekst modulen, samt 
store deler av animation modulen. Det som er annerledes fra Webkit til f.eks Opera, 
er at det i webkit mangler støtte for flere filter. Webkit har derimot bedre støtte 
når det kommer til font modulen.
[http://webkit.org/projects/svg/status.xml]

Internet Explorer har ingen native støtte for SVG. Den baserer seg på at man benytter 
en form for plugin, hvor den mest kjente er produsert av Adobe. Denne støtter den fulle 
SVG standarden, inkludert både animasjonen og fonter. Det finnes også flere plugins 
som f.eks Batik SVG kit. Kiten er skrevet i Java, og har like god støtte som Adobe 
pluginen. Microsoft har planlagt og delta mer aktivt i SVG utviklingen, men inntil videre 
må man nøye seg med en plugin om man vil benytte SVG i Internet Explorer.
[http://www.planetsvg.com/content/svg-solutions-internet-explorer]
