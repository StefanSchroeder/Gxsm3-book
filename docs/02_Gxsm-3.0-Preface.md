
# Preface
[]{#ch:preface label="ch:preface"}

The GXSM history and very early predecessors are dating back to 1995. It
came a long way even lived on different operating systems with initial
DSP code fragments in C, Turbo-Pascal and ideas I have to give credit to
Gerhard Meyer to get me started with the very very early stages of my
experiences with STM control. It evolved and diverted quickly into it's
very own system from then on. Other branches related to work of Ullrich
Köhler aka PM-STM had some influences and eventually a PM-STM operating
on OS/2 was a live. With that operating system phasing out a move to
Linux was undertaken and some software named \"Xxsm\" based on the
X-Forms GUI was evolving and turned pretty mature by end of 2000 with a
big move over to the early Gtk toolkit and Gxsm got established. From
there a long and steady journey was up on it. With more and more
multi-core/threadding machine little related pit-falls evolved and were
hard to find and even harder to fix -- if not even unfixable without
major reworking. But now in 2017 a huge move and undertaking whopped
that grown up Gxsm2 over into what now is the all new Gxsm3 with a
rewritten GUI at all levels and logics behind. Lasted big hit is the
reimplementation of the OpenGL based 3D/Volume data view to inspect and
visualize up to 5D data sets in real-time and dynamically unleashing the
full power of a gaming grade GPU. GL-4.0 essential.

*For historical reasons the first section of the following preface will
remain in German.*

Das Jahr 2000 ist vorraussichtlich mein letztes am Institut für
Festkörperphysik der Universität Hannover. In diesem Vorwort möchte ich
die Historie der ehemals 'nur' STM-Software festhalten. Ich habe die
letzten fünf Jahre, die Zeit vor meiner Diplomarbeit eingeschlossen,
dort verbracht und in der Arbeitsgruppe von Michael Horn-von-Hoegen
begonnen, mich mit der Tunnelmikroskopie und den zugehörigen Techniken
zu beschäftigen. Im Sommer 1995 zeigte mir A.Meier ein kleines, noch
unberührtes, unter einer Schutzhaube verborgenes Gerät -- ein Micro STM.
Wir besaßen nur dieses Gerät zusammen mit einem Tunnelstromverstärker,
einer Signalprozessor gesteuerte Meßkarte (PC31) -- und -- dem Wissen,
daß damit ein gewisser G.Meyer in Berlin erfolgreich ein Gerät gleichen
Prinzips bedient. Ich machte es mir zur Aufgabe, der ganzen Sache Leben
einzuhauchen ...

Von G.Meyer hatte ich unterdessen einige Software zusammengesammelt und
wir versuchten, die diversen DOS/Pascal Programme auf unserem
hochmodernen P90 zum Laufen zu bringen. Währenddessen vertiefte ich mich
in die Geheimnisse der DSP-Programmierung und der Kommunikation zwischen
Host-PC und DSP.

Des Fortschritts wegen beschloß ich, ein bereits vorhandenes
OS/2-Programm namens PMSTM weiter zu entwickeln. PMSTM basierte auf
einer schon erheblich älteren OS/2 Version vonL.Anderson und wurde von
H.Bethge zum Messen eingesetzt.

Gleichzeitig produzierte R.Kumpe einige Assemblerroutinen zur
Ansteuerung seiner Datatranslation-Karte unter OS/2 -- welche ebenfalls
einen spezial STM-Eigenbau, jedoch noch mit analogem Regler, bedienen
sollte.

Parallel wurden mit H.Pietsch die notwendigen Zusätze für AFM
implementiert.

Es verging einige Zeit, aber dann war es soweit: Die neue OS/2 Software
konnte das Gerät steuern und Daten aufnehmen und anzeigen. An Luft
wurden erste Versuche mit Goldproben und abgeknipster Wolframspitze
erfolgreich abgeschlossen. Weitere Verbesserungen in nahezu jeder
Hinsicht konnte ich im Verlauf meiner Diplomarbeit einbringen -- das
Gerät war unterdessen im UHV der Maschine "Quantum" im Einsatz.

Die Geschichte des Micro STM´s wurde im weiteren wesentlich von R.Hild
bestimmt, der das höchst empfindliche Gerät in einem an Federn
aufgehängten Kupferblock mit 3D-Wirbelstromdämpfung versenkte und somit
zu Höchtstleistung brachte.

Die Zeit war gegen das wunderbar stabile OS/2, es wurde zum Außenseiter
und eigentlich benötigte man es nur noch zum Messen ...

Windows erschien mir als durchaus erfahrenem und gebrantmarktem
DOS/Win3.X Programmierer als völlig ungeeinete Platform, so hatte ich
doch die Vorzüge einer stabilen Betriebssystemplatform mit OS/2 zu
schätzen gelernt. Ich konnte jedoch mit meinen Unix/Linux
Grundkenntnissen schnell eine zukunftssichere Alternative finden und
entschied, erste Versuchte mit einer neuen Software für mein SPA--LEED
zu unternehmen. Das SPA--LEED sollte nämlich ebenfalls mit einer
Signalprozessorkarte gesteuert werden, um später ggf. ohne zusätzlichen
Aufwandt ein STM nachrüsten zu können.

Das Resultat war ein Programm namens xspa, welches unter Verwendung der
xforms-Library unter X11 lief.

Aus diesen Erfahrungen schöpfend entwickelte ich ein völlig neues
Konzept für eine grundlegend neue Struktur eines neuen STM-Programmes --
der alte Code war zu steif und beinhaltete viel zu viele globale
Variablen. Auch das fixe Datenformat dat wurde als historisch abgelegt
und es fand ein Übergang zu dem NetCDF-Format statt. Das neue Konzept
ist objektorientiert und ermöglicht erstmals eine flexible Mehrkanal-
Verwaltung und -Messung (dies wurde in PMSTM nur per Trick in
unflexibler Weise zur Datenaufnahme hineigebastelt, da das AFM die
gleichzeitige Aufzeichnung von Kraft und Reibungssignal ermöglicht).

Es entstand xxsm, welches strukturell die Grundlage des heutigen gxsm
darstellt. Dieses Programm entstand im Verlauf der Diplomarbeit von
R.Hild, der die Entwicklung life mit seinem STM verfolgen mußte bzw.
durfte :=)

