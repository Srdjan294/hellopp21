drop database if exists movieshare;
create database movieshare;
use movieshare;

create table film(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    zanr int,
    ime_redatelja varchar(50),
    glavni_glumac varchar(50),
    trajanje int,
    dobavljac int
);

create table zanr(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    opis text
);

create table dobavljac(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    homepage varchar(50)
);

create table gledanje(
    sifra int not null primary key auto_increment,
    film int,
    korisnicki_racun int,
    korisnik int
);

create table korisnicki_racun(
    sifra int not null primary key auto_increment,
    korisnik int,
    preporuka varchar(50),
    povijest_gledanja varchar(50)
);

create table korisnik(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    datum_rodenja datetime,
    korisnicko_ime varchar(50),
    adresa varchar(50),
    email varchar(50),
    broj_mobitela varchar(20)
);

alter table film add foreign key (zanr) references zanr(sifra);
alter table film add foreign key (dobavljac) references dobavljac(sifra);

alter table gledanje add foreign key (film) references film(sifra);
alter table gledanje add foreign key (korisnicki_racun) references korisnicki_racun(sifra);
alter table gledanje add foreign key (korisnik) references korisnik(sifra);

alter table korisnicki_racun add foreign key (korisnik) references korisnik(sifra);