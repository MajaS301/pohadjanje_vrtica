use master
go
drop database if exists pohadjanje_vrtica;
go
create database pohadjanje_Vrtica;
go
use pohadjanje_Vrtica;
go

create table skupine(
sifra int not null identity(1,1),
naziv varchar(20) not null primary key,
prostorija varchar(20)
);

create table podskupine(
sifra int not null identity(1,1),
naziv varchar(50) not null primary key,
skupina varchar(20) not null references skupine(naziv),
teta varchar(50) not null
);

create table tete(
sifra int not null identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
broj_mobitela varchar(20),
oib char(11)
);

create table djeca(
sifra int not null identity(1,1),
podskupina varchar(50) not null references podskupine(naziv),
ime varchar(20) not null primary key,
prezime varchar(20) not null,
spol varchar (6) not null,
datum_rodjenja date not null,
kontakt_roditelja varchar (20) not null
);


create table roditelji(
sifra int not null identity(1,1),
ime varchar(20) not null,
prezime varchar(20) not null,
djeca varchar(20) not null references djeca(ime),
broj_mobitela varchar(20),
email varchar(50)
);