Auch unser neues Spielzeug, ein Luft-AFM, wurde von xxsm gesteuert sowie
eine Streulichtapparatur (SARLS).

Die Computertechnologie schreitet unaufhaltsam vorann und es ist zu
befürchten, daß bald keine ISA-Slots mehr verfügbar sind. So entschieden
wir für neue Geräte, eine PCI-Version der DSP-Karte (PCI32) zu kaufen.
Diese Karte schien der PC31, mal von dem PCI-Bus abgesehen, doch sehr
vergleichbar. Es gab jedoch einige Unwegsamkeiten, die mich einige
Nerven kosteten ...

Jedenfalls entwickelte ich ein Kernelmodul für diese Karte und später
eine Variation für die alte PC31, denn auf User-Space IO konnte wegen
PCI Konfiguration, etc. nicht mehr ausgewichen werden. Zusätzlich mußten
alle Utilities (Loader, Terminal) an die neue Karte angepasst werden.
Eine neue Library machte das anfängliche Chaos komplett -- die Hoffnung,
das DSP- Programm nicht umschreiben zu müssen, war vergebens. Jedoch
konnte mit einigen Tricks weiterhin eine, zwar neue, aber gemeinsame
Version erhalten bleiben.

Die alte xforms Libary ist zwar extrem effizient, insbesondere meine
sehr schnellen MIT-SHM Bilddarstellungsroutinen, aber die Oberfläche und
Menüdarstellung lassen einige Wünsche offen. Eine modernes Toolkit
Namens Gtk+/Gnome weckte mein Interesse im Sinne des Fortbestandes und
der Weiterentwicklung dieser unterdessen mächtigen Mikroskopie-
Software. Ein Kraftakt von diversen Nächten zwischen Juni und Dezember
1999 brachte xxsm im neuen Gewand als gnomified xxsm - kurz gxsm hervor.

Das objektorientierte Konzept von Gtk+/Gnome vereinfachte es auch
erheblich, die SPA--LEED-Ansteuerung in gxsm mitaufzunehmen.
Darüberhinaus entstanden gleichzeitig einige Tools wie Gfit, Goszi und
dsp-applet.

Dieses Werk soll im weiteren all denjenigen helfen, die einerseits mit
gxsm arbeiten, aber auch etwas mehr über die Internas erfahren wollen.
So gliedert sich das folgende Manual in

