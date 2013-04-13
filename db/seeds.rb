# coding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

universities_data = [
	{    #0
		name: 'České vysoké učení technické v Praze (Fakulta elektrotechniky)'
	}, { #1
		name: 'České vysoké učení technické v Praze (Fakulta informačních technologií)'
	}, { #2
		name: 'Masarykova Univerzita v Brně (Fakulta informatiky)'
	}, { #3
		name: 'Slovenská technická univerzita v Bratislave (Fakulta elektrotechniky a informatiky)'
	}, { #4
		name: 'Univerzita Palackého v Olomouci (Přírodovědecká fakulta, Katedra Informatiky)'
	}, { #5
		name: 'Vysoká škola báňská - Technická univerzita Ostrava (Fakulta elektrotechniky a informatiky)'
	}, { #6
		name: 'Vysoké učení technické v Brně (Fakulta informačních technologií)'
	}, { #7
		name: 'Žilinská univerzita (Fakulta riadenia a informatiky)'
	}
]

theses_data = [
	{

		#1
		name: 'Slučování úloh s nekolizními požadavky pro systém Beaker',
		thesis_type: 1,
		description:
'Cílem práce je navrhnout formát pro zápis parametrů a požadavků jednotlivých úloh (task) určených pro systém "Beaker":http://beaker-project.org a navhrnout transformační algoritmus, který na základě vyloučení možných kolizních požadavků sloučí ůlohy definované na vstupu do souboru úloh (recipe), jež je možné spouštět společně. Výstupem je XML(eXtensible Markup Language) formát spustitelný v systému Beaker, jehož formát je definovaný v rámci projektu Beaker.

*Pro splnění zadání:*

# Nastudujte možné ukládání a zpracování hierarchických dat, především pak dostupné metody pro jejich transformaci
s ohledem na výstup ve formátu XML(eXtensible Markup Language).
# Seznamte se se systémem pro správu testovacího prostředí "Beaker":http://beaker-project.org/) a se způsobem zadávání
úloh pro provedení.
# Definujte seznam možných kolizních požadavků u úloh.
# Navrhněte vhodný formát pro uložení a zpracování jednotlivých úloh.
# Navrhněte a implementujte transformační algoritmus, který sloučí úlohy zadané do nejmenšího možného počtu souborů ůloh
s ohledem na vyloučení identifikovaných kolizí ve formátu vstupního XML souboru pro systém Beaker.',
		status: Thesis::Status[:available][:id]
	}, {

		#2
		name: 'Vylepšení vícevláknové podpory v TCL',
		thesis_type: 1,
		description:
'# Seznamte se s projektem TCL a se současnou implementací vícevláknové podpory.
# Navrhněte úpravy, které umožní pracovat s více vlákny a současně používat systémové volání fork. Dbejte na zpětnou kompatibilitu navrženého řešení.
# Spolupracujte s upstream a pokuste se vytvořené řešení dostat do upstream.',
		status: Thesis::Status[:occupied][:id]
	}, {

		#3
		name: 'Tuned: podpora pro pozastavování neaktivních aplikací',
		thesis_type: 1,
		description:
'# Seznamte se s problematikou správy napájení v distribuci Fedora, s projektem "Tuned":http://fedorahosted.org/tuned/
a se způsobem vytváření profilů pro Tuned verze 2.
# Navrhněte a implementujte způsob a řídící logiku pro automatické pozastavování neaktivních aplikací běžících na pozadí.
# Navhrněte a implementujte rozhraní pro ovládání této funkce (CLI/D-Bus) a podporu do tuned profilů.
# Demonstrujte funkčnost a proveďte měření demonstrující efektivitu implementace.',
		status: Thesis::Status[:available][:id]
	}, {

		#4
		name: 'Grafické uživatelské rozhraní pro nástroj Tuned',
		thesis_type: 1,
		description:
'# Seznamte se s problematikou správy napájení v distribuci Fedora, s projektem "Tuned":http://fedorahosted.org/tuned/
a se způsobem vytváření profilů pro Tuned verze 2.
# Navrhněte způsob, pro automatiké zjištění aktuálně podporovaných pluginů a jejich parametrů ze zdrojových kódů Tuned
verze 2.
# Navrhněte grafické uživatelské rozhraní (GUI) pro ovládání tuned, které mimo jiné umožní i přepínání profilů,
vytváření/editaci profilů, mazání profilů a volitelně spojování profilů (merge) k čemuž se využijí informace zjištěné
v bodě 2.
# Návrh implementujte a demonstrujte funkčnost implementace.',
		status: Thesis::Status[:available][:id]
	}, {

		#5
		name: 'Multiplatformní podpora zoneinfo databáze pro Ruby',
		thesis_type: 1,
		description:
'The tz database, also called the zoneinfo database or IANA(Internet Assigned Numbers Authority) Time Zone Database, is a collaborative compilation of information about the world''s time zones, primarily intended for use with computer programs and operating systems. Ruby provides this database by tzinfo gem. However, this library relies on its own copy of zoneinfo database, instead system wide one.

*Goals of this thesis are:*

* Explore various operating systems and their APIs to access zoneinfo data.
* Update the tzinfo gem to support operating system''s API.
* Provide fallback to bundled copy of database if there is no supported API provided by operating system.
* Collaborate with tzinfo gem upstream and provide the patches for integration.',
		status: Thesis::Status[:available][:id]
	}, {

		#6
		name: 'Nástroj pro testování knihoven pro přístup do Informačního systému datových schránek',
		thesis_type: 1,
		description:
'Informační systém datových schránek nabízí rozhraní SOAP, které implementuje několik nezávislých knihoven. Úkolem je najít nebo vytvořit sadu nástrojů pro automatické testování shody knihoven se specifikací rozhraní. Protože každá knihovna má jiné aplikační rozhraní a protože specifikace se mění, je třeba poskytnout takový nástroj, v němž testy budou vyjádřeny na jednom místě způsobem nezávislým na knihovně. Poté pro vybranou knihovnu bude napsána překladová vrstva, která testy vykoná voláním knihovny proti simulovanému serveru.',
		status: Thesis::Status[:available][:id]
	}, {

		#7
		name: 'Odlehčený modulární nástroj pro refaktoring zdrojového kódu',
		thesis_type: 3,
		description:
'# Seznamte se s běžně dostupnými nástroji pro refaktoring kódu (indent, eclipse, NetBeans, ...)
# Navrhněte odlehčenou C/C++ aplikaci pro refaktoring kódu běžně používaných jazyků (C/C++, python, perl, ruby, java, bash, PHP, ...) tak, že výkonný základ bude tvořit CLI aplikace, kterou budou následně volat tři nezávislá uživatelská rozhraní využívající (n)curses, GTK+ a Qt knihovny. Uživatelské rozhraní zde bude plnit pouze funkci přehledného zobrazení kódu, grafického nastavení refaktoringu a bude vhodnou formou napomáhat manuálnímu hromadnému přejmenování proměnných, funkcí, popřípadě definic preprocesoru a volitelně může barevně odlišovat konstrukce, které jsou vhodným kandidátem na refaktoring. Aplikace by měla provádět změny konzistentně nad všemi moduly refaktorovaného projektu (tedy s úpravou názvu proměnné v hlavičkovém souboru by mělo dojít ke změně názvu i v modulu, kde je tento hlavičkový soubor použit).
# Návrh implementujte.
# Demonstrujte funkčnost řešení pomocí vhodných experimentů.',
		status: Thesis::Status[:available][:id]
	}, {

		#8
		name: 'Podpora vícebytových znaků v základních CLI utilitách v OS GNU/Linux',
		thesis_type: 1,
		description: 'Prozkoumejte rozsah podpory vícebytových znaků v základních CLI utilitách používaných pro operace s řetězci(třídění, spojování, vyhledávání, nahrazování...) pod systémem GNU/Linux. V případě existující podpory prozkoumejte její dopad na výkonnost operace, navrhněte možnosti optimalizace této podpory tak, aby nepostihovala vstupní data bez vícebytových znaků. U vybraných utilit se tyto změny pokuste dostat do zdrojových kódu upstreamu.',
		status: Thesis::Status[:available][:id]
	}, {

		#9
		name: 'Berusky (2D logic game) - Android conversion',
		thesis_type: 3,
		description:
'Rewrite the "Berusky game":http://anakreon.cz/en/Berusky.html for mobile devices based on Android. It includes redesign of game control and interface, menus and so. The target devices would be Samsung Galaxy and similar devices.',
		status: Thesis::Status[:available][:id]
	}, {

		#10
		name: 'Tage/Skripty pro generátor terénu',
		thesis_type: 3,
		description:
'Navrhněte a implementujte vlastní generátor různých druhů terénu (textura povrchu, geometrie povrchu, osvětlení/stínování). Použijte skriptovací jazyk generátoru tage a nebo vytvořte vlastni C++ modifikátor pro projekt "TAGE":http://anakreon.cz/tage/.',
		status: Thesis::Status[:available][:id]
	}, {

		#11
		name: 'Tage/Implementace triangulačního algoritmu',
		thesis_type: 3,
		description:
'Seznamte se ze současnými metodami triangulace (vytvoření minimálního 3D modelu ze skupiny bodu v prostoru), navrhněte a implementujte vybraný algoritmus jako C++ modifikátor pro projekt "TAGE":http://anakreon.cz/tage/. Tento triangulační algoritmus bude sloužit pro generování geometrických objektů (kamení, klacky, tráva, křoví).',
		status: Thesis::Status[:available][:id]
	}, {

		#12
		name: 'Tage/Optimalizace generovaneho meshe (LOD)',
		thesis_type: 3,
		description:
'V C++ implementujte optimalizátor (LOD) pro 3D mesh modely (sítě trojúhelníku). Implementaci proveďte jako součást exportního modulu generátoru "Tage":http://anakreon.cz/tage/.',
		status: Thesis::Status[:available][:id]
	}, {

		#13
		name: 'Mozilla Firefox - Projekty z Summer of Code 2012',
		thesis_type: 3,
		description:
'Vyberte si libovolny projekt z "Mozilla Summer of Code 2012":https://wiki.mozilla.org/Community:SummerOfCode12 popr. "chyb v bugzille vhodne pro studenty":https://bugzilla.mozilla.org/buglist.cgi?query_format=advanced&keywords_type=allwords&resolution=---&keywords=student-project',
		status: Thesis::Status[:available][:id]
	}, {

		#14
		name: 'Aplikace/Hra pro Firefox OS (B2G)',
		thesis_type: 3,
		description:
'Prepiste "stavajici 2D hru":http://anakreon.cz/en/Berusky.html, popr. vytvorte libovolnou jinou 2D/3D hru/aplikaci pro Firefox OS (B2G) nebo desktopovy Firefox. Pri tvorbe pouzijte WebGL (pro 3D) nebo HTML5 (pro 2D).',
		status: Thesis::Status[:available][:id]
	}, {

		#15
		name: 'Support of DNS sites in SSSD',
		thesis_type: 2,
		description:
'Work up the architecture of FreeIPA and SSSD, work up how the concept of DNS sites works in MS Active Directory, design an extensions to FreeIPA and SSSD adding DNS sites functionality, implement the designed extensions, evaluate your implementation, its advantages and shortcomings.',
		status: Thesis::Status[:available][:id]
	}, {

		#16
		name: 'Extending the REST interface of Dogtag CA system',
		thesis_type: 2,
		description:
'Work up the architecture of Dogtag Certificate System with focus on authentication/authorization of admin operations, work up the REST interface of Dogtag Certificate System, work up the functionality of client program pkiconsole, design an extension to the REST interface which would cover functionality of pkiconsole that is not yet covered, implement and test the designed extension, evaluate your implementation and its eventual shortcomings',
		status: Thesis::Status[:available][:id]
	}, {

		#17
		name: 'SSSD API for web applications',
		thesis_type: 1,
		description:
'Seznamte se s projektem SSSD, jeho strukturou a využitím; Nastudujte mechanismy autentizace na webových stránkách v jazycích PHP, Python, Java a Ruby; Navrhněte a implementujte API využívající možností SSSD ve výše uvedených jazycích; API otestujte a porovnejte s podobnými mechanismy.',
		status: Thesis::Status[:available][:id]
	}, {

		#18
		name: 'Password strength checker for FreeIPA',
		thesis_type: 2,
		description:
'Work up architecture of FreeIPA with focus on password policies it uses, work up possibilities of modern password checkers, design a password policy plugin for FreeIPA utilizing functionality of modern password checkers, implement and test the plugin, evaluate your implementation, its advantages and shortcomings',
		status: Thesis::Status[:available][:id]
	}, {

		#19
		name: 'Tool for querying SSSD database',
		thesis_type: 1,
		description:
'Work up the work with ldb database, work up the design of SSSD internal cache and data that are already there, design a program for querying the database for all types of data that are stored in it, implement and test your solution, evaluate your solution, its possibilities and shortcomings',
		status: Thesis::Status[:available][:id]
	}, {

		#20
		name: 'Optimization of e2fsprogs tools for enterprise class storage',
		thesis_type: 2,
		description:
'The goal of this project is to improve reliability of solution based on second, third and fourth extended file system (ext2, ext3, ext4) especially in enterprise environment by optimizing e2fsprogs tools. Reliability in this case represents not only the ability to recover from the critical situations, but also the ability to recover quickly without additional costs and the ability to quickly deploy new solutions on demand. This project is specifically aimed to optimize memory utilization on enterprise storage which tends to grow in size and to optimize CPU utilization in certain scenarios. Additionally IO patterns can be optimized as well to take advantage of advanced storage features and lower the running time of the e2fsprogs tools.

* Get familiar with the e2fsprogs package, which consists of a set of utilities for creating, checking, modifying and repairing second, third and fourth extended file system (ext2, ext3, ext4).
* Study the implementation of utilities, mainly the algorithms for reading, storing and writing out meta data from/to the file system.
* Test and analyze e2fsprogs utilities and informally determine the time and spatial complexity for various situations.
* Based on the previous results propose optimizations to lower the CPU and memory utilization of the e2fsprogs utilities. Discuss your propositions with upstream project developers.
* Implement optimizations as came out from your results and from discussions with developers. Test your implementation with existing and new tests and cooperate with upstream developers of e2fsprogs to merge your changes into the main tree of the project.
* Summarize your results and present the real contribution of the changes made in this project scope. Discuss further possible optimization.',
		status: Thesis::Status[:available][:id]
	}, {

		#21
		name: 'Monitoring aplikací běžících v JVM pomocí JVM Tool Interface (JVMTI)',
		thesis_type: 1,
		description:
'* Prostudujte specifikaci JVM Tool Interface (JVMTI)
* Popište základní vlastnosti JVMTI a způsob jejího použití
* Vytvořte jednoduchou aplikaci s GUI, která bude sloužit pro připojení k JVM a sledování v ní běžící aplikace
* Sledovat by se mělo zejména obsazení operační paměti haldou (heapem) a zásobníkem
* Zhodnoťte dosažené výsledky a navrhněte možnosti dalšího vývoje projektu',
		status: Thesis::Status[:available][:id]
	}, {
		#22
		name: 'Studie frameworku Lombok',
		thesis_type: 1,
		description:
'* Prostudujte framework Lombok i způsob jeho využití současně s JVM(Java Virtual Macine)/JRE(Java Runtime Environment)
* Popište vlastnosti, které framework Lombok vnáší do programovacího jazyka Java
* Vytvořte jednoduchou demonstrační aplikaci, ve které budou vhodným způsobem ukázány základní vlastnosti Lomboku
* Napište, které části aplikace bylo možné zjednodušit a vytvořit robustněji s využitím Lomboku
* Porovnejte oba použité přístupy k tvorbě aplikací (čistá Java vs Lombok)
* Zhodnoťte dosažené výsledky a navrhněte možnosti dalšího vývoje této práce',
		status: Thesis::Status[:available][:id]
	}, {

		#23
		name: 'CACAO: alternativní virtuální stroj Javy',
		thesis_type: 1,
		description:
'* Prostudujte základní vlastnosti alternativního virtuálního stroje Javy s názvem CACAO
* Popište nejdůležitější vlastnosti JVM CACAO
* Porovnejte klady a zápory JVM CACAO v porovnání s JVM HotSpot
* Vytvořte sadu jednoduchých výkonnostních testů (benchmarků), na nichž porovnáte výkonnost JVM HotSpot a CACAO
* Výsledky výkonnostních testů vhodným způsobem prezentujte a okomentujte
* Zhodnoťte dosažené výsledky a navrhněte možnosti dalšího vývoje projektu',
		status: Thesis::Status[:available][:id]
	}, {

		#24
		name: 'JamVM: alternativní virtuální stroj Javy',
		thesis_type: 1,
		description:
'* Prostudujte základní vlastnosti alternativního virtuálního stroje Javy s názvem JamVM
* Popište vlastnosti JVM JamVM
* Porovnejte výhody a zápory JVM JamVM v porovnání s JVM HotSpot
* Vytvořte sadu jednoduchých výkonnostních testů (benchmarků), na nichž porovnáte výkonnost JVM HotSpot a JamVM
* Výsledky výkonnostních testů vhodným způsobem prezentujte a okomentujte
* Zhodnoťte dosažené výsledky a navrhněte možnosti dalšího vývoje projektu',
		status: Thesis::Status[:available][:id]
	}, {

		#25
		name: 'Virtuální stroj Javy JamVM na architektuře ARM',
		thesis_type: 1,
		description:
'* Prostudujte základní vlastnosti alternativního virtuálního stroje Javy s názvem JamVM
* Popište vlastnosti JVM JamVM
* Porovnejte výhody a zápory JVM JamVM v porovnání s JVM HotSpot
* Přeložte a nainstalujte JDK/JRE s podporou JamVM na libovolném zařízení s mikroprocesorem ARM (může se jednat o notebook, tablet či smartphone)
* Vytvořte demonstrační aplikaci, která ukáže funkcionalitu JamVM na platformě ARM
* Zhodnoťte dosažené výsledky a navrhněte možnosti dalšího vývoje projektu
',
		status: Thesis::Status[:available][:id]
	}, {

		#26
		name: 'Testování výkonu JBoss AS v závislosti na použité JVM',
		thesis_type: 3,
		description:
'* Cílem této práce je porovnání výkonu JBoss AS v závilosti na použité JVM a parametrech JVM
* Seznamte se s metodikou testování výkonnosti aplikačních serverů a popište základní parametry, které se testují
* Navrhněte sadu testů vhodných pro základní otestování výkonu JBoss AS
* Spusťte výkonnostní testy proti JBoss AS a následujícími JVM: Oracle JVM, OpenJDK, IBM JDK, popř. i JRockit
* Výsledky výkonnostních testů vhodným způsobem prezentujte a okomentujte
* Zhodnoťte dosažené výsledky a navrhněte možnosti dalšího vývoje projektu',
		status: Thesis::Status[:available][:id]
	}, {

		#27
		name: 'Studie optimalizátoru bajtkódu pro JamVM',
		thesis_type: 3,
		description:
'* Prostudujte základní vlastnosti alternativního virtuálního stroje Javy s názvem JamVM
* Prostudujte a popište způsob interpreteru bajtkódu virtuálního stroje JamVM
* Analyzujte typické vzory (sekvence instrukcí), které s bajtkódu vyskytují
* Pokuste se navrhnout možnosti optimalizace bajtkódu před jeho interpretací (pro BP postačuje jen nějaká jednoduchá optimalizace)
* Zhodnoťte dosažené výsledky a navrhněte možnosti dalšího vývoje projektu',
		status: Thesis::Status[:available][:id]
	}, {

		#28
		name: 'Optimalizace bajtkódu Javy s ohledem na jeho velikost',
		thesis_type: 3,
		description:
'* Prostudujte a popište způsob překladu Javovských programů ze zdrojových textů do bajtkódu
* Popište základní strukturu bajtkódu použitého v JRE
* Popište vlastnosti instrukčního souboru JRE i způsob předávání operandů instrukcím
* Analyzujte typické vzory (sekvence instrukcí), které s bajtkódu vyskytují
* Pokuste se navrhnout možnosti optimalizace bajtkódu s ohledem na jeho velikost
* Zhodnoťte dosažené výsledky a navrhněte možnosti dalšího vývoje projektu',
		status: Thesis::Status[:available][:id]
	}, {

		#29
		name: 'Disassembler Javovského bajtkódu',
		thesis_type: 3,
		description:
'* Prostudujte a popište způsob překladu Javovských programů ze zdrojových textů do bajtkódu
* Popište základní strukturu bajtkódu
* Popište vlastnosti instrukčního souboru JRE i způsob předávání operandů instrukcím
* Navrhněte základní strukturu disassembleru Javovského bajtkódu
* Vytvořte jednoduchou aplikaci s GUI, která bude sloužit pro zobrazení zdrojového kódu Javovské třídy současně s bajtkódem odpovídajícím jednotlivým programovým řádkům
* Zhodnoťte dosažené výsledky a navrhněte možnosti dalšího vývoje projektu',
		status: Thesis::Status[:available][:id]
	}, {

		#30
		name: 'Porovnávanie API a ABI kompatibility knižníc napísaných v jazyku Java',
		thesis_type: 2,
		description:
'Java libraries can add, remove and modify methods in their public interfaces used by other libraries or applications. While addition of new function is rarely a problem, a change of method signature or method removal can cause malfunctions or errors that can be hard to trigger and diagnose. There is currently no simple way to determine effect of changing dependency to a new or different version of the same library. Few tools exist that can already partially analyze changes between two version of a library. Goal of the thesis would be to create a catalogue of source code changes that affect API or ABI and then create a tool able to determine at least subset of these changes between two versions of Java source code.',
		status: Thesis::Status[:available][:id]
	}, {

		#31
		name: 'Skriptovací jazyky na platformě Java (JSR 223)',
		thesis_type: 1,
		description:
'Cílem tohoto projektu je zhodnocení možností skriptovacích jazyků postavených nad JVM
* Popište přednosti a zápory použití skriptovacích jazyků na platformě Java
* Prostudujte specifikaci JSR(Java Specification Request)-223 (Scripting for the Java)
* Popište základy API využívaného pro komunikaci mezi skripty a programy napsanými v Javě
* Vytvořte demonstrační aplikaci, na které budete prezentovat možnosti komunikace mezi skripty a Javovským programem (jako skriptovací jazyk lze vybrat například JavaScript implementovaný enginem Rhino)
* Zhodnoťte dosažené výsledky',
		status: Thesis::Status[:available][:id]
	}, {

		#32
		name: 'Použití OpenGL z jazyka Java',
		thesis_type: 1,
		description:
'Cílem tohoto projektu je zhodnocení možností použití grafické knihovny OpenGL v programech napsaných v Javě

* Prostudujte a popište základní vlastnosti grafické knihovny OpenGL
* Popište, jakým způsobem je možné používat grafickou knihovnu OpenGL v programech napsaných v Javě. Zaměřte se na projekt Java OpenGL (JOGL)
* Vytvořte jednoduchou aplikaci napsanou v programovacím jazyce Java, která bude demonstrovat základní vlastnosti OpenGL při vykreslování 3D scén - hraniční popis geometrie prostorových těles, texturování, osvětlovací model, double buffering, popř. i stencil buffer a accumulation buffer
* Zhodnoťte dosažené výsledky a navrhněte možnosti dalšího vývoje projektu',
		status: Thesis::Status[:available][:id]
	}, {

		#33
		name: 'Měření výkonnosti Java Virtual Machine',
		thesis_type: 1,
		description:
'Cílem tohoto projektu je zmapování vlastností nástrojů vhodných pro měření výkonnosti různých implementací JVM i reálných možností použití těchto nástrojů.
* Prostudujte dostupné nástroje pro měření výkonnosti různých implementací JVM, zaměřte se především na nástroje SPECjvm2008, SPECjbb2005 a Java2Dbenchmark
* Popište, které výkonnostní testy jsou v těchto nástrojích implementovány i vlastnosti JVM, jejichž výkonnost je těmito testy měřena
* Proveďte měření výkonnostních parametrů různých JVM, především OpenJDK, Sun JDK a IBM Java s vhodnou prezentací výsledků
* Zhodnoťte dosažené výsledky',
		status: Thesis::Status[:available][:id]
	}, {

		#34
		name: 'Vlastnosti a výkonnost garbage collectorů v JVM',
		thesis_type: 1,
		description:
'Cílem tohoto projektu je zhodnocení vlastností garbage collectorů implementovaných v OpenJDK
* Prostudujte problematiku správy paměti z hlediska JVM a Javovských programů běžících nad JVM
* Prostudujte a popište typy garbage collectorů implementovaných v OpenJDK, zaměřte se především na nový typ garbage collectoru "G1"
* Otestujte výkonnost i paměťové nároky aplikací při použití různých typů garbage collectorů s využitím nástroje SPECjvm2008
* Zhodnoťte dosažené výsledky a navrhněte možnosti dalšího vývoje tohoto projektu',
		status: Thesis::Status[:available][:id]
	}, {

		#35
		name: 'Použití velkých stránek (huge pages) pro zvýšení výkonnosti JVM',
		thesis_type: 1,
		description:
'Cílem tohoto projektu je zhodnocení míry zvýšení výkonu JVM při využití velkých paměťových stránek (huge pages)

* Prostudujte problematiku stránkování prováděného procesorem při přístupu do paměti
* Prostudujte princip velkých paměťových stránek (huge pages)
* Popište přednosti a zápory použití huge pages
* Zjistěte, jakým způsobem lze zapnout podporu huge pages v JVM
* Otestujte výkonnost i paměťové nároky Javovských aplikací při použití huge pages a naopak při použití běžných velikostí paměťových stránek
* Zhodnoťte dosažené výsledky a navrhněte možnosti dalšího vývoje tohoto projektu',
		status: Thesis::Status[:available][:id]
	}, {

		#36
		name: 'Studie frameworku Squander',
		thesis_type: 1,
		description:
'* Prostudujte framework Squander, který vnáší deklarativní způsob popisu algoritmů do programovacího jazyka Java
* Popište základní principy, na nichž je Squander postaven (především z hlediska uživatele - vývojáře)
* Navrhněte demonstrační příklady, v nichž budou vhodným způsobem ukázány základní vlastnosti Squanderu
* Každý demonstrační příklad by měl být zapsán deklarativně a taktéž imperativním způsobem
* Porovnejte oba použité přístupy k tvorbě aplikací
* Zhodnoťte dosažené výsledky a navrhněte možnosti dalšího vývoje této práce',
		status: Thesis::Status[:available][:id]
	}, {

		#37
		name: 'Testování výkonnosti JCF (Java Collections Framework) na víceprocesorových systémech',
		thesis_type: 1,
		description:
'* Prostudujte a popište hierarchii rozhraní a tříd tvořících JCF(Java Collections Framework)
* Popište a vzájemně porovnejte interní způsob reprezentace datových kolekcí ArrayList a LinkedList
* Popište a vzájemně porovnejte interní způsob reprezentace datových kolekcí HashMap a TreeMap
* Vytvořte vhodné zátěžové testy (benchmarky) pro měření výkonnosti datových kolekcí implementujících rozhraní List i Map
* Benchmarky by měly otestovat i přístup do kolekcí z více vláken na systému s více procesory (jádry)
* Porovnejte výkonnost kolekcí při explicitní synchronizaci a při použití již synchronizovaných implementací kolekcí
* Zhodnoťte dosažené výsledky a navrhněte možnosti dalšího vývoje projektu',
		status: Thesis::Status[:available][:id]
	}, {

		#38
		name: 'Moderní principy testování třívrstvých enterprise aplikací',
		thesis_type: 2,
		description:
'* Prostudujte a popište způsob testování business modelu enterprise aplikací. Zaměřte se především na projekt Arquillian.
* Prostudujte metodiky používané při testování front-endu enterprise aplikací, především s ohledem na mobilní zařízení a webové prohlížeče
* Popište způsob provádění zátěžových testů třívrstvých aplikací
* Navrhněte a popište nástroj pro testování klientského kódu naprogramovaných v jazyce JavaScript
* Popište rozdíl mezi testováním reálného a mockovaného prostředí
* Zhodnoťte dosažené výsledky',
		status: Thesis::Status[:available][:id]
	}, {

		#39
		name: 'Programová zvuková syntéza v Javě - projekt Gervill',
		thesis_type: 1,
		description:
'Cílem tohoto projektu je zhodnocení možností programové zvukové syntézy implementované v projektu Gervill

* Prostudujte a popište základní způsoby vytváření zvuků a hudby na počítačích
* Prostudujte vlastnosti zvukového syntetizéru Gervill, který je standardní součástí OpenJDK
* Vytvořte jednoduchou demonstrační aplikaci, ve které budou vhodným způsobem ukázány základní vlastnosti zvukového syntetizéru Gervill
* Zhodnoťte dosažené výsledky a navrhněte možnosti dalšího vývoje projektu',
		status: Thesis::Status[:available][:id]
	}, {

		#40
		name: 'Testovací framework pro Java applety',
		thesis_type: 1,
		description:
'* Prostudujte a popište technologii Java appletů a porovnejte ji s podobnými konkurenčními technologiemi
* Navrhněte testovací framework, který bude kontrolovat základní funkcionalitu Java appletů ve vybraném prohlížeči
* Navrhněte sadu testů pro tento framework
* Zhodnoťte dosažené výsledky a navrhněte možnosti dalšího vývoje projektu',
		status: Thesis::Status[:available][:id]
	}, {

		#41
		name: 'Testovací framework pro Java Web Start',
		thesis_type: 1,
		description:
'* Prostudujte a popište technologii Java appletů a porovnejte ji s podobnými konkurenčními technologiemi
* Navrhněte testovací framework, který bude kontrolovat základní funkcionalitu Java appletů ve vybraném prohlížeči
* Navrhněte sadu testů pro tento framework
* Zhodnoťte dosažené výsledky a navrhněte možnosti dalšího vývoje projektu',
		status: Thesis::Status[:available][:id]
	}, {

		#42
		name: 'Convert BPMN2 to canonical form',
		thesis_type: 1,
		description:
'*Goal:* Implement a tool that would attempt to convert BPMN2 to a canonical format.

* Convert BPMN2 to a canonical XML.
* Get rid of BPMNDI
* Unify names of variables, nodes etc.
* Compare two canonical BPMN2 process definitions.
* Explore options for minimization of BPMN2 process definitions.',
		status: Thesis::Status[:available][:id]
	}, {

		#43
		name: 'BPMN2 validator for jBPM5',
		thesis_type: 2,
		description:
'*Goal:* Implement a tool that would validate a BPMN2 file with respect to what is supported by jBPM5 and relevant Red Hat tooling

* First simple XSD validation
* Then validation of script tasks (whether they compile, etc.), variables...
* Basically everything that could cause a RuntimeException in jBPM5.
* Requires extensive knowledge of the engine, supported use cases and corner cases.',
		status: Thesis::Status[:available][:id]
	}, {

		#44
		name: 'Optimization of CI grid structure using Drools Planner',
		thesis_type: 2,
		description:
'*Goal:* CI grid is a computer lab where continuous integration jobs run. Various jobs have different requirements as for machine operating system, architecture, available memory etc. expressed in term of machine labels. Your goal is to optimize the structure of the CI grid (structure of labels, i.e. how many machines should have given label) based on available data on job requirements, usage of the labels (i.e. how frequently jobs requiring given label run) and other constraints like budget for buying new machines.
* Get familiar with Drools planner
* Propose optimal structure of the CI grid under assumption that number of machines in the grid is arbitrary (i.e. new machines can be bought).
* Propose optimal structure of the CI grid under assumption that the number of machines in grid is fixed (i.e. new machines cannot be bought).
* Propose optimal structure of CI grid under assumption that the budget for new machines is limited (i.e. new machines can be added, but only limited number, as budget allows)
',
		status: Thesis::Status[:available][:id]
	}, {

		#45
		name: 'Design and implement support for OSGi bundles in JBoss ESB',
		thesis_type: 2,
		description:
'The goal of this work is to provide an OSGi support in JBossESB.

*The student will:*

* Analyze the features of OSGi specification
* Specify the level of support of OSGi in JBossESB
* Integrate JBossESB with OSGi to support deploying of ESB actions in OSGi bundles
* Create JBossESB action to call arbitrary service form OSGi bundle
* Create at least two samples to demonstrate functionality
* Donate the code to JBossESB project or breakingwoods repository',
		status: Thesis::Status[:available][:id]
	}, {

		#46
		name: 'WS-I Basic Profile compatibility verification inside WS-enabled ESB services',
		thesis_type: 1,
		description:
'The goal of this work is to create a tool that will automatically verify the conformance of ESB service with WS-I specification

*The student will:*

* Study the contents of WS-I specifications
* Get familiar with WS-I testing kit
* Create a tool that will run WS-I testing kit agains ESB services
* Create ESB services that will server as endpoints for WS-I testing
* Create Hudson CI server job to ensure automatic execution of verification tool',
		status: Thesis::Status[:available][:id]
	}, {

		#47
		name: 'Implement automatic registry federation in jUDDI',
		thesis_type: 2,
		description:
'The goal of this work is to extend jUDDI 3 implementation to support delegating links in UDDI registry.

*The student will:*

* Study UDDI v3 specification
* Create an architecture and specification for the solution to propagate UDDI records between registries via delegation links
* Implement the solution
* Create at least two samples to demonstrate functionality
* Donate the code to Apache jUDDI project',
		status: Thesis::Status[:available][:id]
	}, {

		#48
		name: 'Extensible project management tooling environment (based on Maven and Maven Archetypes)',
		thesis_type: 2,
		description:
'seam-gen is a tool to rapidly scaffold your project, and additionally provides generation of CRUD screens. The tool started as an ant script, which has quickly grown out of control, making adding new features hard. The next generation of seam-gen should allow:

* scaffolding a project
* generation of crud screens
* post-generation adding of features to the seam project
* targeting multiple runtimes (such as JBoss AS, Weld SE or GlassFish)
* producing screens using different view technologies (such as JSF, GWT, or Wicket)

The idea behind this project is to reuse Maven and Maven archetypes to create an extensible framework which allows plug-ins to guide the creation and manipulation of the generated project. To do this, a wrapper around Maven

Archetypes will need to be introduced which provides a questionnaire for the users to complete, as well as defining the generation/manipulation lifecycle, and providing sensible callbacks.

The scope of this project is quite large, so it is recommended that you have an existing understanding of the problem domain, as well as familiarity with Maven.',
		status: Thesis::Status[:available][:id]
	}, {

		#49
		name: 'Comparison of existing Data Grid solutions',
		thesis_type: 1,
		description:
'*The goal of this work is to:*

* Gather and study the documentation for existing Data Grid solutions (Infinispan, Oracle Coherence, Terracota EHCache, Gigaspaces, Hazelcast, ...)
* Create a comparison matrix to highlight weak and strong points of each product/project
* Analyze memory requirements of freely available solutions
* Measure the amount of additional memory that is required to store a unit of data payload
* Propose improvements to Infinispan project to be more competitive',
		status: Thesis::Status[:available][:id]
	}, {

		#50
		name: 'Create a AJAX-enabled JSF component to work with chart-plotting libraries',
		thesis_type: 1,
		description:
'The goal of this work is to improve or rewrite existing JSF components that interacts with libraries for plotting charts.

* Design the component configuration and parametrization for big flexibility
* Develop the component following best practices for component development
* Create a simple demo application using the component developed
* Donate the code to RichFaces project',
		status: Thesis::Status[:available][:id]
	}, {

		#51
		name: 'JUnit support for testing Eclipse instance',
		thesis_type: 1,
		description:
'*Goal: Provide a better overview for JUnit execution on tested Eclipse instance*
* A plug-in will provide JUnit-like view on tested Eclipse instance during SWTBot test execution
* There can be reported some additional information related to test execution time, etc.
* The tool will allow to create specified number of screen-shot generated in selected interval and a log output containing information preceding test failure
* The feature should be accessible via eclipse update site',
		status: Thesis::Status[:available][:id]
	}, {

		#52
		name: 'Automatic Reporting Tool for Eclipse',
		thesis_type: 1,
		description:
'Goal: Automate Eclipse exceptions reporting (evaluate the integration with ABRT tool)

* The objective is to create a plug-in that will track newly occurred exceptions in the Error Log view and can send a report to JIRA (or any other tool via appropriate connector)
* The plug-in will watch basic operation (like menu operation, button clicks etc) which could be used as replication text for the bug report
* The feature will be accessible via eclipse update site',
		status: Thesis::Status[:available][:id]
	}, {

		#53
		name: 'Ukázkové podnikové procesy pro Android',
		thesis_type: 1,
		description:
'Seznamte se s vývojem aplikací na mobilní platformě Android.

# Seznamte se podnikovými procesy jBPM 5, zejména s vytvářením obslužných úloh (service tasks).
# Navrhněte a implementujte alespoň tři obslužné úlohy, které vykonávají libovolné operace na Androidu.
# Vytvořte alespoň dva ukázkové podnikové procesy, které využívají vaše vytvořené obslužné úlohy a představují provádění nějaké typické činnosti složené z jednotlivých kroků.
# Zdrojové kódy věnujte komunitě projektu jBPM 5. Diskutujte další rozvoj.',
		status: Thesis::Status[:available][:id]
	}, {

		#54
		name: 'Klient pro uživatelské úlohy jBPM 5 na platformě Android',
		thesis_type: 1,
		description:
'Seznamte se s vývojem aplikací na mobilní platformě Android.

# Seznamte se podnikovými procesy jBPM 5, zejména s modulem uživatelských úloh (human tasks).
# Navrhněte aplikaci, která na mobilním telefonu Android umožní práci s uživatelskými úlohami jBPM, konkrétně alespoň vypisování a splňování úloh podnikového procesu.
# Navrženou aplikaci implementujte a otestujte.
# Zdrojové kódy věnujte komunitě projektu jBPM 5. Diskutujte další rozvoj.',
		status: Thesis::Status[:available][:id]
	}, {

		#55
		name: 'Performance Evaluation of Teiid Data Virtualization',
		thesis_type: 1,
		description:
'Data operations are integral part of a development of Enterprise Information Systems. Open Source project JBoss Teiid aims to solve data federation across heterogeneous data sources (files, RDBMS, web services). It is very powerfull concept for any Java EE developer. Through usage of Teiid it is possible to provide simplified and coherent view of data for higher layers of an EIS regardless of their origin. Goal of this bachelor thesis is to compare performance of Teiid 8 deployed on JBoss AS 7 with similar tools on the market e.g. OpenLink Data Integration, "Power Center":www.informatica.com, RadiantOne. The evaluation will be performed using standard performance measurement practices.',
		status: Thesis::Status[:available][:id]
	}, {

		#56
		name: 'Cassandra NoSQL Teiid Connector',
		thesis_type: 2,
		description:
'Data operations are integral part of a development of Enterprise Information Systems. Open Source project JBoss Teiid aims to solve data federation across heterogeneous data sources (files, RDBMS, web services). It is very powerfull concept for any Java EE developer. Through usage of Teiid it is possible to provide simplified and coherent view of data for higher layers of an EIS regardless of their origin. Goal of this diploma thesis is to create a connector that will allow usage of Cassandra NoSQL database in at least read mode. Gathering of requirements as well as the development itself will be driven using agile methodology, the design will use UML diagrams. Development will be test driven. Tests will contain both unit tests and integration tests. The project will be built using Apache Maven.',
		status: Thesis::Status[:available][:id]
	}, {

		#57
		name: 'RHQ Bundle Editor plugin for Eclipse',
		thesis_type: 1,
		description:
'*Goal: Provide eclipse plugin to create and deploy RHQ bundles*

* Explore RHQ bundles and RHQ remote APIs
* Impelement eclipse plugin that will be able to create and deploy bundles to RHQ server.
* The tool will be available via Eclipse update site',
		status: Thesis::Status[:available][:id]
	}, {

		#58
		name: 'Alternativní podpora tranzitivního získávání závislostí pro ShrinkWrap',
		thesis_type: 1,
		description:
'*Zadání:*

* Nastudujte Ivy, Gradle nebo jiný systém získávání tranzitivních závislostí (mimo Maven)
* Srovnejte jeho možnost a složitost použití oproti Apache Maven
* Nastudujte ShrinkWrap a jeho Resolvers API
* Implementujte podporu a testy pro daný systém pro ShrinkWrap Resolvers API
* Zhodnoťte dosažené výsledky',
		status: Thesis::Status[:available][:id]
	}, {

		#59
		name: 'Library for manipulating native widgets used by SWT',
		thesis_type: 2,
		description:
'*Goal: Implement missing functionality for controlling native parts used by SWT*

* The API will be able to control basic operations for native GTK, Win32 and MacOS X Cocoa controls used by SWT (like native file dialogs, message dialogs, etc.).
* It can be implemented as SWTBot contribution or as a single project providing API via Eclipse update site',
		status: Thesis::Status[:available][:id]
	}, {

		#60
		name: 'Eclipse test recorder',
		thesis_type: 1,
		description:
'*Goal: Provide working recorder implementation for Eclipse platform*

* Implement a tool which allows to record operation done in Eclipse workbench as a script or Java code and allows to play it back
* It can use SWTBot or any other appropriate API
* The tool will be available via Eclipse update site',
		status: Thesis::Status[:available][:id]
	}, {

		#61
		name: 'Comparison of WSRP 2 support in current portal implementations',
		thesis_type: 1,
		description:
'*The goal of this work is to:*

* Identify the list of open-source portal implementations (Liferay, GateIn, eXo Portal)
* Study the details of WSRP 2
* Build a comparison matrix based on WSRP 2 features
* Verify the interoperability of the different implementations
* Analyze the achieved result',
		status: Thesis::Status[:available][:id]
	}, {

		#62
		name: 'Java Security Policy Centralization',
		thesis_type: 1,
		description:
'Create an application to allow edit and distribute Java Security Manager policies to number of servers (even for Cloud based deployment scales). It will be able to refresh itself without the need of the server restart. Design, implement and execute tests of new Java Policy Provider implementation in terms of security functionality and performance comparing to some production implementations available on the market (e.g. Oracle Java, IBM Java, OpenJDK).',
		status: Thesis::Status[:available][:id]
	}, {

		#63
		name: 'Groupware implementation as a set of portlets',
		thesis_type: 2,
		description:
'*The goal of this work is to:*

* Develop a set of portlets that implement groupware functionality (calendar, task list, address book)
* Use modern technologies like RichFaces and AJAX for the portlet implementation
* Integrate the portlets with Zimbra and Google groupware
* Prepare a configured GateIn instance with pre-configured portlets to demonstrate achieved results',
		status: Thesis::Status[:available][:id]
	}, {

		#64
		name: 'Implement missing WS specification for Apache CXF framework',
		thesis_type: 2,
		description:
'The goal of this work is to implement one missing WS standard for Apache CXF framework.

*The student will:*

* Study WS specifications and their structure and relations
* Select one from not implemented transaction specifications in Apache CXF project
** WS-Transfer (Resource Specification) - WS-Eventing (Messaging Specification)
* Get familiar with selected specification and Apache CXF project structure
* Introduce yourself to Apache CXF developers and discuss with them your plans
* Please note any development around the 2 specs above needs to actually be based on the WS-ResourceAccess version of them.
** There''s a convenient links list of the WS-RA specs at
"http://jbossws.blogspot.it/2011/12/web-services-resource-access.html":http://jbossws.blogspot.it/2011/12/web-services-resource-access.html
* Implement selected specification and work with Apache CXF developers to fulfill their expectations',
		status: Thesis::Status[:available][:id]
	}, {

		#65
		name: 'JBossWS interoperability with other WS implementations',
		thesis_type: 1,
		description:
'The goal of this work is to create a tool/set of tests that will automatically check interoperability between JBossWS Native, JBossWS CXF and other WS implementations.

*The student will:*

* Study the contents of WS-I specifications
* Get familiar with WS-I tests inside existing testsuites
* Create a tool/set of tests that will check interoperability between JBossWS CXF and other non JBoss stacks
* Create Hudson CI server matrix job/jobs to ensure automatic test execution',
		status: Thesis::Status[:available][:id]
	}, {

		#66
		name: 'Create ModeShape sequencers for selected multimedia formats',
		thesis_type: 1,
		description:
'ModeShape is a JBoss implementation of JCR. It allows interesting features like automatic extraction of meta-data from the content placed in the repository. The goal of this work is to develop new sequencers that will extract meta-data from different multimedia file types like ogg, mpg, etc.

The student will:

* Analyze and document architecture of ModeShape solution
* Define a set of multimedia formats that should be supported
* Document the meta-data relevant to each file format and implement a sequencers for the extraction
* Design a solution for processing of files with DRM
* Donate the code to ModeShape project',
		status: Thesis::Status[:available][:id]
	}, {

		#67
		name: 'Create a generic tool to support fail-over testing',
		thesis_type: 1,
		description:
'The goal of this work is to design and develop a tool that will simplify fail-over testing of different Red Hat projects.

The student will:

* Gather and analyze requirements for such tool
* Design and implement the tool
* Integrate the tool with Hudson CI server used in Red Hat
* Verify the tool operation on one of Red Hat projects
* Convert the tool into open-source project',
		status: Thesis::Status[:available][:id]
	}, {

		#68
		name: 'EJB timers in cluster and failover support for AS7',
		thesis_type: 2,
		description:
'Implement EJB times support for cluster in AS7. There are 2 kinds of timers in Java EE: Single Action Timer and Interval Timer which both apply for clustering support. This involves ability to create timers once per cluster and includes failover support to make sure no timers are lost during outages in the cluster. The upstream tracking Jira is https://issues.jboss.org/browse/AS7-3962.',
		status: Thesis::Status[:available][:id]
	}, {

		#69
		name: 'Použití Infinispan-u pro implementaci CDI kontextu',
		thesis_type: 3,
		description:
'Implement an infrastructure necessary for creating a CDI context that uses Infinispan as the underlying state storage. This involves researching a strategy for checking of the modified state. Use the infrastructure for implementing a cluster scope (globally-shared context) and a users scope (users-specific context).',
		status: Thesis::Status[:available][:id]
	}, {

		#70
		name: 'Integrace se sociálními sítěmi v Seam Social',
		thesis_type: 1,
		description:
'* Seznamte se se specifikací CDI, projektem Seam3, moduly Seam Security a Seam Social, a protokolem OAuth.
* Navrhněte a implementujte rozšíření modulu Seam Social pro snadnou integraci s vybranými sociálními sítěmi.
* Demonstrujte výslednou implementaci na ukázkové aplikaci využívající integraci mezi Seam Security, Seam Social a různými sociálními sítěmi.',
		status: Thesis::Status[:available][:id]
	}, {

		#71
		name: 'Create AJAX-enabled JSF component for WYSIWYG editing',
		thesis_type: 1,
		description:
'The goal of this work is to improve or rewrite existing JSF components that interacts with libraries for plotting charts.
* Design the component configuration and parametrization for big flexibility
* Develop the component following best practices for component development
* Create a simple demo application using the component developed
* Donate the code to RichFaces project',
		status: Thesis::Status[:available][:id]
	}, {

		#72
		name: 'Implementation of WSO2 performance scenarios in SwitchYard',
		thesis_type: 2,
		description:
'*Goal:* Create a set of performance scenarios for SwitchYard based on WSO2 test suite.

* Analyze and describe WSO2 performance scenarios.
* Create a performance test toolkit for SwitchYard or choose one available on the market
* Implement scenarios for SwitchYard
* Measure and compare the performance of WSO2 to SwitchYard
* Identify bottlenecks in performance and propose solutions
* Donate the code to SwitchYard project to make it a standard part of the testsuite',
		status: Thesis::Status[:available][:id]
	}, {

		#73
		name: 'Design and implement Testing framework for JAAS login modules',
		thesis_type: 2,
		description:
'The LoginModule interface gives developers the ability to implement different kinds of authentication technologies that can be plugged in under an application. For example, one type of LoginModule may perform a username/password-based form of authentication. Other LoginModules may interface to hardware devices such as smart cards or biometric devices.

*The student will:*

* Get familiar with Java Authentication and Authorization Service (JAAS)
* Design and implement Java library (framework) which helps to test if a login module implementation goes correctly through the authentication process defined by the JAAS specification, all methods of the login module work as required by the JAAS Specification - initialize(), login(), commit(), abort() and logout()
* The framework has to be easy pluggable to the common Java testing frameworks such as JUnit and TestNG
* Donate the code to the JBoss security project',
		status: Thesis::Status[:available][:id]
	}, {

		#74
		name: 'Design and implement GUI tool for debugging HornetQ journal',
		thesis_type: 2,
		description:
'HornetQ is an open source project to build a multi-protocol, embeddable, very high performance, clustered, asynchronous messaging system. HornetQ server has its own ultra high performance persistent journal, which it uses for message and other persistence. Journal consists of a set of binary files on disk. Main aim of this thesis is to implement GUI tool for debugging stored information in the journal.

*The student will:*

* Get familiar with HornetQ server
* Analyze and document structure of HornetQ journal
* Design and implement swing application which can be used as debugger for HorentQ journal
* Tool must provide information about queues, stored messages, transactions etc.
* Donate the code to HornetQ project',
		status: Thesis::Status[:available][:id]
	}, {

		#75
		name: 'Visualization and tracing of messages between Infinispan nodes',
		thesis_type: 1,
		description:
'We know what kind of messages should be generated between nodes to perform specific operations - in theory -, still to debug problems of configuration or implementation on the whole stack (application + Infinispan + JGroups) we often need to look into the logs, having thousands of trace lines even when sampling for small periods of time. It would be very useful to have a way to automatically extrapolate the interesting patterns out of a running system, we could collect reliable information for example using (just ideas):

* A custom JGroups protocol
* Byteman to instrument JGroups for specific events (like network socket usage, or thresholds being reached in internal structures like resend tables or threadpool sizes)
* Simple log file parsing
	The collected information could then be used to generate condensed reports highlighting the 	patterns being used in practice to compare them with expected patterns. I have two different 	kinds if output in mind:
•	A graphical visualization, showing the cluster nodes and a sequence of colored arrows showcasing what is being done
•	A short text representation, to be used by:
•	automated tests to verify invariant expectations are not broken on code changes
•	future possible tool to formally proof correctness / race conditions
',
		status: Thesis::Status[:available][:id]
	}, {

		#76
		name: 'Proof of correctness for complex distributed patterns',
		thesis_type: 2,
		description:
'The core of Infinispan can be represented in very simple "primitives": a set of nodes send messages to each other. The fundamental rules are also relatively simple:

* a message can''t be received before it''s sent
* a message could be lost
* a node could be killed at any time
* From these basic building blocks one can start building some logical consequences:
* messages sent to multiple nodes might arrive at different times
* multiple messages sent to multiple nodes might be delivered in different order

Some of these problems are resolved by JGroups - but even then it must be configured accordingly, meaning Infinispan''s usage of it is sensible to using the wrong method or flags. While the Java/Scala code in Infinispan is not overly complex, it''s not suited for reasoning on the consequences of often-needed changes in the codebase. It would be very useful to be able to define patterns in an ad-hoc meta language, and provide a proof correctness of the patterns it uses, or at least proof the events it should avoid can not happen.

A great help for the project would be to sketch such a language and try it out on some of the distribution schemes Infinispan uses to proof they are correct or identify flaws in correctness. In a second step (optional) one could build some tooling around this to provide automatic demonstration / simulation for proposed changes expressed in this meta language. The Promela language could be used for this purpose; so one could build tooling around it, try to apply it on Infinispan, and possibly work on ad-hoc extesions.

See also previous proposal: "Visualization and tracing of messages between Infinispan nodes" -> that would make it possible to trace the real Infinispan behaviour and then demonstrate it''s correctness or identify problems before they happen.',
		status: Thesis::Status[:available][:id]
	}, {

		#77
		name: 'Comparison of existing OSS BPEL engines',
		thesis_type: 1,
		description:
'The goal of this work is to make a comparison between different OSS BPEL engines implementations (Riftsaw, ODE, ActiveBPEL, OpenESB, ...) and identify their strengths and weaknesses.

*The student will:*

* Gather and study the documentation to the related projects
* Create a comparison matrix to highlight weak and strong points of each product
* Design and implement a process in Riftsaw
* Execute the process on all examined engines and compare the results
* Propose improvements to Riftsaw project to be on par with competitors',
		status: Thesis::Status[:available][:id]
	}, {

		#78
		name: 'Design and implement grid testing system',
		thesis_type: 2,
		description:
'The goal of the work is to create high-performance solution for test execution based on grid architecture.

*The student will:*

* Research available Java open-source grid software implementations
* Design the grid testing software that will partition, dirstribute and execute test cases from the test suite
* Use TestNG as the base testing framework
* Develop and implement algorithm to partition test suite based on the test cases dependencies
* Optimize the execution to minimize the execution time',
		status: Thesis::Status[:available][:id]
	}, {

		#79
		name: 'Implement topology change updates in Infinispan Hot Rod Python client',
		thesis_type: 1,
		description:
'Hot Rod protocol is a binary, platform independent, protocol created to enable clients to communicate with Infinispan servers. Hot Rod protocol clients can receive, as part of operation responses, cluster topology update information. The aim of this work is to implement this logic in Hot Rod''s Python client.',
		status: Thesis::Status[:available][:id]
	}, {

		#80
		name: 'Infinspan node control based on SLA',
		thesis_type: 2,
		description:
'Infinispan currently uses RHQ - an open source management console - to visualize and present statistics. Such statistics are also available in JMX. This project is about making use of a rules engine - such as Drools - to capture such statistics, and to allow for users to pass in thresholds and service level agreements as rules, which may trigger firing up more Infinispan nodes - or even taking some down (see https://issues.jboss.org/browse/ISPN-127).',
		status: Thesis::Status[:available][:id]
	}, {

		#81
		name: 'Side-by-side comparison of memcached to Infinispan',
		thesis_type: 1,
		description:
'*The goal of this work is to*

* Study the functionality of Infinispan and memcached
* Build a comparison matrix based on the features identified
* Design, develop and execute performance test suite
* Analyze the achieved result',
		status: Thesis::Status[:available][:id]
	}, {

		#82
		name: 'Communication center as a set of portlets',
		thesis_type: 2,
		description:
'The goal of this work is to

* Develop a set of portlets that implement modern communication center (e-mail client, chat, social networks, blogging)
* Use modern technologies like RichFaces and AJAX for the portlet implementation
* Integrate the portlets using industry or de-facto standards (POP3, IMAP, IRC, Jabber/XMPP, Facebook, Twitter, Blogspot)
* Prepare a configured GateIn instance with pre-configured portlets to demonstrate achieved results',
		status: Thesis::Status[:available][:id]
	}, {

		#83
		name: 'Jenkins CI plugin investigation',
		thesis_type: 1,
		description:
'Advanced usage of continuous integration server Jenkins CI. Jenkins CI is the most popular continuous integration server. There are several hundreds plugin for Jenkins CI which allows to implement sophisticated scenarios of building, testing and deploying software and thus automate substantial part of software development life cycle.

*The student will:*

* Gather the list of the Jenkins CI plug-ins,
* identify plug-ins which can be used for managing software life cycle,
* install and verify the usability of each plug-in,
* describe and categorize each verified plug-in,
* propose several patterns for software life cycle automation using these plug-ins,
* apply proposed patterns to selected project in JBoss QE and eventually propose improvements in project automation,
* donate the text to Jenkins CI community (can be considered as an extension to Jenkins: The definite guide book).',
		status: Thesis::Status[:available][:id]
	}, {

		#84
		name: 'Integration of Jenkins CI with JBoss AS 7',
		thesis_type: 2,
		description:
'Jenkins CI is the most popular continuous integration server which contains embedded servlet container Winstone, which is archaic and not maintained. The aim of this thesis is to replace Winstone by JBoss AS 7.

*The student will:*

* get familiar with Jenkins CI, especially with extras-executable-war package,
* get familiar with JBoss AS 7,
* compare Winstone with AS 7 and identify all possible backward compatibility issues (e.g. configuration options available in Winstone, but missing in AS 7),
* resolve possible backward compatibility issues by implementing new features into AS 7 or by modification of appropriate part of Jenkins,
* replace embedded Winstone servlet container by AS 7,
* donate project to Jenkins community.',
		status: Thesis::Status[:available][:id]
	}, {

		#85
		name: 'Improvement of Delta cloud plugin for Jenkins CI',
		thesis_type: 1,
		description:
'The aim of this thesis is to improve Delta cloud plugin and extend its functionality to cover all features provided by Delta cloud API. Jenkins CI is the most popular continuous integration server. Delta cloud API is Apache project which tries to unify API for different cloud providers and thus allows the users to implement cloud provider independent application.

*The student will:*

* get familiar with Jenkins CI,
* get familiar Delta cloud API,
* analyze which API features can be used by Jenkins,
* improve Delta cloud plugin to cover all cover all features provided by Delta cloud API identified in previous step,
*contribute the code back to the Delta cloud plugin project.',
		status: Thesis::Status[:available][:id]
	}, {

		#86
		name: 'Jenkins CI plugin development in Python',
		thesis_type: 2,
		description:
'Jenkins CI is the most popular continuous integration server with strong support for plugins. Jenkins is written in Java, but it also provides possibility to implement plugins in Ruby. The aim of this thesis is to provide similar support for Python which would allow developers to implement plugins in Python.

*The student will:*

* get familiar with Jenkins CI and its plugin mechanism,
* analyze Jenkins support for implementing plugin in Ruby,
* propose similar mechanism for implementing plugin in Python,
* implement proposed mechanism,
* verify the functionality by implementing simple plugin in Python,
* contribute the code back to the Jenkins project.',
		status: Thesis::Status[:available][:id]
	}, {

		#87
		name: 'Srovnání RAD platforem Seam Forge a Spring Roo',
		thesis_type: 1,
		description:
'* Načrtněte výhody nástrojů pro rapid-application development
* Nastudujte Seam Forge a Spring Roo
* Zaměřte se na rozšitelnost jednotlivých technologií
* Vytvořte vzorové rozšíření pro vývoj webových aplikací pro Spring Roo a JBoss Forge se shodnou funkcionalitou
* Zhodnoťte dosažené výsledky',
		status: Thesis::Status[:available][:id]
	}, {

		#88
		name: 'Srovnání Seam Forge a Spring Roo',
		thesis_type: 1,
		description:
'* Načrtněte výhody nástrojů pro rapid-application development
* Nastudujte Seam Forge a Spring Roo
* Vytvořte vzorovou aplikaci se stejnou funkcionalitou pomocí Spring Roo a Seam Forge běžící na JBoss AS
* Zhodnoťte dosažené výsledky',
		status: Thesis::Status[:available][:id]
	}, {

		#89
		name: 'Usability Session Recording Tool',
		thesis_type: 1,
		description:
'*Explanation:* Usability engineers regularly administer usability sessions. Within these sessions there are a number of things that they need to record:

*The three most notable are the screen of the users being tested*

* An external camera source
* An external microphone

These must be compressed and multiplexed together, compressed. The tool must be able to open these files, export them to other more conventional types, i.e. an OGG simply of the users screen.
*Expected results:* An application which can record, playback, do very basic export (i.e. export camera feed to an avi file) the required information and that can be used by the people of the KDE Usability Project for usability testing.

*Prerequisites:*
* C++, Qt, some C (potentially for GStreamer plugins)
* Basic knowledge of multimedia development (i.e. what multiplexing, encoding, basic synchronization issues are)',
		status: Thesis::Status[:available][:id]
	}, {

		#90
		name: 'KDE aplikace pro prohlížení a reportování chyb',
		thesis_type: 2,
		description:
'# Seznamte se s operačním systémem GNU/Linux a prostředím KDE
# Seznamte se s projektem "ABRT":https://fedorahosted.org/abrt/
# Navrhněte KDE aplikaci pro prohlížení a reportování chyb detekovaných projektem ABRT. Podrobnosti konzultujte s vedoucím práce.
# Navržený nástroj implementujte.
# Ověřte funkčnost nástroje ve více distribucích OS GNU/Linux.
# Zhodnoťe dosažené výsledky a navrhněte další postup.',
		status: Thesis::Status[:available][:id]
	}, {

		#91
		name: 'Shared board - Sdílená tabule',
		thesis_type: 2,
		description:
'Cílem diplomové práce je pokračování ve vývoji aplikace Makneto, která slouží k real-time komunikaci uživatelů skrze pracovní plochu - sdílenou tabuli. Mezi možné rozšíření patří podpora konferencí více uživatelů (MUC), multimediální/interaktivní objekty na tabuli, port komunikační části na architekturu Telepathy (v KDE 4 ji implementuje Decibel), real-time hlas/video. Součástí vývoje aplikace jsou i opravy existujících chyb tak, aby bylo možné aplikaci začlenit do prostředí KDE PIM. Zadání práce je možné individuálně upravit.

*Požadavky:* programovací jazyk C++, prostředí Qt 4/KDE 4

# Prostudujte existující aplikaci Makneto (http://makneto.sf.net/).
# Prostudujte existující řešení pro týmovou spolupráci přes Internet pomocí interaktivních sdílených tabulí.
# možné alternativy, doplňují se
** Navrhněte rozšíření protokolu XMPP whiteboarding o sdílení multimediálního/interaktivního obsahu.
** Navrhněte rozšíření aplikace o podporu komunikace více uživatelů.
** Přeportujte komunikační část na architekturu Telepathy.
** Navrhněte rozšíření o real-time přenos hlasu/videa.
** Vlastní nápad!
# Implementujte navržená rozšíření do stávající aplikace v jazyce C++ s využitím prostředí Qt 4/KDE 4.
# Zhodnoťte přínos vytvořené aplikace pro podporu komunikace ve vývoji open source projektů. Diskutujte budoucí vývoj aplikace.',
		status: Thesis::Status[:available][:id]
	}, {

		#92
		name: 'Dotykové uživatelské rozhraní',
		thesis_type: 3,
		description:
'Prostudujte problematiku dotykových uživatelských rozhraní. Navrhněte vlastní uživatelské rozhraní nebo úpravy stávajících uživatelských rozhraní pro použití pomocí dotykového ovládání. Implementujte navržené rozhraní. Zhodnoťte dosažené výsledky a pokuste se o začlenění změn do upstreamu. Navrhněte možné pokračování práce.',
		status: Thesis::Status[:available][:id]
	}, {

		#93
		name: 'Uživatelské rozhraní KDE Telepathy pro dotyková zařízení',
		thesis_type: 1,
		description:
'Navrhněte a implementujte uživatelské rozhraní KDE Telepathy vhodné pro dotyková zařízení. Rozhraní by mělo být integrované s Plasma Active.

Spolupracujte s komunitou, pokuste se o začlenění do upstreamu.',
		status: Thesis::Status[:available][:id]
	}, {

		#94
		name: 'KPeople - sémantická databáze kontaktů',
		thesis_type: 1,
		description:
'Pokračujte ve vývoji knihovny KPeople a její integraci do KDE.

Cílem KPeople je ukládat všechny osoby v KDE (ať už IM kontakt, odesílatele emailu, kontakt z adresáře...) do Nepomuku a slučovat záznamy, které reprezentují jednu osobu.

Můžete se buď zapojit do vývoje KPeople, nebo pracovat na integraci KDE aplikací (KMail, KAddressbook, KDE Telepathy) s KPeople.

Spolupracujte s komunitou, snažte se o začlenění práce do upstreamu.',
		status: Thesis::Status[:available][:id]
	}, {

		#95
		name: 'Podpora pro videokonference v KDE Telepathy',
		thesis_type: 1,
		description:
'Přidejte podporu pro videokonference do KDE Telepathy.

Implementujte podporu pro videokonference (MUC video chat) přes XMPP protokol do Telepathy.

Navrhněte a implementujte uživatelské rozhraní pro KDE Telepathy.

Spolupracujte s komunitou. snažte se o začlenění do upstreamu.',
		status: Thesis::Status[:available][:id]
	}, {

		#96
		name: 'Sada nástrojov pre testovanie výkonnosti súborového systému gfs2',
		thesis_type: 2,
		description:
'GFS2 je súborový systém vhodný pre nasadenie v cluster prostredí. Umožnuje zdieľať SAN blokové zariadenie medzi viacerými uzlami clusteru, pričom každý uzol môže mať pripojený súborový systém v read-write móde.

Predmetom práce je:

* návrh vhodnej testovacej siete obsahujúcej niekoľko uzlov testovacieho clusteru.
* implementácie nástrojov pre meranie výkonnosti rôznych implementácii súborového systému gfs2.
* otestovanie implementovaných nástrojov na virtuálnych a reálnych strojoch
* porovnanie výkonnosti jednotlivých implementácii a diskusia nad výsledkami',
		status: Thesis::Status[:available][:id]
	}, {

		#97
		name: 'Collaborative editing of documents over a network + version control integration',
		thesis_type: 2,
		description:
'Make it possible for two or more users to work at the same document in a KOffice application at the same time over a network. Both users would open the same document, and changes made by each users are synchronized to the other users''s editing session. Also integrate version control system support with KWord to allow easy control over revisions of documents. It should be possible to connect with remote revision control systems, to allow collaborative work on projects, similarly to how software is developed. It should be easy for the users to browse through the history of document versions in the version control system, to see what has changed. Webdav, CVS, Subversion and git should be supported.',
		status: Thesis::Status[:available][:id]
	}, {

		#98
		name: 'Sada testů pro vybrané open source nástroje',
		thesis_type: 1,
		description:
'Popište specifika zajištění kvality open source software. Pro zvolené nástroje v Red Hat Enterprise Linux / Fedora vytvořte nebo rozšiřte sadu automatických testů. Unit testy přidejte přímo do zdrojového kódu projektu tak, aby je uživatelé mohli spouštět po instalaci balíku. Integrační a zátěžové testy budou určeny pro spouštění v AutoQA test system.',
		status: Thesis::Status[:available][:id]
	}, {

		#99
		name: 'Měření výkonu software v GNU/Linux',
		thesis_type: 1,
		description:
'# Seznamte se s problematikou měření výkonu software. Popište různé typy performance testů na příkladech užití.
# Prostudujte metodologii měření výkonu na GNU/Linux a porovnejte dostupné testovací nástroje.
# Identifikujte skupinu služeb a aplikací v distribuci Fedora/Red Hat Enterprise Linux
# Implementujte sadu testů pro regresní kontrolu výkonnosti vybraných aplikací.
# Zhodnoťte výsledné řesení a navrhněte možnosti rozšíření.',
		status: Thesis::Status[:available][:id]
	}, {

		#100
		name: 'Nedefinované chování v jazyku C',
		thesis_type: 3,
		description:
'# Prostudujte si co je nedefinované chování v jazyku C.
# Pokuste se popsat jaké má nedefinovane chování smysl a proc je nebezpečné?
# Shromážděte co nejvíce příkladů nedefinovaného chování, které se projevilo jako bug z pohledu uživatele.
** (ideálně z prostředí unix-like systémů: GNU/Linux, *BSD, Solaris, ...)
# Pokuste se tyto příklady rozdělit do kategorií a u každé uveďte dva pohledy.
** pohled programátora - popište jak by měl programátor takovým chybám předcházet, čeho by si měl být vědom.
** pohled testéra - popište jak zjistit zda daný software nespoleha na nedefinované chovaní daného typu (detekce výskytu).
** Předpokládá se dostupnost zdrojových kódů.
** Může jít o dostupné řešení, valgrind, efence, cppcheck případně můžete navrhnout vlastní (nebo kombinaci obojího) (gdb skript, LD_PRELOAD trik..., etc.)
# Součástí by měla být sada ukázkových programů.
# Práce by měla být v angličtině, čeština by zbytečně omezovala text na úzké publikum.',
		status: Thesis::Status[:available][:id]
	}, {

		#101
		name: 'Automatic static code analysis of Linux kernel',
		thesis_type: 1,
		description:
'*Goal:* Implement an automatic build system, which would for each/scheduled commit run some static code analysis and report the authors of the commits differences in the report.

* Analyse current existing stastic code analysis tools (Lint, Clang, Coverity, Parfait, ...)
* Design and implement build system for dispatching, running and comparing tool output
** Allow usage of git/hg/cvs/svn source code repositories as well as RedHat internal git repositories and RPM/SRPM packages
** Create a simple web interface for viewing current build/result status of the dispatched jobs',
		status: Thesis::Status[:available][:id]
	}, {

		#102
		name: 'Sada výkonnostních testů pro porovnání tuned profilů',
		thesis_type: 3,
		description:
'Seznamte se s problematikou měření výkonu software. Popište různé typy performance testů se zaměřením na souborové systémy a výkon disku.

# Popište službu tuned a rozdíly mezi profily. Zjistěte jak emulovat různé typy diskových zařízení a jaké benchmarky lze použít na měření jejich výkonu.
# Vytvořte plán testování pro tuned profily na platformě GNU/Linux Fedora.
# Implementujte automatizované testy pro nástroj tuned a porovnání jeho profilů.
# Proveďte testy na zvolených diskových zařízeních a souborových systémech. Výsledky znázorněte v grafu.
# Zhodnoťte výsledné řešení a navrhněte možnosti rozšíření testování. Volitelně doporučte vylepšení tuned profilů.',
		status: Thesis::Status[:available][:id]
	}, {

		#103
		name: 'Optimalizace slučování linearizovaných orientovaných grafů a využití při integračním testování',
		thesis_type: 3,
		description:
'* Seznamte se s teorií grafů.
* Seznamte se s testováním software a správou automatizovaných testů.
* Navrhněte možné postupy linearizace orientovaných grafů s jedním koncovým uzlem.
* Navrhněte možné postupy slučování těchto grafů o hledem na omezující podmínky.
* Implementujte navržené postupy a ověřte jejich použití na strukturách závislých testů.
* Narvhněte a implementujte další omezující podmínky s ohledem na lepší efektivitu testování. Vyhodnoťte a porovnejte navržené postupy a demonstrujte výhody/nevýhody na vhodných příkladech.',
		status: Thesis::Status[:available][:id]
	}, {

		#104
		name: 'Implementace pravidel a strategií soutěže RedBot',
		thesis_type: 3,
		description:
'RedBot je programátorská soutěž pro studenty středních a vysokých škol sponzorovaná firmou Red Hat, která v každém ročníku přichází s novým zadáním. Obecně jde o implementaci strategií soutěžících proti sobě v rámci předem zadaných pravidel. Úkolem studenta je implementovat vyhodnocovací server, visualizační utilitu a 3 (nebo více) různé strategie rozdílné inteligence a rozhodovacího principu (například neuronová síť). Student popíše princip, výsledky a výpočetní náročnost strategií. Možné je též jednu strategii implementovat ve více programovacích jazycích a porovnat rychlost a paměťovou náročnost jejich vyhodnocování. Cílem práce je vytvořit imlementaci daných pravidel (budou zadány po konzultaci se studentem), kterou bude možné s malými změnami použít jako jeden ročník soutěže "RedBot":http://red-bot.rhcloud.com/.',
		status: Thesis::Status[:available][:id]
	}, {

		#105
		name: 'Yum plugin for suggesting packages based on usage (data mining)',
		thesis_type: 2,
		description:
'*Goal:* Implement a yum plugin and analytic tool for suggested packages database Yum/RPM package database does not have static recommended packages entries.

Create new program in a language of choice that builds this database from Fedora public repositories statistical data and Pulp package sets using Formal Conceptual Analysis (FCA). The approach should allow to recommend packages from a set of current and/or packages being installed. As a part of this theme develop new yum plugin that will periodically download the database from repositories and recommends packages upon installation. The key is to design and implement efficient, fast and bandwidth low-cost data format for storing and transmitting of package statistical database.

*Links:*

* "Pulp":http://pulpproject.org
* "Yum":http://yum.baseurl.org',
		status: Thesis::Status[:available][:id]
	}, {

		#106
		name: 'Analysis tool for entitlement dependencies (data mining)',
		thesis_type: 2,
		description:
'*Goal:* Implement an analytic tool for entitlement dependencies Candlepin is an open source entitlement management system.

It tracks the products which an owner has subscribed too, and allows the owner to consume the subscriptions based on configurable business rules. Develop an analysis program in a language of choice that will run on Candlepin server and periodically create reports of consumed entitlements. Data should be kept for historical purposes. Data presentation must be via HTML. The key is not to overload the Candlepin database during analysis - data must be transfered to a different format (datafiles, memory) prior to analysis process.

*Links:*
* "Candlepin":https://fedorahosted.org/candlepin/',
		status: Thesis::Status[:available][:id]
	}, {

		#107
		name: 'Automatizovaná instalace virtuálních strojů propojených IPv6 sítí',
		thesis_type: 1,
		description:
'Většina současných informačních systémů funguje na principu server-klient a komunikuje pomocí protokolu IPv4. S příchodem IPv6 vzniká potřeba mít testovací prostředí fungující na tomto protokolu. Pro základní testy, které mají ověřit funkčnost spojení server-klient není potřeba konfigurovat celé sítě fyzických počítačů. Postačí jeden vykonější stroj, na kterém mohou běžet dva virtuální hosti, kteří mezi sebou mají nastavenu IPv6 síť. Cílem této práce je tedy vytvoření automatizovaného skriptu nebo sady skriptů, které po spuštění ověří, zda běží na hardwaru, který umožňuje virtualizaci a je dostatečný pro běh minimálně dvou virtuálních hostů. Pokud ano, pak na tomto počítači skripty nakonfigurují virtualizaci za použití KVM, nainstalují dva virtuální hosty s operačním systémem Linux a na těchto systémech nakonfigurují IPv6 komunikaci. Rozsah konfigurace virtuálních systému je možno upravovat a lze se na něm domluvit se studentem a školou. Preferované jazyky Python a Bash.',
		status: Thesis::Status[:available][:id]
	}, {

		#108
		name: 'Analysis of entropy levels in the kernel entropy pool in virtual guests',
		thesis_type: 3,
		description:
'Analyse the behavior of Linux kernel in regards to amount of entropy in the kernel entropy pool during the boot of virtual machine guests. Find out whether the type of the host hypervisor (KVM, XEN) affects the values of the available entropy. Provide methods for improving the entropy contents in the kernel pool in such situations.',
		status: Thesis::Status[:available][:id]
	}, {

		#109
		name: 'Design and support better SCAP content development process',
		thesis_type: 3,
		description:
'Broader adoption of Security Content Automation Protocol (SCAP) specifications in open-source community has been problematic. One of the main barriers is complexity of each specification. This complexity makes SCAP content authoring and maintenance a painful job. The aim of this thesis is to come up with a solution that will make OVAL-5.10.1 and XCCDF-1.2 content development process easier and more users friendly. That involves:

* get familiar with content development process
* identify the shortcomings
* search for, study and compare different approaches that try to solve these issues
* design a new solution or improvements to the existing efforts
* implement the solution',
		status: Thesis::Status[:available][:id]
	}, {

		#110
		name: 'Verifying and improving cryptographic key security in PKCS#11 implementations',
		thesis_type: 2,
		description:
'The PKCS#11 interface for cryptographic modules should be able to provide services without giving its users access to the raw values of the cryptographic keys. In practice, however, both the design and existing implementations have various problems and inconsistencies that allow extraction of the key data.

* Study the PKCS#11 interface standard, focusing on key protection facilities available in various versions
* Familiarize with existing attacks and existing tools for automatic implementation verification (e.g. Tookan)
* Write an open-source tool that performs an automated analysis of a PKCS#11 implementation to find ways to extract the key data; use it to validate the NSS "software token" and perhaps other open-source implementations of PKCS#11.
* If relevant, suggest and implement improvements to the tested PKCS#11 implementations to mitigate the discovered attacks
* If relevant, suggest and prototype improvements to the PKCS#11 standard to mitigate the discovered attacks',
		status: Thesis::Status[:available][:id]
	}, {

		#111
		name: 'Spolehlivá identifikace klienta v rámci jednoho počítače',
		thesis_type: 2,
		description:
'Design and implement a way to identify a client (e.g. a specific executable) by a server running within a single Linux computer, in a way that can differentiate between separate clients running under the same UID, and be reliable/resistant against exploits (e.g. using the debugger system calls) in such an environment. The purpose of this facility is to be able to centralize storage of private and secret keys within a single OS component, while separating keys that belong to specific applications.',
		status: Thesis::Status[:available][:id]
	}, {

		#112
		name: 'Návrh a implementace libcgroup testsuite',
		thesis_type: 1,
		description:
'Cílem práce je nastudovat funkcionalitu balíku libcgroup - funkce které implementuje a nástroje jež jsou jeho součástí. Dále zjistit stav stávajícího testsuitu. Navrhnout změny, aby výsledný testsuit pokrýval celý balík libcgroup. Implementovat tento návrh a vytvořit funkční, kompletní (určit code coverage) a použitelný nástroj na testování balíku libcgroup. Testsuite by měl být ve finální podobě součást upstreamové verze balíku.',
		status: Thesis::Status[:available][:id]
	}
]

