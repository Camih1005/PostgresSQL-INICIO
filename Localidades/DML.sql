-- Pais

INSERT INTO pais(id,nombre) values(1,'Colombia');
-- Departmentos 



INSERT INTO departamento (id, nombre) VALUES
('05', 'ANTIOQUIA'),
('08', 'ATLANTICO'),
('11', 'BOGOTA'),
('13', 'BOLIVAR'),
('15', 'BOYACA'),
('17', 'CALDAS'),
('18', 'CAQUETA'),
('19', 'CAUCA'),
('20', 'CESAR'),
('23', 'CORDObA'),
('25', 'CUNDINAMARCA'),
('27', 'CHOCO'),
('41', 'HUILA'),
('44', 'LA GUAJIRA'),
('47', 'MAGDALENA'),
('50', 'META'),
('52', 'NARIÑO'),
('54', 'N. DE SANTANDER'),
('63', 'QUINDIO'),
('66', 'RISARALDA'),
('68', 'SANTANDER'),
('70', 'SUCRE'),
('73', 'TOLIMA'),
('76', 'VALLE DEL CAUCA'),
('81', 'ARAUCA'),
('85', 'CASANARE'),
('86', 'PUTUMAYO'),
('88', 'SAN ANDRES'),
('91', 'AMAZONAS'),
('94', 'GUAINIA'),
('95', 'GUAVIARE'),
('97', 'VAUPES'),
('99', 'VICHADA');

\COPY localidades (idDepartamento, nombreDepartamento, idMunicipio, nombreMunicipio)
FROM '/home/camper/Escritorio/PostgresSQL-INICIO/Localidades/localidadesCSV.csv'
DELIMITER ','
CSV HEADER
QUOTE '"';

insert into departamento (id,nombre,idPais)
select DISTINCT idDepartamento,nombreDepartamento,1 from localidades;


insert into municipio (numeroOrig,nombre,idDepartamento)
select idMunicipio,nombreMunicipio,idDepartamento from localidades;