-   einen anwendungsbezogenen Teil;

-   nützliche Tips (HOWTOs zu STM und AFM); und

-   einen Versuch das Programmkonzept zu erläutern.

Ich möchte hier meinen Dank an alle aussprechen, die zu meiner Arbeit
beigetragen haben, insbesondere jedoch:

M. Henzler für das immer gute Instituts-Klima und die schönen "Almen".\
M. Horn-von-Hoegen dafür, daß er mir die Zeit zum ständigen Arbeiten an
diesem Projekt gelassen hat.\
G. Meyer für seine Starthilfe bei der DSP Programmierung und diversen
Gesprächen.\
H. Bethge für Ihre Geduld mit mir im Keller.\
R. Kumpe für seine Mitarbeit an PMSTM und Diskussionen.\
H. Pietsch für sein Mitwirken an PMSTM.\
L. Anderson, den ich leider nie persönlich kennengelernt habe, für seine
Arbeit an PMSTM.\
U. Köhler und seine Truppe für einige Diskussionen.\
A. Meier für seine endlose Geduld mit mir ...\
F.J. Meier zu Heringdorf für immer wieder freundlich und fröhliche BS
Discussions mit diversen Guinness.\
R. Hild und M. Bierkandt für deren Ausdauer mit den ewig neuen
Versionen.\
A. Klust für alle Beiträge zu diesem Projekt.\
H. Goldbach für SPA--LEED Discussions und für den (noch nicht)
herausgesuchten BF krams.\
Heilo für die Gewährung einer Mehraufwandzulage.\
Negenborn Januar 2000 Percy Zahl

*... Gxsm has been licensed as GPL and goes to SourceForge.net ...*

Es ist Sonntag, der 21.1.2001, es schneit draußen und die Zeit ist mal
wieder ein Jahr fortgeschritten; Ich stecke mitten in meinen
Vorbeitungen zum Ortswechsel von Negenborn bei Hannover nach
Denver/Colorado und möchte ein paar Bemerkungen zum Stand des
Gxsm-Projekts festhalten, nachdem meine Dissertation mit der
Veröffentlichung meines Werkes zum Stress auf Oberflächen abgeschlossen
ist.