sections_data = [
	{ name: 'base-os' },			 #0
	{ name: 'Desktop' },			 #1
	{ name: 'FreeIPA' },			 #2
	{ name: 'FS_utilities' },		 #3
	{ name: 'Java' },				 #4
	{ name: 'JBoss' },				 #5
	{ name: 'KDE_&_Qt_Libraries' },	 #6
	{ name: 'kernel-qe' },			 #7
	{ name: 'KOffice' },			 #8
	{ name: 'qa' },					 #9
	{ name: 'RedBot' },				#10
	{ name: 'RHNSatellite' },		#11
	{ name: 'Satellite_QA' },		#12
	{ name: 'Security' },			#13
	{ name: 'libcgroup' }			#14
]

universities = University.create(universities_data)
sections = Section.create(sections_data)

theses_sections_data = [
	nil, 0, 0, 0, 0, #5
	0, 0, 0, 1, 1, #10
	1,
	1,
	1,
	1,
	2,
	2,		#15
	2,
	2,
	2,
	3,
	4,		#20
	4,
	4,
	4,
	4,
	4,		#25
	4,
	4,
	4,
	4,
	4,		#30
	4,
	4,
	4,
	4,
	4,		#35
	4,
	4,
	4,
	4,
	4,		#40
	5,
	5,
	5,
	5,		#45
	5,
	5,
	5,
	5,
	5,		#50
	5,
	5,
	5,
	5,
	5,		#55
	5,
	5,
	5,
	5,
	5,		#60
	5,
	5,
	5,
	5,
	5,		#65
	5,
	5,
	5,
	5,
	5,		#70
	5,
	5,
	5,
	5,
	5,		#75
	5,
	5,
	5,
	5,
	5,		#80
	5,
	5,
	5,
	5,
	5,		#85
	5,
	5,
	5,
	6,
	6,		#90
	6,
	6,
	6,
	6,
	6,		#95
	7,
    8,
	9,
	9,
	9,		#100
	9,
	9,
	9,
	10,
	11,		#105
	11,
	12,
	13,
	13,
	13,		#110
	13,
	14
]

