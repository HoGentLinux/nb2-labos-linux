# Studiewijzer Netwerkbeheer 2 - Linux (2019-2020)

Deze studiewijzer bevat een toelichting van de organisatie van de module Netwerkbeheer 2, onderdeel Linux van de HBO5-opleiding Informatica (optie Netwerkbeheer) voor academiejaar 2019-2020. Het onderdeel Linux wordt gegeven door:

- Frédéric Van Walle <mailto:frederic.vanwalle@hogent.be> (Tweede semester)

## Praktisch

Wat betreft praktische afspraken, regelingen, verwachtingen, enz. in verband met deze cursus zijn dit de enige geldige bronnen van informatie:

* Deze studiewijzer
* Aankondigingen en documenten op Chamilo, onder de cursus [GRDU-INF](https://chamilo.hogent.be/index.php?go=CourseViewer&application=Chamilo%5CApplication%5CWeblcms&course=36670)

Vragen stellen over de leerstof of over de organisatie van de cursus kan tijdens de contactmomenten, op het [Chamilo-forum](https://chamilo.hogent.be/index.php?go=CourseViewer&application=Chamilo%5CApplication%5CWeblcms&course=36670&tool=Forum&browser=List&tool_action=Viewer&display_action=ForumViewer&publication=1501423), of via e-mail. Algemeen worden cursisten aangespoord om vragen te stellen via het forum, zodat iedereen het antwoord kan zien. Jammer genoeg krijgen de lectoren geen melding als er nieuwe berichten gepost worden. Het is dus nuttig om een seintje te geven via e-mail als een antwoord uitblijft. Sorry voor dit ongemak.

Indien er na raadplegen van deze informatie toch nog twijfel of onduidelijkheden blijven bestaan over gelijk welk aspect van deze cursus, neem dan zo snel mogelijk contact op met je lector, hetzij tijdens de contactmomenten, hetzij via e-mail. Indien nuttig of nodig wordt het antwoord als aankondiging op Chamilo doorgegeven aan alle cursisten.

## Doelstellingen

Na succesvol afleggen van deze cursus zou je in staat moeten zijn om op een Linux-systeem **netwerkdiensten** (zoals web, DNS, DHCP, enz) op te zetten, te beheren en te troubleshooten.

We leggen daarbij nadruk op **automatisering**. Het eenmalig installeren en configureren van bv. een webserver is één ding, er voor zorgen dat je een webserver op een reproduceerbare en betrouwbare manier in productie kan brengen is nog een stuk complexer. We zullen dus telkens de installatieprocedures uitwerken in scripts zodat we netwerkdiensten zonder manuele stappen in productie kunnen brengen.

Een tweede aandachtspunt is het gebruik van geschikte **documentatie** en handleidingen. Googlen geeft je een berg informatie over hoe je met Linux bepaalde zaken kan bereiken, maar vaak is deze informatie verouderd, niet relevant of weerspiegelt deze niet de tegenwoordig aanvaarde *best practices*. Linux is een domein met veel diversiteit en afhankelijk van de Linux-distributie vind je andere commando's, directorystructuur, enz. Ook is er de laatste jaren heel veel veranderd, en als je niet oplet vind je nog vaak informatie terug die enkel relevant is voor oudere versies. Het is dus belangrijk om gebruik te maken van goede documentatie die relevant is voor de gebruikte Linux distributie en versie.

Tenslotte hebben we ook aandacht voor **troubleshooting**, het op een systematische en grondige manier opzoeken van fouten in de configuratie van een netwerkservice.

## Opzet lesmomenten

In deze cursus beperken we hoorcolleges tot het absolute minimum. Onze opvatting is dat systeembeheer een vakdomein is dat je je enkel kan eigen maken door **praktijkervaring** op te doen. Tijdens de contactmomenten willen we daar dan ook maximaal op inzetten.

Aan de hand van een reeks **labo-taken** verdiepen we ons in het opzetten van netwerkdiensten op een Linux-systeem en het automatiseren ervan. In de eerste plaats tracht je die zelfstandig uit te werken, gebruik makend van de opgegeven studiematerialen. Er worden bij elke opdracht een aantal referenties aangereikt, maar het is aan jou om die te bekijken en er vertrouwd mee te geraken. Samenwerken onder de cursisten is toegelaten en wordt aangemoedigd. Wanneer je vast komt te zitten, mag je altijd beroep doen op de lector om je te helpen.

## Aanwezigheid

Elke les worden er -conform de regels van het HoGent- aanwezigheden opgenomen. Aanwezigheid is echter niet verplicht, tenzij voor cursisten die genieten van betaald educatief verlof. Een afwezigheid wettigen kan enkel via het cursistensecretariaat. Laat dit tijdig weten aan de lector (en toon de wettiging ook aan) zodat dit correct kan ingevuld worden op de aanwezigheidslijst.

Ondanks het feit dat aanwezigheid niet verplicht is, dien je wel de labo's (zie verder) te maken tijdens het semester en je code in te dienen. Ook is het verplicht om het resultaat te demonstreren aan de lector tijdens de lesmomenten of aan de hand van een screencast.

## Evaluatie

De cursus Netwerkbeheer 2 bestaat uit twee grote onderdelen, Linux en Windows Server. Deze staan respectievelijk op 60% en 40% van het totaal. Het beoordelen van de bekomen competenties gebeurt volledig op basis van niet-periodegebonden evaluatie. Je moet voor beide onderdelen afzonderlijk geslaagd zijn om voor de gehele cursus te slagen. Omdat de cursus volledig via niet-periodegebonden evaluatie beoordeeld wordt, wordt er geen 2e zittijd ingericht. Zie ook de modulefiche voor meer info.

Het onderdeel Linux wordt geëvalueerd aan de hand van labo-opdrachten. Een deel van deze labo-opdrachten gaan over het opzetten van netwerkdiensten, een ander zijn troubleshooting-taken. Bij elke labo-opdracht dien je een schriftelijk verslag in op Chamilo, onder Opdrachten, **én** geef je de lector tijdens de contactmomenten een demo met mondelinge toelichting waarin je je werkwijze toelicht en aantoont dat je resultaat voldoet aan de opgegeven specificaties.

Voor de "gewone" labo-taken worden volgende richtlijnen gehanteerd bij het toekennen van de score:

- 10/10: de opdracht is volledig volgens de specificaties uitgewerkt (d.w.z. alle acceptatietests slagen), en de lector kan de opstelling onafhankelijk en zonder wijzigigingen aan het configuratiescript reconstrueren aan de hand van de code van de cursist op Github. De cursist is grotendeels zelfstandig tot dit resultaat gekomen en heeft hier weinig tot geen hulp voor nodig gehad. De cursist heeft een demo gegeven en mondeling toegelicht. In het labo-verslag is duidelijk aangetoond dat de specificaties inderdaad gehaald zijn, ahv. een testverslag en console-transcript van uitgevoerde acceptatietests.
- 9-8-7-6/10: de opdracht is volledig volgens de specificaties uitgewerkt, maar aan de andere verwachtingen is niet of in mindere mate voldaan.
- 5/10: de opdracht is volledig volgens de specificaties uitgewerkt, maar de cursist heeft heel veel hulp nodig gehad van de lector om tot dit resultaat te komen.
- 4-3-2-1/10: de opdracht is slechts gedeeltelijk volgens de specificaties uitgewerkt. Het labo-verslag ontbreekt of is onvolledig.
- 0/10: de cursist heeft de opdracht niet gerealiseerd

Voor de troubleshooting-taken geldt:

- 10/10: alle fouten werden tijdens de sessie (dus binnen 3,5 uur) gevonden en opgelost. Het eindresultaat werd gedemonstreerd aan de lector (ahv uitvoeren acceptatietests). Het verslag is volledig en gedetailleerd en daaruit blijkt dat de cursist de bottom-up strategie op een systematische en grondige wijze gehanteerd heeft.
- 9-8-7-6-5/10: niet alle fouten werden tijdens de sessie gevonden en opgelost, maar de netwerkservice(s) die in de opdracht aan bod komt/komen zijn beschikbaar voor clients op het lokale netwerk. Het verslag is volledig (tot op het punt waar de cursist gekomen is) en daaruit blijkt dat de cursist de bottom-up strategie op een systematische en grondige wijze gehanteerd heeft.
- 4-3-2-1/10: de cursist is er niet in geslaagd om de netwerkservice(s) beschikbaar te maken voor clients op het netwerk. Het verslag is onvolledig of er blijkt uit dat de cursist de bottom-up strategie *niet* systematisch en/of grondig toegepast heeft.
- 0/10: de cursist heeft het troubleshooting-labo niet uitgevoerd.

Voor het bepalen van het eindresultaat wordt een gewogen som genomen van de verschillende labo's, wat een totaal op 60 oplevert:

- Labo 0 (opzetten werkomgeving): 5
- Labo 1 (LAMP): 15
- Labo 2 (DNS): 10
- Labo 3 (Samba): 10
- Labo 4 (DHCP/gateway): 10
- Troubleshooting: 10 (het *beste* resultaat van de uitgevoerde troubleshooting-labo's)

## Verwachte voorkennis

Deze cursus bouwt verder op de veronderstelling dat je al een zekere basiskennis van Linux hebt. Meer bepaald veronderstellen we dat je volgende onderwerpen beheerst:

- Werken op de command-line (Bash shell, structuur commando's, opties en argumenten)
- De Linux mappenstructuur (bv. `/etc/`, `/bin`, `/home`, `/usr/local`, enz.)
- Gebruikers en gebruikersgroepen (`useradd`, `chown`, `chgrp`, `/etc/passwd`, `/etc/shadow`, enz.)
- Bestandspermissies (`chmod`, permissiecodes (bv. 777, `+x`))
- Processen en onderlinge communicatie
    - Exit status (incl. verband met booleaanse waarden en logische operatoren `&&`, `||`, ...)
    - Input/output en redirection (`>`, `>>`, `<`, `|`, standard input/output/error, `tee`, ...)
- Basiscommando's en Bash scripting
    - Tekstfilters (bv. `cat`, `less`, `tail`, `head`, `cut`, `grep`, `sed`, `awk`, `sort`, ...)
    - Variabelen, incl. command line parameters (`$0`, `$1`, enz., `shift`)
    - Control flow (`test`/`[ ]`, `if`, `case`, `for`, `while`, ...)
- Een teksteditor kunnen gebruiken: Nano of Vim op Linux, Sublime Text of Notepad++ op Windows

Wie er behoefte/nood aan heeft om bepaalde verwachte voorkennis bij te werken, kan dat aan de hand van volgende leermaterialen. Deze zijn allemaal gratis/vrij beschikbaar.

* Cobbaut, P. 2015. *Linux Fundamentals.* <http://linux-training.be/downloads/> (gratis e-book)
* Bert Van Vreckem, *Linux videolessen* <https://www.youtube.com/user/bertvvrhogent/>

## Leerdoelen

### Basistaken systeembeheer

- VirtualBox VMs kunnen aanmaken en configureren
    - VirtualBox netwerkinstellingen begrijpen en kunnen toepassen
- Een minimale Linux-server (CentOS 7, een variant van Red Hat Enterprise Linux of RHEL) kunnen installeren
    - Manuele installatie
    - Het opzetten van een virtuele server kunnen Automatiseren m.h.v. Vagrant
- Basis-systeembeheertaken kunnen uitvoeren in de context van RHEL/CentOS 7
    - Een server beheren vanop afstand via SSH
    - Installatie en onderhoud van software met rpm en yum
    - Netwerkinstellingen configureren en problemen oplossen
    - Netwerkservices beheren
- Documentatie gebruiken en schrijven
    - De meest geschikte documentatie kunnen opzoeken en toepassen bij het uitvoeren systeembeheertaken.
    - Een installatieprocedure of configuratie zo gedetailleerd kunnen beschrijven dat dit reproduceerbaar is door een collega systeembeheerder
    - Kunnen werken met Git voor het bijhouden van configuratie en documentatie
- Troubleshooting
    - Op een systematische en grondige manier configuratieproblemen van een Linux server opsporen en oplossen

### Netwerkservices opzetten

- Een host en netwerkservices kunnen beveiligen tegen courante types van aanvallen
    - De firewall van een host kunnen instellen
- Een "LAMP-stack" (= Linux + Apache + MariaDB + PHP) kunnen opzetten
    - Ondersteuning voor PHP
    - Databank-ondersteuning met MariaDB
    - Een webapplicatie uitrollen
    - HTTPS en certificaten
- Een Samba fileserver kunnen installeren, configureren en beveiligen
    - De configuratie van Samba begrijpen en kunnen aanpassen
    - Toegangsrechten tot shares kunnen instellen
    - SELinux-instellingen kunnen aanpassen
- Een DNS-server kunnen installeren en configureren met Dnsmasq
    - De structuur van een zone-bestand begrijpen en kunnen aanpassen
- Een ISC DHCP-server kunnen installeren en configureren
- De installatie van een netwerkservice kunnen automatiseren aan de hand van Bash scripts

## Leermiddelen

Probeer in te gaan tegen de neiging om al je vragen op Google op te zoeken, want je zal vaak informatie vinden die niet relevant is voor de variant van Linux die we in deze cursus gebruiken (RHEL/CentOS 7), of verouderd. Veel HOWTOs, blogartikels en handleidingen zijn geschreven in de context van Ubuntu/Debian of van een oudere versie van RHEL/CentOS en die verschillen in een aantal fundamentele zaken van de laatste versie van CentOS.

[CentOS](https://www.centos.org/) is een Linux-distributie die in essentie identiek is aan RedHat Enterprise Linux (RHEL), maar zonder het onderhoudscontract dat verplicht is wanneer je gebruik maakt van RHEL. CentOS is bijgevolg gratis, in tegenstelling tot RHEL.  De "RHEL 7 System Administrator's Guide" kan je beschouwen als het handboek voor deze cursus, alhoewel we ook gebruik zullen maken van andere bronnen.

- Cameron, T., 2012. *SELinux for Mere Mortals.* 2012 Red Hat Summit. <http://www.youtube.com/watch?v=MxjenQ31b70>
- Hashimoto, M. *Vagrant Documentation.* <https://docs.vagrantup.com/v2/>
- Jahoda, M., et al. 2016b. *Red Hat Enterprise Linux 7 Networking Guide* <https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/Networking_Guide/>
    - hst. 1.6-9, 2.1-4, 3, 10, 11
- Jahoda, M., et al. 2016. *Red Hat Enterprise Linux 7 SELinux User's and Administrator's Guide.* <https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/SELinux_Users_and_Administrators_Guide/>
    - hst. 1-4, 10, 13, 14, 17, 20, 24
- Svistunov, M., et al. 2016. *Red Hat Enterprise Linux 7 System Administrator's Guide* <https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/System_Administrators_Guide/>
    - hst. 1-4, 7-9, 11, 14.1, 18, 20
- Van Vreckem, B. 2017. *Network Troubleshooting Checklist,* <https://github.com/bertvv/cheat-sheets>
- Vernooij, J. R., et al. 2010. *The Official Samba 3.5.x HOWTO and Reference Guide.* <https://www.samba.org/samba/docs/man/Samba-HOWTO-Collection/>
    * Hst. 38 The Samba Checklist <https://www.samba.org/samba/docs/man/Samba-HOWTO-Collection/diagnosis.html>
    * Hst. 39 Analyzing and Solving Samba Problems <https://www.samba.org/samba/docs/man/Samba-HOWTO-Collection/problems.html>

## Aanbevolen literatuur

Deze werken zijn niet verplicht en zijn ook geen onderdeel van de expliciet te kennen leerstof. Nochtans zijn ze de moeite waard om na te slaan en een uitstekende investering voor wie in een rol van systeembeheerder wil groeien. Deze werken worden in onze branche wereldwijd geprezen en aanbevolen als basisliteratuur.

- Gene Kim, et al. 2014. *The Phoenix Project: A Novel about IT, DevOps, and Helping Your Business Win*. IT Revolution Press. <http://itrevolution.com/books/phoenix-project-devops-book/>
- Tom Limoncelli, et al. 2007. *The Practice of System and Network Administration*, Second Edition. Addison-Wesley Professional. <http://everythingsysadmin.com/books.html>
- Tom Limoncelli, et al. 2014. *The Practice of Cloud System Administration: Designing and Operating Large Distributed Systems, Volume 2*. Addison-Wesley Professional. <http://the-cloud-book.com/>

Deze opleiding werd opgesteld door Bert Van Vreckem.