Das Gxsm-Projekt ist seit Herbst 2000 offiziell als Open-Source auf
[Source-Forge](http://www.sourceforge.net) via Web-Interface und CVS-Access verfügbar. Die
Verzeichnishierarchie wurde überarbeitet und "Gxsm" ist nun das
Projekthauptverzeichnis.

Im Dezember 2000 wurde ein flexibles Plug-In Interface für Gxsm
entworfen und damit begonnen alle speziellen Erweiterungen in Plug-Ins
auszulagern. Damit wird eine erhebliche Flexibilität erzielt. Im Januar
2001 sind ein SPA--LEED Simulationsmodul, Peak-Finder, Fokus-Tool und
Oszi-Plugin hinzugekommen. Ein Support für die alte Burr-Brown Karte für
SPA--LEED ist ebenfalls verfügbar und bereits im Einsatz.\
Negenborn Januar 2001 Percy Zahl

*... Gxsm goes international ...*

Just a few up-to-date remarks:

As far as I know Gxsm is used now in more than four countries around the
globe.

Kernel 2.4.x support was implemented and is proofed to work well.

More and more Plug-Ins are added ...

A Gnome Druid to guide the new Gxsm user along all most important
settings was added.\
Golden, Colorado USA, August 2001 Percy Zahl

*... about one year later and the Gxsm user community is expanding
worldwide -- some success?*

A lot of new features were added and a so called "multi-layer"
capability was implemented, especially for use with 2D probing. The
modularization via Plug-Ins is driven further, so the scanning and
probing control was released from Gxsm core and turned into Plug-Ins.
There is still a lot to do, but it is already producing valuable 2D STS
data! Together with this development the probing modes are expanded and
a experimental digital Lock-In was implemented on a combined DSP and
host level.

In today ongoing process the DSP software undergoes a complete redesign.
While the DSP hardware future is still not clear (some great options are
in sight) -- future DSP platform setups are very expensive due to
hardware and development tools as well, and as long there is no funding
there can't be a new implementation for this non profit project.

And today we can announce the beginning of the new composed Gxsm Manual.
It is partly automatic generated from Plug-In source files. Lots of
thanks to Andreas for initiating this development!\
Golden, Colorado USA, June 16, 2002 Percy Zahl

*... Gxsm-2.0 is coming and it also starts support for a new DSP
platform ...*

It's Sunday, my official part of my two year Postdoc job at Colorado
School of Mines in Golden has just passed and I'm working on my Gxsm
project -- it's snowing outside for the first time since about three
month of no perception at all ...

Two important milestones in the Gxsm history are just in progress:

Gnome 2 is now available and features several good changes and redesigns
but also some non-compatible issues to be taking into account. This has
now led to the new Gxsm-2.0 CVS branch and results into a new "gxsm2".
The port is completed, including over 70 PlugIns. Some minor issues are
to be treated but a functional alpha version of Gxsm-2 is available.

The old PCI32,PC31 DSP cards are hopelessly out of date and not any
longer easily available. And just in time the "SignalRanger" DSP
occured, it's a via USB connected standalone DSP board. So the Linux
support for SRanger-USB and some new DSP tools were developed and are
available via there own SF project (http://SRanger.sf.net). The 3rd DSP
soft generation for the fixed point SRanger board DSP (TMS320C5402) is
currently in development, in parallel the Gxsm2 SRanger support is
created -- No results yet, but it all looks promising.\
Golden, Colorado USA, February 2, 2003 Percy Zahl

*... GXSM-2 and Signal Ranger in daily data production!*

It's a rainy Sunday, and the GXSM manual is going to be revised to the
GXSM-2 version. The Signal Ranger documentation part is to be started
... but the Signal Ranger boards (SR-STD and SR-SP2) are now both
supported -- thanks to SoftDB for the friendly loan of the STD board!

Also I'm happy to say, the SR does a really good job in our lab as
second/spare and testing DSP subsystem. The analog performance (noise
level) is outstanding: Using a huge scanning tube (XY: 1000Å/V, Z:
200Å/V) it's possible to resolve the Au-herringbone and Buckyballs on
Au(111)!\
Adliswil, Switzerland, October 5th, 2003 Percy Zahl

*... GXSM-2 V1.8.4 and Signal Ranger going Multidimensional and Vector
Probing*

Before all that, the SRanger kernel module for Linux Kernel 2.6.12 and
higher was stabilized. The completion of the Vector Probe implementation
just happened. The design of the low level (DSP) Vector Probe was
finished for over an year but the streaming of the data was only limited
working for some time, also a really user friendly GUI was pending. That
all changed now. The invention of the GXSM Event mechanism finalized the
new capabilities, including the raster probe mode. Also the approach and
coarse motion control was polished up and now features an arbitrary wave
form mode for best possible results for any inertial motion driven
positioning and maximized the flexibility. And for all the future, the
whole GXSM core undergo an extensive code cleanup which now totally
removed all remainings of hardware close parameters. These are now
banned into the corresponding HwI plugins.\
Rocky Point, Long Island, NY, USA, November 16th, 2005 Percy Zahl\

*... GXSM-2 V1.12.0 is released with full multidimensional data
processing and visualization power*

Several new add-ons were added, in brief:

-   more pre defined Vector-Probe modes

-   a SignalRanger/CoolRunner CPLD based and hardware or CPLD times
    (gated) 32bit counter channel to acquire pulse counts/rates of any
    source

-   a event logging mechanism to attach important parameter changes and
    probe data to the eventually running scan

-   full core 4-dim data support and visualization now enabled

-   transition of several math plugins to run on multi layers and time
    dimension on demand

-   marker object to manually count things of different flavor (color)

But the major achievement is that the GXSM core now allows handling of
2-dimensional images sets. In particular, a single scan channel can now
hold stacks of images (layers) for multiple times making a true
4-dimensional data set. Data can be played like a movie in layer (at a
specific time) or in time dimension (at a specific layer). Visualization
of profiles (or series of profiles) can be navigated in real time with
the "Show Point" or "Show Line" tool in any dimension, also image-slices
in any dimension can be generated on the fly.

Export of movies is possible using the Quicktime library. The new OSD
(On Scan Display) allows to overlay real-time informations, like time
any other parameters.\
Rocky Point, Long Island, NY, USA, September 18th, 2007 Percy Zahl

*... GXSM-2 V1.22.0 releases and all new SPM dedicated SR-A810*

The year 2009 is already going to its end, a nice sunny colorful fall
day\... This year has brought big changes or better upgrades on DSP
level and in particular on the side of analog signal conversions. The
new Signal Ranger Mark 2 (MK2) was already around for a while in 2008
and Gxsm supported with a test HwI and ported DSP code the new platform,
which brought us USB-2.0 and more DSP speed and memory. But it had a
drawback, even a newer revision of the AICs, it was a slow bottle neck,
as it had un acceptable long loop delays. The need for some thing
dedicated was even more pressing now. All started out in early summer
2008, discussions of the Gxsm team and affiliated leading Gxsm users and
institutions (in particular myself and Rolf Möller from Department of
Physics, University of Duisburg-Essen, Germany) with SoftdB and their
hardware engenieer B. Paillard were paving the way to the now available
Analog-810 interface for the MK2 (MK2-A810). Final designs and decisions
for the DA/AD converter were made about following the STM conference in
Keystone, Colorado.

Just a few days before Christmas 2008 I received the first prototype for
the MK2-A810 assembly -- big thanks to SoftdB! As the MK2 was already
fully supported by Gxsm and the driver infrastructure for the A810 was
seamless to the previous, getting it going was done in a snap! This new
thing was holding to it's great specs greatly and things were moving
along very well. By January the first working HwI release was going into
CVS and very soon was also field/labpratory STM proven to work and
preform very well. In all aspects it is superior, precision, stability
and speed -- 75kHz feed back loop with full loop delay less than 5
samples. Sampling rates at up to 150kHz possible (and used in latest
versions). A little later two optional counter channels were added the
FPGA logic.

The new MK2-A810 is available since February 2009 and now also 19" rack
ready on a Gxsm/SPM customized enclosure.

All basics done, the new power of the A810 was getting explored in depth
and a couple of new features and software based performance improvements
were implemented, let me just list:

-   2 channel 32-bit counter timer, syncronized with sampling

-   Evaluation of software based resolution enhancements, Z and X/Y
    HR-mode

-   Real time magnitude dependent bandwith adjusting via FIR for current
    input

-   Transition to Float in Gxsm in conjunction with tarnsfer of full
    statistical data (32-bit resolution summed values from DSP +
    normalization count)

-   FIFO data transfer optimazation: using custom byte packing, first
    order linear predictor\...

-   Real time configurable 4-channel feedback input mixer, lin/log/fuzzy
    modes

-   Enhanced and expanded Vector-Probe modes and visualization modes
    (GUI)

-   Many more details\...

And: A update on Gxsm and teh new MK2-A810 is submitted/accepted to
Journal of Vacuum Science and Technology B (JVST B), proceedings of the
NC-AFM, Yale 2009.\
Brookhaven National Laboratory - CFN, Upton, Long Island, NY, USA,
October 29th, 2009 Percy Zahl

*... from Version Numbers to "Battenkill Warrior", "Lancaster Classics",
"Lindau Historic" to GXSM-2 V1.27.3 "Arosa Express" -- get prepared for
the high-end MK3Pro-A810/PLL and new GXSM optimized SPM HV-Amp what is
now also available: the "Smart Piezo Drive" with serious DSP power and
featured under the hood not yet seen!*

Not functional but just getting a little more "social" -- dedication
names to major mile stone version changes -- so you can chat better
about versions!

"Battenkill Warrior" is introducing a separated Z-Offset signal for scan
slope compensation on analog level. Also a new so far little used/tested
feature tracking VP mode to follow in real time "gradient up" or
"-down". May also name it atom-tracker.

Full 3D Offset control and Linear Drift Correction via automated Offset
adjusting. Also added helping aids to easy determine drift manually from
manually to be identified features in scan(s) via \"Global Position
Reference Mark\" and Time/Drift calculation for Point markers. (New
options: GXSMMenuScan/View/Coordinates/(Time + Relative) If previously a
Global Reference was set via any Point/Marker Object/Global Reference
Point.

Massive selections of hundreds of VectorProbe data files for example
from or live while raster probing via easy DnD read back is not
supported and very useful for life data inspection of long mapping runs.

Always on going: new additions to the universal GXSMx VP modes/tabs,
including a dual folder with user arrangeable tabs for better work flow
and overview. Example: segmented STS.

"Lancaster Classics" is not providing much visible additions but
introduces now a higher precision of the DSP level integer math moving
to 32- and temporary 64bit for vector scan signal generations. Also
further enhancements of the HR signal output mode (native 16bit to near
20 (some limitations apply) on software level) and other optimizations
are included. Additions and new indicators for the PanView to
incorporate GPIO and some DPS statemachine status indications.

"Lindau Historic" -- incorporating a set of GXSMx community ideas
discussed and collected at the 2011 NC-AFM in Lindau. Most visible, the
new a red-profile history. Some patches needed for newer Gkt+/Gnome/X11
releases. Few more options for VP-Z. New VP feature allows to program
limits/triggers to stop a VP section, for example when a certain max
force is reached. Also the Mk3-A810/PLL activities are evolving and a
PLL prototype is getting available in early 2011! The PLL is only
suitable and dedicated for tuning fork systems with up to 75kHz
detection -- it is all software based and developed by SoftdB. This
means for the future is hardware speeds are moving up we will be able
follow up the bandwidth! DSP code porting in under the way and this
takes more hurdles than anticipated -- however with some support by
SoftdB it's getting finally to a working version what still is a little
beta (by end of 2011). Also new on the communities demand: A GXSMx
optimized Piezo / HV Amplifier "Smart Piezo Drive" what includes a
separate DSP for several control and monitoring tasks -- it works all
standalone and fully analog, but can be hooked up via USB to a control
computer for watching signals and configuring all kind of features like
gains and bandwidth -- but as a novelty it also can perform linear drift
corrections by itself and accepts digitally offset settings.

It's now 2012 and GXSMx "Arosa Express" is out -- get ready for more
remote and freely via Python programmable SPM actions! Now VP probing
and Mover/Autoapproach can by fully controlled via Gxsm-Python-Remote
(via the "emb" interface). Here is a little sneak peak script:

```python
    import emb as gxsm

    gxsm.set ("DSP_Bias","0.1")
    gxsm.set ("DSP_SCurrent","1.5")
    gxsm.set ("OffsetX","0")
    gxsm.set ("OffsetY","0")

    gxsm.action ("DSP_CMD_AUTOAPP")

    for x in range (0,1000,100):
        gxsm.set ("OffsetX","%f"%x)
        gxsm.sleep (10)
        gxsm.set ("DSP_IV-Start-End","-1")
        gxsm.set ("DSP_IV-End","1")
        gxsm.action ("DSP_VP_IV_EXECUTE")
        gxsm.sleep (10)
```

PS: New Motto: "Gxsm is a glove to your SPM experiment" -- this said, we
claim you have free hands to do pretty much all you like in a instant
real time feedback experience -- but be warned, this also means you can
dig your tip into the surface if you want to also if you do not take
care as there is pretty much no way to distinguish unless introduction
mostly annoying safety "blocks".\
Brookhaven National Laboratory - CFN, Upton, Long Island, NY, USA,\
March 6th, 2012 Percy Zahl

*Signal Revolution: "Snowy Janus Hack" $+$ "Snowy Janus Signal Warrior"
with Mark3-Pro-A810-PLL*

[]{#pre-signalrevolution label="pre-signalrevolution"} "And soon I
realized the power of the new dimension I added!"

An evolving idea leading out of an dilemma unleashing not yet seen power
and configurability -- a digital patch-rack with a lot of transparency
and insights. Double power for users and developers -- live "signal" or
variable debugging and monitoring.

Why I am doing this? How? What is it and where will it go and what can I
do with it? Let me try to explain:

A need for even more real time flexibility and the need to access even
more data channels/signals -- to manage a huge expansion of the "signal
space". This is no more possible and not good to handle efficiently with
a fixed signal to channel assignment due to a limited number of total
channel I can handle for several reasons. However, there are more than
enough channels, just a growing variety of different \"data\" or
\"signals\" beyond the raw analog inputs and you will never need all of
them the same time. So that lead me to a new approach I already started
initially to get out of the dilemma I found myself getting into and soon
I realized the power of the new dimension I added!

The "PAC/PLL" signals needed to be accessible\... that we have now for a
while (Mk3) via the configuration of a signal source via a pull down
menu for now each Feedback Mixer Input 0..3.

And again those can be remapped (MIX0..3) -- still names (PAC1..3 in the
scan channel source selector for 2d scans). I need to clean up the
signal naming conventions -- part of the over haul. That's the harder
part on GUI level. Plan executed: Each signal got a unique name, a value
range and real world unit associated.

You are still with me? I hope ...

Signals are simply variables and connections are made via just pointing
the input to the source -- as simple as this -- "signals" will be "hot
pluggable".

The current DSP code in state machine design will remain unchanged in
its proven design form, only so far fixed signal paths will be "broken
up" and made open to be hot reroutable with more connectivity options,
more data sources exposed to Gxsm via existing channels and at other
locations as needed. The existing data processing blocks starting with
ADC inputs, PAC-siganls, counters, control values (like Bias)..., Scan,
Offset Move, Probe, LockIn, ... and finally a HR Output block with new
options\... I will call from now on modules. And data/variables
resulting from module data processing I will name signals. The default
power-up signal linkage will be pretty much the default as known from
the past. A kind of netlist will be exposed to Gxsm and configuration
tools to be manipulated hot. So we have module input "nodes" and moudule
output "signals" made available for netting up!

![Idea Sketch: Modules and signals.](screenshots/modules-signals-sketch.png)

Let me break up the existing design in existing modules as sketched:

Outputs will be more configurable and not any more hard assigned -- just
a default! They will get a input stage with the signal input and two
additional adding inputs (modulation, etc.) with optional gain.

![Idea Sketch: Example SPM configuration.](screenshots/module-sampleconfiguration-sketch.png)

To handle all this a new cleaned up python basic based support class and
a configurator script with monitoring goodies and a signal grph
visualization tool is now available. Also a signal configuration
management with to flash store and auto restore there is.

On Gxsm level you will feel home pretty much right away -- only several
sources are now not fixed any mroe but allow to choose form multiple
signals. Also signals are categorized in classes so not always all need
to be exposed to prevent a "GUI over load".

That said -- enjoy the new nex generation and a few handy and eye candy
monitoring galvos, a signal scope and a new tuning tool with peak
auto-fit.

Well, read about the actual outcome in the SRanger Mk2/3 HwI plugin
chapter [\[SR-Mark3\]](#SR-Mark3){reference-type="ref"
reference="SR-Mark3"}.\

Gxsm Central, Rocky Point, Long Island, NY, USA,\
March 29th, 2014 Percy Zahl

*Got High Speed? Real Time Engine 4 GXSM-3.50: "Next Level RTime Engine"
with Mark3-Pro-A810-PLL and RedPitaya*

[]{#high-speed label="high-speed"} "It was long rocky way! It is way too
long since myt last update here. But finally a e- or re-volution."

We got a all new fully high definiton capable GTK3 compliant GUI! That
was some act.

![Gxsm3-50-1-RTE](screenshots/GXSM3-50-1-RTE.png)

Beside many many new features, Gxsm is now all into nc-AFM and provided
dedicated tools for molecular imaging.

Alongside a in many aspects enhanced Gxsm python console with gxsm
utility libraraies and include functionality and a growing python
support libraray.

The MK3 convergence detector aks PAC-PLL is great, but suffers on
bandwith and statistics. So after a major act of learning and FPGA
hacking the first ever 125MHz dual PAC-PLL and all bells and whistels
including super fast amplitude controller, Q-control option and ultra
wide range PLL operating with 48 bit phase/freq. control was born. After
proof of principle some unexpected efforts needed to put in to create a
reliable, fast and real time digital data link to the DSP -- featuring
now a McBSP serial link operating over a potentially longer set of two
CAT5 cables (about 2m in use right now). This triggered some interrupt
collision issues serving the McBSP on the DSP side fast and on time.
With great help and insights from Alex at SoftdB the problem was tracked
and a solution sketched up. May be for the good, a major revision of the
historically more monolytic data processing scheme was on the table. A
single hint\... and I ended up creating my very own micro kernel and
real time machine on a 1/150kHz time scale. Evaluating and optimizing
tasks, moving every bit of code not fully real time critical into new
idle tasks. Also new a automatic RT task scheduling and enable/disable
control -- all DSP based -- still provides a seamless and 100% backwards
compatile DSP code from the "outside" point of view.

Oh, no \.... I need to rewrite the DSP under the hood section now.

![Real Time Engine 4 GXSM -- a RT process view.](screenshots/MK3-RTEngine-processes-gxsm-terminal-view.png)

But for the good, things just got better and faster!\
Gxsm Central, Upton, Long Island, NY, USA,\
April 19th, 2019 Percy Zahl