theses_red_hat_leaders_data = [
	2, 2, 2, 2, 3, #5
	4, 5, 6, 7, 7, #10
	7, 7, 7, 7, 8, #15
	8, 8, 8, 8, 9, #20
	10, 10, 10, 10,	10, #25
	10, 10, 10,	11, 11, #30
	10, 10, 10,	10, 10, #35
	10, 10, 10, 10, 10, #40
	10, 12, 12, 12, 13, #45
	13, 13, 13, 14, 15, #50
	16, 17, 18, 18, 19, #55
	19, 20, 21, 22, 20, #60
	23, 24, 23, 25, 25, #65
	13, 13, 26, 27, 28, #70
	15, 29, 30, 31, 32, #75
	32, 33, 13, 26, 26, #80
	26, 23, 35, 35, 35, #85
	35, 21, 21, 36, 37, #90
	38, 38, 39, 39, 39, #95
	40, 36, 41, 41, 42, #100
	43, 44, 45, 46, 47, #105
	47, 48, 49, 50, 51, #110
	51, 52 #112
]

for i in (0..theses_data.length() - 1)
	theses_data[i][:red_hat_leader_id] = theses_red_hat_leaders_data[i]
end


for i in (0..theses_data.length() - 1)
	theses_data[i][:section_id] = theses_sections_data[i]
