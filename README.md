# PostgresSQL README

## listar base de datos = \l 
<pre>postgres=# \l
                              List of databases
   Name    |  Owner   | Encoding | Collate |  Ctype  |   Access privileges   
-----------+----------+----------+---------+---------+-----------------------
 college   | postgres | UTF8     | C.UTF-8 | C.UTF-8 | 
 postgres  | postgres | UTF8     | C.UTF-8 | C.UTF-8 | 
 template0 | postgres | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +
           |          |          |         |         | postgres=CTc/postgres
 template1 | postgres | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +
           |          |          |         |         | postgres=CTc/postgres
(4 rows)
</pre>

### Creando type enum de GENERO:

 CREATE TYPE genero as enum ('hombre','mujer','homosexual');



### Creando tabla persona para usar el typo de enum genero

CREATE TABLE persona(
id serial primary key,
nombre varchar(100) not null,
tipo_genero genero
);

### Agregar datos a una tabla
INSERT INTO persona VALUES (1,'Camilo', 'hombre');

### Hacer un select

<pre>select nombre,tipo_genero from persona;
 nombre | tipo_genero 
--------+-------------
 Camilo | hombre
(1 row)
</pre>

# DATOS IMPORTANTES !!!

### alterar primary key:
-- ALTER TABLE empleados ADD PRIMARY KEY (id);










