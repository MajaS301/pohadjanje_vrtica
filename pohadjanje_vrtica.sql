use master
go
drop database if exists pohadjanje_Vrtica;
go
create database pohadjanje_Vrtica;
go
use pohadjanje_Vrtica;
go

create table skupine(
sifra int not null primary key identity(1,1),
naziv varchar(20) not null,
prostorija varchar(20)
);

create table tete(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
broj_mobitela varchar(20),
oib char(11)
);

create table podskupine(
sifra int not null primary key identity(1,1),
naziv varchar(50) not null,
skupina int not null references skupine(sifra),
teta int not null references tete(sifra)
);


create table djeca(
sifra int not null primary key identity(1,1),
podskupina int not null references podskupine(sifra),
ime varchar(20) not null,
prezime varchar(20) not null,
spol bit not null,
datum_rodjenja date not null,
kontakt_roditelja varchar (20) not null
);