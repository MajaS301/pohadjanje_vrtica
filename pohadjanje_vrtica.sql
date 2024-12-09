use master
go
drop database if exists pohađanje_Vrtića;
go
create database pohađanje_Vrtića;
go
use pohađanje_Vrtića;
go

create table skupine(
šifra int not null primary key identity(1,1),
naziv varchar(20) not null,
prostorija varchar(20)
);

create table tete(
šifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
broj_mobitela varchar(20),
oib char(11)
);

create table podskupine(
šifra int not null primary key identity(1,1),
naziv varchar(50) not null,
skupina int not null references skupine(šifra),
teta int not null references tete(šifra)
);


create table djeca(
šifra int not null primary key identity(1,1),
podskupina int not null references podskupine(šifra),
ime varchar(20) not null,
prezime varchar(20) not null,
spol bit not null,
datum_rođenja date not null,
kontakt_roditelja varchar (20) not null
);


insert into skupine (naziv, prostorija) values
('Linići' , 'soba 906'),
('Točkice' , 'soba 129');

