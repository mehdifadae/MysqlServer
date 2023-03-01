create database if not exists schuleDB;

use schuleDB;

#Create Table 

#Creat lehre table erst weil hat keine fremd schlussel

create table if not exists lehrer
(id integer not null auto_increment,
primary key(id),
Nachname varchar(35),
Vorname varchar (35)
);

#Create Klasse 
#klasse hat eine Fremdschlüssel zum lehrer
#deswegen muss nach table lehrer hergestelt wird

create table if not exists schueler
(id integer not null auto_increment,
primary key (id),
Vorname varchar(35),
Nachname varchar (35),
Strasse varchar (50),
PLZ varchar (8),
ort varchar(15),
Telefon varchar(15),
Geburtsdatum varchar(45)
);

create table if not exists klasse
(id integer not null auto_increment,
primary key (id),
Kürzel varchar (8),
beschreibung varchar (35),
id_lehrer integer,
foreign key (id_lehrer) references lehrer(id)
);


#wegen der 1:1 Beziehung klasse hat einen Klassensprecher

alter table klasse
add id_Klassensprecher integer,
add constraint id_schueler_fk
foreign key (id_klassensprecher) references schueler(id);

#mitschueler sollte abgebildet werden
alter table schueler
add id_klasse integer,
add constraint id_klasse_fk
foreign key (id_klasse) references klasse(id);

#Beziehungstabelle unterichtet
create table unterrichtet
(id_lehrer integer,
id_klasse integer,
foreign key (id_lehrer) references lehrer(id),
foreign key (id_klasse) references klasse(id),
primary key (id_lehrer, id_klasse)
);

#Insert Data In Table
insert into lehrer ( Nachname, Vorname)
values ("Moll", "Willi"),
("Kurp", "August");

insert into klasse (Kürzel, Beschreibung)
values ("BG", "Berufsgrundschuljahr"),
("IF", "TA-Informationtechnik"),
("FO13", "Fachoberschule KL.13");


insert into schueler(id, Vorname, Nachname, Strasse, PLZ, ort, Telefon, Geburtsdatum)
values (1, "Uwe", "Ernst", "Weg1", 51111, "Köln", 98765, "1996.05.05"),
(2, "Kai", "Müller", "Strasse 2", 89077, "Ulm", 87654, "1994.08.12"),
(3, "Eva", "Specht", "Pfad 15", 11111, "Berlin", 76543, "1993.06.08"),
(4, "Ute", "Gross", "Alle 9", 24103, "Kiel", 45678, "1995.05.07");

#Show Data
select * from Lehrer;
select * from Klasse;
select * from schueler;