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

### Añadir PRIMARY KEY

ALTER TABLE empleados ADD PRIMARY KEY (id);

### Añadir FOREIGN KEY

ALTER TABLE empleados ADD CONSTRAINT fk_departamento
FOREIGN KEY (departamento_id) REFERENCES departamentos(id);

### Añadir NOT NULL
ALTER TABLE empleados ALTER COLUMN nombre SET NOT NULL;

### Añadir CHECK
ALTER TABLE empleados ADD CONSTRAINT check_edad CHECK (edad > 0);

# FECHAS !!!

### Para obtener la fecha actual (solo AÑO/MES/DIA)
SELECT CURRENT_DATE;

### Para obtener la hora actual
SELECT CURRENT_TIME;

### Para la fecha y hora a la vez
SELECT CURRENT_TIMESTAMP;

# SUPER IMPORTANTE (DIFERENCIAS ENTRE FECHAS):
<pre>SELECT AGE(&apos;2024-07-01&apos;, &apos;2024-06-01&apos;);
  age  
-------
 1 mon
(1 row)

</pre>

##### SELECT AGE('2024-07-01', '2024-06-01');



















