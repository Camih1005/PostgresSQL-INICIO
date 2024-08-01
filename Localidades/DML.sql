-- insertPais

INSERT INTO pais(id,nombre) values(1,'Colombia');


\COPY localidades (idDepartamento, nombreDepartamento, idMunicipio, nombreMunicipio)
FROM '/home/camper/Escritorio/PostgresSQL-INICIO/Localidades/localidadesCSV.csv'
DELIMITER ','
CSV HEADER
QUOTE '"';

insert into departamento (id,nombre,idPais)
select DISTINCT idDepartamento,nombreDepartamento,1 from localidades;


insert into municipio (numeroOrig,nombre,idDepartamento)
select idMunicipio,nombreMunicipio,idDepartamento from localidades;




