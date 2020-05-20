select * from mjesto 
where sifra=2;

select naziv, postanskiBroj from mjesto 
where sifra=2;

select postanskiBroj, 'fiksni tekst', length (naziv) from mjesto 
where sifra=2;

select postanskiBroj as 'Poštanski broj',
length (naziv) as 'Broj znakova u nazivu mjesta' from mjesto 
where sifra=2;


select sifra, ime, prezime, datumRodenja from autor 
where sifra=2;

select naziv, aktivan from izdavac 
where sifra=2;


select naziv, postanskiBroj from mjesto 
where sifra>2 and postanskiBroj is null;

select naziv, postanskiBroj from mjesto 
where not(sifra>2 and postanskiBroj is not null);

select ime, prezime from autor 
where sifra!=2 and datumRodenja between '1980-01-01' and '1980-02-01';

select ime, prezime from autor 
where (sifra>=2 and sifra<=4) or (sifra>15452 and sifra<15460);

select naziv from izdavac 
where sifra in (414,490,696);

select naziv from izdavac 
where naziv like 'a%';

select naziv from izdavac 
where naziv like '%nt';

select naziv from izdavac 
where naziv like 'a%k';

select naziv from izdavac 
where naziv like '%obrt%';

#Izlistajte sva imena i prezimena autora

select ime, prezime from autor;

#Izlistajte sve naslove knjiga u katologu koje u sebi sadrže niz znakova LJUB

select naslov from katalog 
where naslov like '%LJUB%';

#Izlistajte sva mjesta koja imaju definiran poštanski broj

select naziv from mjesto 
where postanskibroj is not null;

#Izlistajte nazive mjesta čija šifra nije između 2000 i 3000

select naziv from mjesto 
where sifra not between 2000 and 3000;

#Postoji li u Hrvatsko mjesto koje počinje s slovom Y?

select naziv from mjesto 
where naziv like 'Y%';

#Koliko je autora rođeno 7. prosinca 1980?

select ime, prezime from autor 
where datumRodenja like '1980-12-07';

#Izlistajte sve aktivne izdavače čiji naziv završava s znakom . (točka)

select naziv from izdavac 
where naziv like '%.';

#Izlistajte sve neaktivne izdavače koji nemaju šifre 346, 234, 589

select naziv from izdavac 
where aktivan=0 and sifra not in (346,234,589);

#Izlistajte sve kataložne zapise čija je šifra veća od 3000 ili naslov u sebi sadrži riječ ljubav

select naslov from katalog 
where sifra>3000 or naslov like '%ljubav%';


select distinct length(ime) from autor;

select sifra from autor 
where ime='August' and prezime like '%enoa';

select naslov from katalog 
where autor=2;


select b.naslov
from autor a inner join katalog b 
on a.sifra=b.autor
where 
a.ime='August' and a.prezime='Šenoa';


select b.naslov, d.naziv
from autor a
inner join katalog b on a.sifra=b.autor 
inner join izdavac c on b.izdavac=c.sifra 
inner join mjesto d on b.mjesto=d.sifra
where 
a.datumRodenja between '1976-01-01' and '1976-12-31' 
and c.aktivan=1;