end

theses = Thesis.create(theses_data)

any = [0, 1, 2, 3, 4, 5, 6, 7]

theses_universities_data = [
	6, [2, 6], [2, 6], [2, 6], nil,
	[2, 6], nil, [2, 6], [2, 6], [2, 6],
	[2, 6], [2, 6], 6, 6, any,
	any, any, any, any, [2, 5, 6],
	nil, nil, nil, nil, nil,
	nil, nil, nil, nil, [2, 6],
	[2, 6], [2, 6], [2, 6], [2, 6], [2, 6],
	nil, 6, 2, [2, 6], 6,
	6, [2, 6], [2, 6], [2, 6], [2, 6],
	[2, 6], [2, 6], [2, 6], [2, 6], [2, 6],
	[2, 6], [2, 6], [2, 6], [2, 6], [2, 6],
	[2, 6], 4, [2, 6], [2, 6], [2, 6],
	[2, 6], [2, 6], [2, 6], [2, 6], [2, 6],
	[2, 6], [2, 6], [2, 6], [2, 6], [2, 6],
	[2, 6], [2, 6], [2, 6], [2, 6], [2, 6],
	[2, 6], [2, 6], [2, 6], [2, 6], [2, 6],
	[2, 6], [2, 6], nil, [2, 6], [2, 6],
	[2, 6], 2, 6, 4, [2, 4, 6],
	[2, 6], [2, 6], [2, 6], [2, 6], [2, 6],
	[2, 6], [2, 6], [2, 6], 6, [2, 6],
	[2, 6], [2, 6], [2, 6], [2, 6], 4,
	4, nil, nil, nil, nil,
	nil, [2, 6]
]

