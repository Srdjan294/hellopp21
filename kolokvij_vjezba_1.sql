drop database if exists kolokvij_vjezba_1;
create database kolokvij_vjezba_1;
use kolokvij_vjezba_1;

create table punac(
    sifra int not null primary key auto_increment,
    ogrlica int,
    gustoca decimal(14,9),
    hlace varchar(41) not null
);

create table cura(
    sifra int not null primary key auto_increment,
    novcica decimal(16,5) not null,
    gustoca decimal(18,6) not null,
    lipa decimal(13,10),
    ogrlica int not null,
    bojakose varchar(38),
    suknja varchar(36),
    punac int
);

create table sestra(
    sifra int not null primary key auto_increment,
    introvertno boolean,
    haljina varchar(31),
    maraka decimal(16,6),
    hlace varchar(46) not null,
    narukvica int not null
);

create table zena(
    sifra int not null primary key auto_increment,
    treciputa datetime,
    hlace varchar(46),
    kratkamajica varchar(31) not null,
    jmbag char(11) not null,
    bojaociju varchar(39) not null,
    haljina varchar(44),
    sestra int not null
);

create table muskarac(
    sifra int not null primary key auto_increment,
    bojaociju varchar(50) not null,
    hlace varchar(30),
    modelnaocala varchar(43),
    maraka decimal(14,5) not null,
    zena int not null
);

create table mladic(
    sifra int not null primary key auto_increment,
    suknja varchar(50) not null,
    kuna decimal(16,8) not null,
    drugiputa datetime,
    asocijalno boolean,
    ekstroventno boolean not null,
    dukserica varchar(48) not null,
    muskarac int 
);

create table svekar(
    sifra int not null primary key auto_increment,
    bojaociju varchar(40) not null,
    prstena int,
    dukserica varchar(41),
    lipa decimal(13,8),
    eura decimal(12,7),
    majica varchar(35)
);

create table sestra_svekar(
    sifra int not null primary key auto_increment,
    sestra int not null,
    svekar int not null
);

alter table cura add foreign key (punac) references punac(sifra);

alter table sestra_svekar add foreign key (svekar) references svekar(sifra);
alter table sestra_svekar add foreign key (sestra) references sestra(sifra);

alter table zena add foreign key (sestra) references sestra(sifra);

alter table muskarac add foreign key (zena) references zena(sifra);

alter table mladic add foreign key (muskarac) references muskarac(sifra);

#1. U tablice muskarac, zena i sestra_svekar unesite po 3 retka. (7)

#describe muskarac;
#describe zena;
#describe sestra;
#describe svekar;
#describe sestra_svekar;

insert into sestra (introvertno,haljina,maraka,hlace,narukvica) values
(1,'plava',21.22,'crne',1),
(1,'žuta',12.11,'bijele',2),
(1,'crvena',13.22,'zelene',3);

select * from sestra;

insert into zena (treciputa,hlace,kratkamajica,jmbag,bojaociju,haljina,sestra) values
('2020-03-01','crne','ana','11111111111','smeđa','kratka',1),
('2020-02-01','bijele','crna','22222222222','zelena','duga',2),
('2020-03-02','ljubičaste','crvena','33333333333','plave','srednja',3);

select * from zena;

insert into muskarac (bojaociju,hlace,modelnaocala,maraka,zena) values
('smeđa','kratke','okrugle',12.11,1),
('plava','duge','rayban',31.22,2),
('zelena','srednje','crne',11.22,3);

select * from muskarac;

insert into svekar (bojaociju,prstena,dukserica,lipa,eura,majica) values
('smeđa',1,'ljetna',12.11,21.11,'crvena'),
('plava',2,'zimska',11.31,21.22,'zelena'),
('zelena',3,'jesenska',31.21,43.21,'žuta');

select * from svekar;

insert into sestra_svekar (sestra,svekar) values
(1,1),(2,2),(3,3);

select * from sestra_svekar;

#2. U tablici cura postavite svim zapisima kolonu gustoca na vrijednost 15,77. (4)

#describe cura;

insert into cura (novcica,gustoca,ogrlica) values
(11.11,2.1,1),(22.11,3.1,2),(22.22,2.3,3);

update cura set gustoca=15.77;

select * from cura;

#3. U tablici mladic obrišite sve zapise čija je vrijednost kolone kuna veće od 15,78. (4)
#describe mladic;
insert into mladic (suknja,kuna,ekstroventno,dukserica) values
('crvena',11.22,1,'bijela'),
('crna',20.22,1,'crna'),
('bijela',31.12,1,'zelena');

delete from mladic where kuna>15.78;

select * from mladic;

#4. Izlistajte kratkamajica iz tablice zena uz uvjet da vrijednost kolone hlace sadrže slova ana. (6)

select kratkamajica from zena where hlace='ana';

#5. Prikažite dukserica iz tablice svekar, asocijalno iz tablice mladic te hlace iz tablice muskarac
#uz uvjet da su vrijednosti kolone hlace iz tablice zena počinju slovom a te da su vrijednosti kolone haljina
#iz tablice sestra sadrže niz znakova ba. Podatke posložite po hlace iz tablice muskarac silazno. (10)

select f.dukserica, a.asocijalno, b.hlace
from mladic a inner join muskarac b on a.muskarac=b.sifra 
inner join zena c on b.zena=c.sifra 
inner join sestra d on c.sestra=d.sifra 
inner join sestra_svekar e on d.sifra=e.sestra 
inner join svekar f on e.svekar=f.sifra 
where c.hlace='a%' and d.haljina='%ba%'
order by b.hlace desc;

#6. Prikažite kolone haljina i maraka iz tablice sestra čiji se primarni ključ ne nalaze u tablici sestra_svekar. (5)

select a.haljina, a.maraka 
from sestra a left join sestra_svekar b on a.sifra=b.sestra 
where b.sestra is null;
