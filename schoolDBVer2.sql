create database if not exists schoolDBVer2;

use schoolDBVer2;

# Tabellen

create table if not exists Lehrer
(id integer not null auto_increment, primary key (id),
name varchar(45), vorname varchar(45));

#Klasse hat einen Klassenlehrer - Fremdschlüssel zum Lehrer
create table if not exists Klasse
(id integer not null auto_increment, primary key (id),
Kuerzel varchar(45), Beschreibung varchar(45),
id_lehrer integer, foreign key (id_lehrer) references lehrer(id));

select * from klasse;

create table if not exists Schueler
(id integer not null auto_increment, primary key (id),
name varchar(45), vorname varchar(45), Straße varchar(45), PLZ varchar(45), Ort varchar(45), Telefon varchar(45), Geburtsdatum varchar(45));

# Tabelle Klasse erweitern um den Schlüssel zur Tabelle Schüler
# wegen der 1:1 Beziehung Klasse hat einen Klassensprecher

alter table klasse
add id_schueler integer,
add constraint id_schueler_fk
foreign key (id_schueler)
references schueler(id);

# Ist Mitschüler muss abgebildet werden
# Für heute Nachmittag, siehe Zeile 26 als Beispiel

 #Beziehungstabelle unterrichtet
 create table unterrichtet (
 id_lehrer integer, id_klasse integer, 
 foreign key (id_lehrer) references lehrer(id),
 foreign key (id_klasse) references klasse (id),
 primary key (id_lehrer, id_klasse)
 );

# Werte in Tabellen
# Werte Schueler
insert into Schueler
values (1, "Ernst", "Uwe", "Weg 1", "51111", "Koeln", "98765", "05.06.2002");

insert into Schueler
values (2, "Mueller", "Kai", "Strasse 2", "89077", "Ulm", "87654", "08.12.2000");

insert into Schueler
values (3, "Specht", "Eva", "Pfad 15", "11111", "Berlin", "76543", "06.08.1999");

insert into Schueler
values (4, "Groß", "Ute", "Allee 9", "24103", "Kiel", "45678", "05.07.2001");

# Werte Lehrer
insert into Lehrer
values (1, "Moll", "Willi");

insert into Lehrer
values (2, "Kurp", "August");

# Werte Klasse
insert into Klasse
values (1, "BG", "Berufsgrundschuljahr");

insert into Klasse
values (2, "IF", "TA-Informationstechnik");

insert into Klasse
values (3, "FO13", "Fachoberschule Klasse 13");


# Tabelleninhalt anzeigen
show tables;
show full tables;
select * from Schueler;
select * from Lehrer;
select * from Klasse;

drop database schoolDB