for i in (0..theses.length - 1)
	x = theses_universities_data[i]

	if !x.nil?
		if x.class == Fixnum
			thesis_universities = [universities[x]]
		elsif x.class == Array
			thesis_universities = x.map { |y| universities[y] }
		end
	end

	theses[i].universities = thesis_universities
	theses[i].save
end

users_data = [
	{	#1
		user_type:	User::Type[:admin][:id],
		first_name:	'Jiří',
		last_name:	'Eischmann',
		email:		'eischmann@redhat.com',
		password:	'eischmann@redhat.com'
	}, { #2
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Marian',
		last_name:	'Ganišin',
		email:		'mganisin@redhat.com',
		password:	'mganisin@redhat.com'
	}, { #3
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Jaroslav',
		last_name:	'Škarvada',
		email:		'jskarvad@redhat.com',
		password:	'jskarvad@redhat.com'
	}, { #4
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Vít',
		last_name:	'Ondruch',
		email:		'vondruch@redhat.com',
		password:	'vondruch@redhat.com'
	}, { #5
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Petr',
		last_name:	'Písař',
		email:		'ppisar@redhat.com',
		password:	'ppisarh@redhat.com'
	}, { #6
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Jaromír',
		last_name:	'Cápík',
		email:		'jcapik@redhat.com',
		password:	'jcapik@redhat.com'
	}, { #7
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Ondřej',
		last_name:	'Vašík',
		email:		'ovasik@redhat.com',
		password:	'ovasik@redhat.com'
	}, { #8
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Martin',
		last_name:	'Stránský',
		email:		'stransky@redhat.com',
		password:	'stransky@redhat.com'
	}, { #9
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Jan',
		last_name:	'Zelený',
		email:		'jzeleny@redhat.com',
		password:	'jzeleny@redhat.com'
	}, { #10
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Lukáš',
		last_name:	'Czerner',
		email:		'lczerner@redhat.com',
		password:	'lczerner@redhat.com'
	}, { #11
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Pavel',
		last_name:	'Tišnovský',
		email:		'ptisnovs@redhat.com',
		password:	'ptisnovs@redhat.com'
	}, { #12
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Stanislav',
		last_name:	'Ochotnický',
		email:		'sochotnicky@redhat.com',
		password:	'sochotnicky@redhat.com'
	}, { #13
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Lukáš',
		last_name:	'Petrovický',
		email:		'lpetrovi@redhat.com',
		password:	'lpetrovi@redhat.com'
	}, { #14
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Jiří',
		last_name:	'Pechanec',
		email:		'jpechane@redhat.com',
		password:	'jpechane@redhat.com'
	}, { #15
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Martin',
		last_name:	'Gencur',
		email:		'mgencur@redhat.com',
		password:	'mgencur@redhat.com'
	}, { #16
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Lukáš',
		last_name:	'Fryč',
		email:		'lfryc@redhat.com',
		password:	'lfryc@redhat.com'
	}, { #17
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Vlado',
		last_name:	'Pakan',
		email:		'vpakan@redhat.com',
		password:	'vpakan@redhat.com'
	}, { #18
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Pavol',
		last_name:	'Srna',
		email:		'psrna@redhat.com',
		password:	'psrna@redhat.com'
	}, { #19
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Jiří',
		last_name:	'Sviták',
		email:		'jsvitak@redhat.com',
		password:	'jsvitak@redhat.com'
	}, { #20
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Filip',
		last_name:	'Nguyen',
		email:		'fnguyen@redhat.com',
		password:	'fnguyen@redhat.com'
	}, { #21
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Libor',
		last_name:	'Zoubek',
		email:		'lzoubek@redhat.com',
		password:	'lzoubek@redhat.com'
	}, { #22
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Karel',
		last_name:	'Piwko',
		email:		'kpiwko@redhat.com',
		password:	'kpiwko@redhat.com'
	}, { #23
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Jiří',
		last_name:	'Peterka',
		email:		'jpeterka@redhat.com',
		password:	'jpeterka@redhat.com'
	}, { #24
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Michal',
		last_name:	'Vančo',
		email:		'mvanco@redhat.com',
		password:	'mvanco@redhat.com'
	}, { #25
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Peter',
		last_name:	'Škopek',
		email:		'pskopek@redhat.com',
		password:	'pskopek@redhat.com'
	}, { #26
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Rostislav',
		last_name:	'Svoboda',
		email:		'rsvoboda@redhat.com',
		password:	'rsvoboda@redhat.com'
	}, { #27
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Radoslav',
		last_name:	'Husar',
		email:		'rhusar@redhat.com',
		password:	'rhusar@redhat.com'
	}, { #28
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Jozef',
		last_name:	'Hartinger',
		email:		'jharting@redhat.com',
		password:	'jharting@redhat.com'
	}, { #29
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Marek',
		last_name:	'Schmidt',
		email:		'maschmidt@redhat.com',
		password:	'maschmidt@redhat.com'
	}, { #30
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Martin',
		last_name:	'Večeřa',
		email:		'mvecera@redhat.com',
		password:	'mvecera@redhat.com'
	}, { #31
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Josef',
		last_name:	'Cacek',
		email:		'jcacek@redhat.com',
		password:	'jcacek@redhat.com'
	}, { #32
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Pavel',
		last_name:	'Slavíček',
		email:		'pslavice@redhat.com',
		password:	'pslavice@redhat.com'
	}, { #33
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Michal',
		last_name:	'Linhard',
		email:		'mlinhard@redhat.com',
		password:	'mlinhard@redhat.com'
	}, { #34
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Marek',
		last_name:	'Baluch',
		email:		'mbaluch@redhat.com',
		password:	'mbaluch@redhat.com'
	}, { #35
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Marek',
		last_name:	'Baluch',
		email:		'mbaluch@redhat.com',
		password:	'mbaluch@redhat.com'
	}, { #36
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Vojtěch',
		last_name:	'Juránek',
		email:		'vjuranek@redhat.com',
		password:	'vjuranek@redhat.com'
	}, { #37
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Lukáš',
		last_name:	'Tinkl',
		email:		'ltinkl@redhat.com',
		password:	'ltinkl@redhat.com'
	}, { #38
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Jakub',
		last_name:	'Filák',
		email:		'jfilak@redhat.com',
		password:	'jfilak@redhat.com'
	}, { #39
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Jaroslav',
		last_name:	'Řezník',
		email:		'jreznik@redhat.com',
		password:	'jreznik@redhat.com'
	}, { #40
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Dan',
		last_name:	'Vrátil',
		email:		'dvratil@redhat.com',
		password:	'dvratil@redhat.com'
	}, { #41
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Adam',
		last_name:	'Okuliar',
		email:		'aokuliar@redhat.com',
		password:	'aokuliar@redhat.com'
	}, { #42
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Ondřej',
		last_name:	'Hudlický',
		email:		'ohudlick@redhat.com',
		password:	'ohudlick@redhat.com'
	}, { #43
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'John',
		last_name:	'Doe',
		email:		'jdoe@redhat.com',
		password:	'jdoe@redhat.com'
	}, { #44
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Stanislav',
		last_name:	'Kozina',
		email:		'skozina@redhat.com',
		password:	'skozina@redhat.com'
	}, { #45
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Jan',
		last_name:	'Ščotka',
		email:		'jscotka@redhat.com',
		password:	'jscotka@redhat.com'
	}, { #46
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Dalibor',
		last_name:	'Pospíšil',
		email:		'dapospis@redhat.com',
		password:	'dapospis@redhat.com'
	}, { #47
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Jan',
		last_name:	'Hutař',
		email:		'jhutar@redhat.com',
		password:	'jhutar@redhat.com'
	}, { #48
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Lukáš',
		last_name:	'Zapletal',
		email:		'lzap@redhat.com',
		password:	'lzap@redhat.com'
	}, { #49
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Martin',
		last_name:	'Minář',
		email:		'mminar@redhat.com',
		password:	'mminar@redhat.com'
	}, { #50
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Tomáš',
		last_name:	'Mráz',
		email:		'tmraz@redhat.com',
		password:	'tmraz@redhat.com'
	}, { #51
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Peter',
		last_name:	'Vrabec',
		email:		'pvrabec@redhat.com',
		password:	'pvrabec@redhat.com'
	}, { #52
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Miloslav',
		last_name:	'Trmač',
		email:		'mitr@redhat.com',
		password:	'mitr@redhat.com'
	}, { #53
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:		'Ivana',
		middle_names:	'Hutařová',
		last_name:		'Vařeková',
		email:			'varekova@redhat.com',
		password:		'varekova@redhat.com'
	}, { #54
		user_type:	User::Type[:red_hat_leader][:id],
		first_name:	'Lucie',
		last_name:	'Fabriková',
		email:		'lucie.f@mail.muni.cz',
		password:	'lucie.f@mail.muni.cz'
	}, { #55
		user_type:	User::Type[:student][:id],
		first_name:	'Marek',
		last_name:	'Osvald',
		email:		'325253@mail.muni.cz',
		password:	'325253@mail.muni.cz'
	}
]

users = User.create(users_data)
