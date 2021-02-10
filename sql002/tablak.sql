create table versenyzok (
    az int not null,
    nev varchar(50),
    telepules varchar(50),
    szuletes date
);

create table versenyek (
    az int not null primary key auto_increment,
    helyszin varchar(50),
    datum date,
    helyezes int,
    versenyzoAz int
);