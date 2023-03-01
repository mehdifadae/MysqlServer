#aufgabe fahrschule
use fahrschule;
select  schuelernr, vorname, nachname from fahrschueler order by nachname asc;

select schuelernr, vorname, nachname, ort from fahrschueler order by ort asc;

#if nachname duppel dann sortiere vorname asc
#select schuelernr, vorname, nachname, ort from fahrschueler order by nachname asc and where nachname = nachanme and order by vorname asc;

#1 Erläutern sie den Begriff Selektion
#auswahlen des daten ojeckt

#2liste aus ort schorndorf
select * from fahrschueler where ort = 'schorndorf';

#3 alle fahrschuler mit nachnamen dressel
select  vorname, nachname, geburtsdatum from fahrschueler where nachname = 'dressel';

#4 alle fahrschuler mit nachname dressel asc
select vorname, nachname, geburtsdatum from fahrschueler where  nachname = 'dressel' order by vorname asc;

#5 alle fahrschuler mit uber 20 stunde 
select * from fahrschueler where fahrstundenzahl >= 20;

#6 alle die vor 2001 geboren sind 
select * from fahrschueler where geburtsdatum < "2001.01.01";

#7 alle information uber fahrschueler die vor 2001 geboren sind asc
select * from fahrschueler where geburtsdatum < "2001.01.01" order by geburtsdatum asc;

#8 fahrschueler mit nach name angefangen mit D
select * from fahrschueler where nachname like "D%";

#9 alle fahrschuler aus Schorndorf die in drosselweg wohnen
select * from fahrschueler where ort = 'schorndorf' and strasse = 'drosselweg';

#10 alle die zwichen 2000 1 jan und 31 dez 2001 geboren sind 
select * from fahrschueler where geburtsdatum > "2001.01.01" and geburtsdatum < "2001.12.31";

#11 alle fahrschueler geboren swichen 2000.01.01 bis 2001.12.31 
select * from fahrschueler where geburtsdatum > "2000.01.01" and geburtsdatum < "2001.12.31";

#12 alle fahrschueler die nicht in schorndorf wohnen 
select * from fahrschueler where ort != 'schorndorf';






