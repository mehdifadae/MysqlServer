use fahrschule;

#1 aufgabe anzahl aller fahrschueler
select count(schuelernr) from fahrschueler;

#2 wie hoch ist die höchste anzahl an fahrstunde
select max(fahrstundenzahl) from fahrschueler;

#3 durchnittliche fahrstunden in 2 decimal
select format(avg(fahrstundenzahl), 2) from fahrschueler;

#4  wie viel fahrstunde insgesamt
select sum(fahrstundenzahl) from fahrschueler;

#5 wie hoch ist der jeweilige umsatz pro 30 euro 
select fahrschueler, sum(fahrstundenzahl * 30) as "koste" from fahrschueler ;

#6 wie hoch ist umsatz stunde 30 euro 
select sum(fahrstundenzahl * 30) as "gesamte umsatz in Euro" from fahrschueler;

#zweite pdf

#1 anzahl der fahrschüler je wohnort
select ort, count(schuelernr) from fahrschueler group by ort;

#2 wie viel fahrstunde jede wohnort genommen hat
select ort, sum(fahrstundenzahl) from fahrschueler group by ort;

#3 jeweilige anzahl der fahrschuler aus schorndorf und welzheim
select ort, count(distinct(ort = "schorndorf" and "welzheim")) from fahrschueler group by ort;

#4 jeweilige summe fahrstunden von fahrschuller aus lorch, plünderhausen

#5 