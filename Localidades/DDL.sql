create database world;

\c world

create table pais(
id serial primary key,
nombre varchar(100) not null
);

create table departamento(
id integer primary key,
nombre varchar(100) not null,
idPais integer default 1,
CONSTRAINT fk_pais FOREIGN KEY (idPais) REFERENCES
pais(id)
);

create table municipio(
id serial primary key,
numeroOrig integer,
nombre varchar(100) not null,
idDepartamento integer,
CONSTRAINT fk_departamento FOREIGN KEY (idDepartamento) REFERENCES
departamento(id)
);

create table localidades(
idDepartamento integer,
nombreDepartamento varchar(100),
idMunicipio integer,
nombreMunicipio varchar(100)
);

