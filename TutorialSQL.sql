-- Creando base de datos 
Create DataBase TutorialSQL

-- usar 
Use TutorialSQL 
Go 

--2 - Crear una tabla (create table - sp_tables - sp_columns - drop table)
-- Problema resuelto 
if object_id('usuarios') is not null
drop table usuarios;

create table usuarios (
nombre varchar(30),
clave varchar(10)
);

sp_tables @table_owner='dbo';

sp_columns usuarios;

create table usuarios (
nombre varchar(30),
clave varchar(10)
);

drop table usuarios;

sp_tables @table_owner='dbo';

-- primer problema 
if object_id('agenda') is not null
drop table agenda;

create table /agenda
(
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)
);

create table agenda
(
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)
);

create table agenda
(
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)
);

exec sp_tables @table_owner='dbo';

exec sp_columns agenda;

drop table agenda;
drop table agenda;

-- segundo problema
if object_id('libros') is not null
drop table libros;

exec sp_tables @table_owner='dbo';

create table libros(
titulo varchar(20),
autor varchar(30),
editorial varchar(15)
);

create table libros(
titulo varchar(20),
autor varchar(30),
editorial varchar(15)
);

exec sp_tables @table_owner='dbo';
exec sp_columns libros;
drop table libros;
drop table libros;

--3 - Insertar y recuperar registros de una tabla (insert into - select)

-- problema resuelto 

if object_id('usuarios') is not null
drop table usuarios;

create table usuarios(
nombre varchar(30),
clave varchar(10)
);

insert into usuarios (nombre, clave) values ('Mariano','payaso');
select * from usuarios;

insert into usuarios (clave, nombre) values ('River','Juan');
select * from usuarios;

insert into usuarios (nombre,clave) values ('Boca','Luis');
select * from usuarios;

-- primer problema

if object_id('agenda') is not null
drop table agenda;

create table agenda(
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)
);

exec sp_tables @table_owner='dbo';

exec sp_columns agenda;

insert into agenda (apellido, nombre, domicilio, telefono)
values ('Moreno','Alberto','Colon 123','4234567');
insert into agenda (apellido,nombre, domicilio, telefono)
values ('Torres','Juan','Avellaneda 135','4458787');

select * from agenda;
drop table agenda;

drop table agenda;

-- segundo problema 

if object_id('libros') is not null
drop table libros;

create table libros (
titulo varchar(20),
autor varchar(30),
editorial varchar(15)
);

exec sp_tables @table_owner='dbo';

exec sp_columns libros;

insert into libros (titulo,autor,editorial)
values ('El aleph','Borges','Planeta');
insert into libros (titulo,autor,editorial) 
values ('Martin Fierro','Jose Hernandez','Emece');
insert into libros (titulo,autor,editorial)
values ('Aprenda PHP','Mario Molina','Emece');

select * from libros;

-- 4 - Tipos de datos básicos

-- problema resuelto 

if object_id('libros') is not null
drop table libros;

create table libros(
titulo varchar(20),
autor varchar(15),
editorial varchar(10),
precio float,
cantidad integer
);

exec sp_columns libros;

insert into libros (titulo,autor,editorial,precio,cantidad)
values ('El aleph','Borges','Emece',25.50,100);
insert into libros (titulo,autor,editorial,precio,cantidad)
values ('Matematica estas ahi','Paenza','Siglo XXI',18.8,200);

select * from libros;

insert into libros (titulo,autor,editorial,precio,cantidad)
values ('Alicia en el pais de las maravillas','Lewis Carroll','Atlantida',10,200);

insert into libros (titulo,autor,editorial,precio,cantidad)
values ('Alicia en el pais','Lewis Carroll','Atlantida',10,200);

select * from libros;

-- primer problema 

if object_id('peliculas')is not null
drop table peliculas;

create table peliculas(
nombre varchar(20),
actor varchar(20),
duracion integer,
cantidad integer
);

exec sp_columns peliculas;

insert into peliculas (nombre, actor, duracion, cantidad)
values ('Mision imposible','Tom Cruise',128,3);
insert into peliculas (nombre, actor, duracion, cantidad)
values ('Mision imposible 2','Tom Cruise',130,2);
insert into peliculas (nombre, actor, duracion, cantidad)
values ('Mujer bonita','Julia Roberts',118,3);
insert into peliculas (nombre, actor, duracion, cantidad)
values ('Elsa y Fred','China Zorrilla',110,2);

select * from peliculas;

-- segundo problema 

if object_id('empleados') is not null
drop table empleados;

create table empleados(
nombre varchar(20),
documento varchar(8),
sexo varchar(1),
domicilio varchar(30),
sueldobasico float
);

exec sp_columns empleados;

insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
values ('Juan Perez','22333444','m','Sarmiento 123',500);
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
values ('Ana Acosta','24555666','f','Colon 134',650);
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
values ('Bartolome Barrios','27888999','m','Urquiza 479',800);

select * from empleados;

-- 5 - Recuperar algunos campos (select)

-- problema resuelto

if object_id('libros') is not null
drop table libros;

create table libros(
titulo varchar(40),
autor varchar(30),
editorial varchar(15),
precio float,
cantidad integer
);

exec sp_columns libros;

insert into libros (titulo,autor,editorial,precio,cantidad)
values ('El aleph','Borges','Emece',25.50,100);
insert into libros (titulo,autor,editorial,precio,cantidad)
values ('Alicia en el pais de las maravillas','Lewis Carroll','Atlantida',10,200);
insert into libros (titulo,autor,editorial,precio,cantidad)
values ('Matematica estas ahi','Paenza','Siglo XXI',18.8,200);

select * from libros;

select titulo,autor,editorial from libros; 

select titulo,precio from libros;

select editorial,cantidad from libros; 


-- primer problema 

if object_id('peliculas') is not null
drop table peliculas;

create table peliculas(
titulo varchar(20),
actor varchar(20),
duracion integer,
cantidad integer
);

exec sp_columns peliculas;

insert into peliculas (titulo, actor, duracion, cantidad)
values ('Mision imposible','Tom Cruise',180,3);
insert into peliculas (titulo, actor, duracion, cantidad)
values ('Mision imposible 2','Tom Cruise',190,2);
insert into peliculas (titulo, actor, duracion, cantidad)
values ('Mujer bonita','Julia Roberts',118,3);
insert into peliculas (titulo, actor, duracion, cantidad)
values ('Elsa y Fred','China Zorrilla',110,2);

select titulo,actor from peliculas;

select titulo,duracion from peliculas;

select titulo,cantidad from peliculas;

-- segundo problema

if object_id('empleados') is not null
drop table empleados;

create table empleados(
nombre varchar(20),
documento varchar(8), 
sexo varchar(1),
domicilio varchar(30),
sueldobasico float
);

exec sp_columns empleados;

insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
values ('Juan Juarez','22333444','m','Sarmiento 123',500);
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
values ('Ana Acosta','27888999','f','Colon 134',700);
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
values ('Carlos Caseres','31222333','m','Urquiza 479',850);

select * from empleados;

select nombre,documento,domicilio from empleados;

select documento,sexo,sueldobasico from empleados;

-- 6 - Recuperar algunos registros (where)

-- problema resuelto

if object_id('usuarios') is not null
drop table usuarios;

create table usuarios (
nombre varchar(30),
clave varchar(10)
);

exec sp_columns usuarios;

insert into usuarios (nombre, clave)
values ('Marcelo','Boca');
insert into usuarios (nombre, clave)
values ('JuanPerez','Juancito');
insert into usuarios (nombre, clave)
values ('Susana','River');
insert into usuarios (nombre, clave)
values ('Luis','River');

select *from usuarios
where nombre='Leonardo';

select nombre from usuarios
where clave='River';

select nombre from usuarios
where clave='Santi';

-- primer problema

if object_id('agenda') is not null
drop table agenda;

create table agenda (
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)
);

exec sp_columns agenda;

insert into agenda(apellido,nombre,domicilio,telefono) values
('Acosta', 'Ana', 'Colon 123', '4234567');

insert into agenda(apellido,nombre,domicilio,telefono) values
('Bustamante', 'Betina', 'Avellaneda 135', '4458787');

insert into agenda(apellido,nombre,domicilio,telefono) values
('Lopez', 'Hector', 'Salta 545', '4887788'); 
insert into agenda(apellido,nombre,domicilio,telefono) values
('Lopez', 'Luis', 'Urquiza 333', '4545454');
insert into agenda(apellido,nombre,domicilio,telefono) values
('Lopez', 'Marisa', 'Urquiza 333', '4545454');

select * from agenda;

select * from agenda
where nombre='Marisa';

select nombre,domicilio from agenda
where apellido='Lopez';

select nombre from agenda
where telefono='4545454';

-- segundo problema

if object_id('libros') is not null
drop table libros;

create table libros (
titulo varchar(20),
autor varchar(30),
editorial varchar(15)
);

exec sp_columns libros;

insert into libros(titulo,autor,editorial) values
('El aleph','Borges','Emece');
insert into libros(titulo,autor,editorial) values
('Martin Fierro','Jose Hernandez','Emece');
insert into libros(titulo,autor,editorial) values
('Martin Fierro','Jose Hernandez','Planeta');
insert into libros(titulo,autor,editorial) values
('Aprenda PHP','Mario Molina','Siglo XXI');

select * from libros
where autor='Borges';

select titulo from libros
where editorial='Emece';

select editorial from libros
where titulo='Martin Fierro';

-- 7- Operadores relacionales

-- problema resuelto

if object_id('libros') is not null
drop table libros;

create table libros(
titulo varchar(30),
autor varchar(30),
editorial varchar(15),
precio float
);

insert into libros (titulo,autor,editorial,precio)
values ('El aleph','Borges','Emece',24.50);
insert into libros (titulo,autor,editorial,precio)
values ('Martin Fierro','Jose Hernandez','Emece',16.00);
insert into libros (titulo,autor,editorial,precio)
values ('Aprenda PHP','Mario Molina','Emece',35.40);
insert into libros (titulo,autor,editorial,precio)
values ('Cervantes y el quijote','Borges','Paidos',50.90);

select * from libros
where autor<>'Borges';

select titulo,precio
from libros
where precio>20;

select * from libros
where precio<=30;

-- primer problema
if object_id('articulos') is not null
drop table articulos;

create table articulos(
codigo integer,
nombre varchar(20),
descripcion varchar(30),
precio float,
cantidad integer
);

exec sp_columns articulos;

insert into articulos (codigo, nombre, descripcion, precio,cantidad)
values (1,'impresora','Epson Stylus C45',400.80,20);
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
values (2,'impresora','Epson Stylus C85',500,30);
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
values (3,'monitor','Samsung 14',800,10);
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
values (4,'teclado','ingles Biswal',100,50);
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
values (5,'teclado','español Biswal',90,50);

select * from articulos
where nombre='impresora';

select * from articulos
where precio>=400;

select codigo,nombre
from articulos
where cantidad<30;

select nombre, descripcion
from articulos
where precio<>100;

-- segundo problema 

if object_id('peliculas') is not null
drop table peliculas;

create table peliculas(
titulo varchar(20),
actor varchar(20),
duracion integer,
cantidad integer
);

insert into peliculas (titulo, actor, duracion, cantidad)
values ('Mision imposible','Tom Cruise',120,3);
insert into peliculas (titulo, actor, duracion, cantidad)
values ('Mision imposible 2','Tom Cruise',180,4);
insert into peliculas (titulo, actor, duracion, cantidad)
values ('Mujer bonita','Julia R.',90,1);
insert into peliculas (titulo, actor, duracion, cantidad)
values ('Elsa y Fred','China Zorrilla',80,2);

select * from peliculas
where duracion<=90;

select * from peliculas
where actor<>'Tom Cruise';

select titulo,actor,cantidad
from peliculas
where cantidad >2;

-- 8 - Borrar registros (delete)

-- problema solucionado 

if object_id('usuarios') is not null
drop table usuarios;

create table usuarios(
nombre varchar(30),
clave varchar(10)
);

insert into usuarios (nombre,clave)
values ('Marcelo','River');
insert into usuarios (nombre,clave)
values ('Susana','chapita');
insert into usuarios (nombre,clave)
values ('CarlosFuentes','Boca');
insert into usuarios (nombre,clave)
values ('FedericoLopez','Boca');

select * from usuarios;

delete from usuarios
where nombre='Marcelo';

select * from usuarios;

delete from usuarios
where nombre='Marcelo';

select * from usuarios;

delete from usuarios
where clave='Boca';

select * from usuarios;

delete from usuarios;

select * from usuarios;

-- primer problema 

if object_id('agenda') is not null
drop table agenda;

create table agenda(
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)
);

insert into agenda (apellido,nombre,domicilio,telefono)
values('Alvarez','Alberto','Colon 123','4234567');
insert into agenda (apellido,nombre,domicilio,telefono)
values('Juarez','Juan','Avellaneda 135','4458787');
insert into agenda (apellido,nombre,domicilio,telefono)
values('Lopez','Maria','Urquiza 333','4545454');
insert into agenda (apellido,nombre,domicilio,telefono)
values('Lopez','Jose','Urquiza 333','4545454');
insert into agenda (apellido,nombre,domicilio,telefono)
values('Salas','Susana','Gral. Paz 1234','4123456');

delete from agenda
where nombre='Juan';

delete from agenda
where telefono='4545454';

select * from agenda;

delete from agenda;

select * from agenda;

-- segundo problema 

if object_id('articulos') is not null
drop table articulos;

create table articulos(
codigo integer,
nombre varchar(20),
descripcion varchar(30),
precio float,
cantidad integer
);

exec sp_columns articulos;

insert into articulos (codigo, nombre, descripcion, precio,cantidad)
values (1,'impresora','Epson Stylus C45',400.80,20);
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
values (2,'impresora','Epson Stylus C85',500,30);
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
values (3,'monitor','Samsung 14',800,10);
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
values (4,'teclado','ingles Biswal',100,50);
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
values (5,'teclado','español Biswal',90,50);

delete from articulos
where precio>=500;

select * from articulos;

delete from articulos
where nombre='impresora';

select * from articulos;

delete from articulos
where codigo<>4;

select * from articulos;

-- 9 - Actualizar registros (update)

-- problema solucionado 

if object_id('usuarios') is not null
drop table usuarios;

create table usuarios(
nombre varchar(20),
clave varchar(10)
);

insert into usuarios (nombre,clave)
values ('Marcelo','River');
insert into usuarios (nombre,clave)
values ('Susana','chapita');
insert into usuarios (nombre,clave)
values ('Carlosfuentes','Boca');
insert into usuarios (nombre,clave)
values ('Federicolopez','Boca');

update usuarios set clave='RealMadrid';

select * from usuarios;

update usuarios set clave='Boca'
where nombre='Federicolopez';

select * from usuarios;

update usuarios set clave='payaso'
where nombre='JuanaJuarez';

select * from usuarios;

update usuarios set nombre='Marceloduarte', clave='Marce'
where nombre='Marcelo';

select * from usuarios;

-- primer problema 

if object_id('agenda') is not null
drop table agenda;

create table agenda(
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)
);

insert into agenda (apellido,nombre,domicilio,telefono)
values ('Acosta','Alberto','Colon 123','4234567');
insert into agenda (apellido,nombre,domicilio,telefono)
values ('Juarez','Juan','Avellaneda 135','4458787');
insert into agenda (apellido,nombre,domicilio,telefono)
values ('Lopez','Maria','Urquiza 333','4545454');
insert into agenda (apellido,nombre,domicilio,telefono)
values ('Lopez','Jose','Urquiza 333','4545454');
insert into agenda (apellido,nombre,domicilio,telefono)
values ('Suarez','Susana','Gral. Paz 1234','4123456');

select * from agenda;

update agenda set nombre='Juan Jose'
where nombre='Juan';

select * from agenda;

update agenda set telefono='4445566'
where telefono='4545454';

select * from agenda;

update agenda set nombre='Juan Jose'
where nombre='Juan';

select * from agenda;

-- segundo problema 

if object_id('libros') is not null
drop table libros;

create table libros (
titulo varchar(30),
autor varchar(20),
editorial varchar(15),
precio float
);

insert into libros (titulo, autor, editorial, precio)
values ('El aleph','Borges','Emece',25.00);
insert into libros (titulo, autor, editorial, precio)
values ('Martin Fierro','Jose Hernandez','Planeta',35.50);
insert into libros (titulo, autor, editorial, precio)
values ('Aprenda PHP','Mario Molina','Emece',45.50);
insert into libros (titulo, autor, editorial, precio)
values ('Cervantes y el quijote','Borges','Emece',25);
insert into libros (titulo, autor, editorial, precio)
values ('Matematica estas ahi','Paenza','Siglo XXI',15);

select * from libros;

update libros set autor='Adrian Paenza'
where autor='Paenza';

select * from libros;

update libros set autor='Adrian Paenza'
where autor='Paenza';

select * from libros;

update libros set precio=27
where autor='Mario Molina';

select * from libros;

update libros set editorial='Emece S.A.'
where editorial='Emece';

select * from libros;

-- 10 - Comentarios

-- problema solucionado 

if object_id('libros') is not null
drop table libros;

create table libros(
titulo varchar(30),
autor varchar(20),
editorial varchar(15)
);

insert into libros (titulo,autor,editorial)
values ('El aleph','Borges','Emece');

select * from libros --mostramos los registros de libros; 

select titulo, autor 
/*mostramos títulos y
nombres de los autores*/
from libros;

-- 11 - Valores null (is null) 

-- problema solucionado 
if object_id('libros') is not null
drop table libros;

create table libros(
titulo varchar(30) not null,
autor varchar(30) not null,
editorial varchar(15) null,
precio float
);

insert into libros (titulo,autor,editorial,precio)
values('El aleph','Borges','Emece',null);

insert into libros (titulo,autor,editorial,precio)
values('Alicia en el pais','Lewis Carroll',null,0);

insert into libros (titulo,autor,editorial,precio)
values(null,'Borges','Siglo XXI',25);

exec sp_columns libros;

insert into libros (titulo,autor,editorial,precio)
values('Uno','Richard Bach','',18.50);

insert into libros (titulo,autor,editorial,precio)
values('','Richard Bach','Planeta',22);

select * from libros;

select * from libros
where precio is null;

select * from libros
where precio=0;

select * from libros
where editorial is null;

select * from libros
where editorial=''; 

select * from libros
where precio is not null;

-- primer problema 

if object_id('medicamentos') is not null
drop table medicamentos;

create table medicamentos(
codigo integer not null,
nombre varchar(20) not null,
laboratorio varchar(20),
precio float,
cantidad integer not null
);

exec sp_columns medicamentos;

insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
values(1,'Sertal gotas',null,null,100); 
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
values(2,'Sertal compuesto',null,8.90,150);
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
values(3,'Buscapina','Roche',null,200);

select * from medicamentos;

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
values(4,'Bayaspirina','',0,150);

insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
values(0,'','Bayer',15.60,0);

select * from medicamentos;

insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
values(null,'Amoxidal jarabe','Bayer',25,120);

select * from medicamentos
where laboratorio is null;

select * from medicamentos
where laboratorio='';

select * from medicamentos
where precio is null;

select * from medicamentos
where precio=0;

select * from medicamentos
where laboratorio<>'';

select * from medicamentos
where laboratorio is not null;

select * from medicamentos
where precio<>0;

select * from medicamentos
where precio is not null;

-- segundo problema 

if object_id('peliculas') is not null
drop table peliculas;

create table peliculas(
codigo int not null,
titulo varchar(40) not null,
actor varchar(20),
duracion int
);

exec sp_columns peliculas;

insert into peliculas (codigo,titulo,actor,duracion)
values(1,'Mision imposible','Tom Cruise',120);
insert into peliculas (codigo,titulo,actor,duracion)
values(2,'Harry Potter y la piedra filosofal',null,180);
insert into peliculas (codigo,titulo,actor,duracion)
values(3,'Harry Potter y la camara secreta','Daniel R.',null);
insert into peliculas (codigo,titulo,actor,duracion)
values(0,'Mision imposible 2','',150);
insert into peliculas (codigo,titulo,actor,duracion)
values(4,'','L. Di Caprio',220);
insert into peliculas (codigo,titulo,actor,duracion)
values(5,'Mujer bonita','R. Gere-J. Roberts',0);

select * from peliculas;

insert into peliculas (codigo,titulo,actor,duracion)
values(null,'Mujer bonita','R. Gere-J. Roberts',190);

select * from peliculas
where actor is null;

update peliculas set duracion=120 where duracion is null;

update peliculas set actor='Desconocido'
where actor='';

select * from peliculas;

delete from peliculas
where titulo='';

select * from peliculas;


-- 12 - Clave primaria

-- problema solucionado 

if object_id('usuarios') is not null
drop table usuarios;

create table usuarios(
nombre varchar(20),
clave varchar(10),
primary key(nombre)
);

exec sp_columns usuarios;

insert into usuarios (nombre, clave)
values ('juanperez','Boca');
insert into usuarios (nombre, clave)
values ('raulgarcia','River');

insert into usuarios (nombre, clave)
values ('juanperez','payaso');

insert into usuarios (nombre, clave)
values (null,'payaso');

update usuarios set nombre='juanperez'
where nombre='raulgarcia';

-- primer problema 

if object_id('libros') is not null
drop table libros;

create table libros(
codigo int not null,
titulo varchar(40) not null,
autor varchar(20),
editorial varchar(15),
primary key(codigo)
);

insert into libros (codigo,titulo,autor,editorial)
values (1,'El aleph','Borges','Emece');
insert into libros (codigo,titulo,autor,editorial)
values (2,'Martin Fierro','Jose Hernandez','Planeta');
insert into libros (codigo,titulo,autor,editorial)
values (3,'Aprenda PHP','Mario Molina','Nuevo Siglo');

insert into libros (codigo,titulo,autor,editorial)
values (2,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

insert into libros (codigo,titulo,autor,editorial)
values (null,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

update libros set codigo=1
where titulo='Martin Fierro';

-- segundo problema 

if object_id('alumnos') is not null
drop table alumnos;

create table alumnos(
legajo varchar(4) not null,
documento varchar(8),
nombre varchar(30),
domicilio varchar(30),
primary key(documento),
primary key(legajo)
);

create table alumnos(
legajo varchar(4) not null,
documento varchar(8),
nombre varchar(30),
domicilio varchar(30),
primary key(documento)
);

exec sp_columns alumnos;

insert into alumnos (legajo,documento,nombre,domicilio)
values('A233','22345345','Perez Mariana','Colon 234');
insert into alumnos (legajo,documento,nombre,domicilio)
values('A567','23545345','Morales Marcos','Avellaneda 348');

insert into alumnos (legajo,documento,nombre,domicilio)
values('A642','23545345','Gonzalez Analia','Caseros 444');

insert into alumnos (legajo,documento,nombre,domicilio)
values('A685',null,'Miranda Carmen','Uspallata 999');

-- 13 - Campo con atributo Identity

-- problema solucionado 

 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(15),
  precio float
 );

insert into libros (titulo,autor,editorial,precio)
values('El aleph','Borges','Emece',23);

select * from libros;

insert into libros (titulo,autor,editorial,precio)
values('Uno','Richard Bach','Planeta',18);
insert into libros (titulo,autor,editorial,precio)
values('Aprenda PHP','Mario Molina','Siglo XXI',45.60);
insert into libros (titulo,autor,editorial,precio)
values('Alicia en el pais de maravillas','Lewis Carroll','Paidos',15.50);

select * from libros;

insert into libros (codigo,titulo,autor,editorial,precio)
values(5,'Martin Fierro','Jose Hernandez','Paidos',25);

update libros set codigo=9
where titulo='Uno';

exec sp_columns libros;

delete from libros
where autor='Lewis Carroll';

insert into libros (titulo, autor, editorial, precio)
values('Martin Fierro','Jose Hernandez','Paidos',25); 

select * from libros;

-- primer problema 

if object_id('medicamentos') is not null
drop table medicamentos;

create table medicamentos(
codigo int identity,
nombre varchar(20) not null,
laboratorio varchar(20),
precio float,
cantidad integer
);

exec sp_columns medicamentos;

insert into medicamentos (nombre, laboratorio,precio,cantidad)
values('Sertal','Roche',5.2,100);
insert into medicamentos (nombre, laboratorio,precio,cantidad)
values('Buscapina','Roche',4.10,200);
insert into medicamentos (nombre, laboratorio,precio,cantidad)
values('Amoxidal 500','Bayer',15.60,100);

select * from medicamentos;

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
values(4,'Amoxilina 500','Bayer',15.60,100);

update medicamentos set codigo=5
where nombre='Bayaspirina';

delete from medicamentos
where codigo=3;

insert into medicamentos (nombre, laboratorio,precio,cantidad)
values('Amoxilina 500','Bayer',15.60,100);

select * from medicamentos;

-- segundo problema 

if object_id('peliculas') is not null
drop table peliculas;

create table peliculas(
codigo int identity,
titulo varchar(40),
actor varchar(20),
duracion int,
primary key(codigo)
);

exec sp_columns peliculas;

insert into peliculas (titulo,actor,duracion)
values('Mision imposible','Tom Cruise',120);
insert into peliculas (titulo,actor,duracion)
values('Harry Potter y la piedra filosofal','Daniel R.',180);
insert into peliculas (titulo,actor,duracion)
values('Harry Potter y la camara secreta','Daniel R.',190);
insert into peliculas (titulo,actor,duracion)
values('Mision imposible 2','Tom Cruise',120);
insert into peliculas (titulo,actor,duracion)
values('La vida es bella','zzz',220);

select * from peliculas;

update peliculas set codigo=7
where codigo=4;

delete from peliculas
where titulo='La vida es bella';

insert into peliculas (titulo,actor,duracion)
values('Elsa y Fred','China Zorrilla',90);

select * from peliculas;

-- 14 - Otras características del atributo Identity

-- problema solucionado 

if object_id('libros') is not null
drop table libros;

create table libros(
codigo int identity(100,2),
titulo varchar(20),
autor varchar(30),
precio float
);

insert into libros (titulo,autor,precio)
values('El aleph','Borges',23);
insert into libros (titulo,autor,precio)
values('Uno','Richard Bach',18);
insert into libros (titulo,autor,precio)
values('Aprenda PHP','Mario Molina',45.60);

select * from libros;

select ident_seed('libros');

insert into libros (codigo,titulo,autor,precio)
values(106,'Martin Fierro','Jose Hernandez',25);

set identity_insert libros on;

insert into libros (codigo,titulo,autor)
values (100,'Matematica estas ahi','Paenza');

insert into libros (codigo,titulo,autor)
values (1,'Ilusiones','Richard Bach');

insert into libros (titulo,autor)
values ('Uno','Richard Bach');

set identity_insert libros off;

insert into libros (codigo,titulo,autor)
values (300,'Uno','Richard Bach');

-- primer problema 

if object_id('medicamentos') is not null
drop table medicamentos;

create table medicamentos(
codigo integer identity(10,1),
nombre varchar(20) not null,
laboratorio varchar(20),
precio float,
cantidad integer
);

insert into medicamentos (nombre, laboratorio,precio,cantidad)
values('Sertal','Roche',5.2,100);
insert into medicamentos (nombre, laboratorio,precio,cantidad)
values('Buscapina','Roche',4.10,200);
insert into medicamentos (nombre, laboratorio,precio,cantidad)
values('Amoxidal 500','Bayer',15.60,100);

select * from medicamentos;

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
values(4,'Amoxilina 500','Bayer',15.60,100);

set identity_insert medicamentos on;

insert into medicamentos (nombre, laboratorio,precio,cantidad)
values('Amoxilina 500','Bayer',15.60,100);

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
values(10,'Amoxilina 500','Bayer',15.60,100);

select ident_seed('medicamentos');

select ident_incr('medicamentos');

-- segundo problema 

if object_id('peliculas') is not null
drop table peliculas;

create table peliculas(
codigo int identity (50,3),
titulo varchar(40),
actor varchar(20),
duracion int
);

insert into peliculas (titulo,actor,duracion)
values('Mision imposible','Tom Cruise',120);
insert into peliculas (titulo,actor,duracion)
values('Harry Potter y la piedra filosofal','Daniel R.',180);
insert into peliculas (titulo,actor,duracion)
values('Harry Potter y la camara secreta','Daniel R.',190);

select * from peliculas;

set identity_insert peliculas on;

insert into peliculas (codigo,titulo,actor,duracion)
values(20,'Mision imposible 2','Tom Cruise',120);

insert into peliculas (codigo, titulo,actor,duracion)
values(80,'La vida es bella','zzz',220);

select ident_seed('peliculas');

select ident_incr('peliculas');

insert into peliculas (titulo,actor,duracion)
values('Elsa y Fred','China Zorrilla',90);

set identity_insert peliculas off; 

insert into peliculas (titulo,actor,duracion)
values('Elsa y Fred','China Zorrilla',90);
select * from peliculas;

-- 16 - Truncate table

-- problema solucionado 

if object_id('libros') is not null
drop table libros;

create table libros(
codigo int identity,
titulo varchar(30),
autor varchar(20),
editorial varchar(15),
precio float
);

insert into libros (titulo,autor,editorial,precio)
values ('El aleph','Borges','Emece',25.60);
insert into libros (titulo,autor,editorial,precio)
values ('Uno','Richard Bach','Planeta',18);

select * from libros;

truncate table libros;

insert into libros (titulo,autor,editorial,precio)
values ('El aleph','Borges','Emece',25.60);
insert into libros (titulo,autor,editorial,precio)
values ('Uno','Richard Bach','Planeta',18);

select * from libros;

delete from libros;

insert into libros (titulo,autor,editorial,precio)
values ('El aleph','Borges','Emece',25.60);
insert into libros (titulo,autor,editorial,precio)
values ('Uno','Richard Bach','Planeta',18);

select * from libros;

-- primer problema 

if object_id('alumnos') is not null
drop table alumnos;

create table alumnos(
legajo int identity,
documento varchar(8),
nombre varchar(30),
domicilio varchar(30)
);

insert into alumnos (documento,nombre,domicilio)
values('22345345','Perez Mariana','Colon 234');
insert into alumnos (documento,nombre,domicilio)
values('23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (documento,nombre,domicilio)
values('24356345','Gonzalez Analia','Caseros 444');
insert into alumnos (documento,nombre,domicilio)
values('25666777','Torres Ramiro','Dinamarca 209');

delete from alumnos;

insert into alumnos (documento,nombre,domicilio)
values('22345345','Perez Mariana','Colon 234');
insert into alumnos (documento,nombre,domicilio)
values('23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (documento,nombre,domicilio)
values('24356345','Gonzalez Analia','Caseros 444');
insert into alumnos (documento,nombre,domicilio)
values('25666777','Torres Ramiro','Dinamarca 209');
select * from alumnos;

truncate table alumnos;

insert into alumnos (documento,nombre,domicilio)
values('22345345','Perez Mariana','Colon 234');
insert into alumnos (documento,nombre,domicilio)
values('23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (documento,nombre,domicilio)
values('24356345','Gonzalez Analia','Caseros 444');
insert into alumnos (documento,nombre,domicilio)
values('25666777','Torres Ramiro','Dinamarca 209');
select * from alumnos;

-- segundo problema 

if object_id('articulos') is not null
drop table articulos;

create table articulos(
codigo integer identity,
nombre varchar(20),
descripcion varchar(30),
precio float
);

insert into articulos (nombre, descripcion, precio)
values ('impresora','Epson Stylus C45',400.80);
insert into articulos (nombre, descripcion, precio)
values ('impresora','Epson Stylus C85',500);

truncate table articulos;

insert into articulos (nombre, descripcion, precio)
values ('monitor','Samsung 14',800);
insert into articulos (nombre, descripcion, precio)
values ('teclado','ingles Biswal',100);
insert into articulos (nombre, descripcion, precio)
values ('teclado','español Biswal',90);
select * from articulos;

delete from articulos;

insert into articulos (nombre, descripcion, precio)
values ('monitor','Samsung 14',800);
insert into articulos (nombre, descripcion, precio)
values ('teclado','ingles Biswal',100);
insert into articulos (nombre, descripcion, precio)
values ('teclado','español Biswal',90);
select * from articulos;

-- 17 - Otros tipos de datos en SQL Server



-- 18 - Tipo de dato (texto)

-- problema solucionado 
if object_id('visitantes') is not null
drop table visitantes;

create table visitantes(
nombre varchar(30),
edad integer,
sexo char(1),
domicilio varchar(30),
ciudad varchar(20),
telefono varchar(11)
);

insert into visitantes (nombre,edad,sexo,domicilio,ciudad,telefono)
values ('Juan Juarez',32,'masc','Avellaneda 789','Cordoba','4234567');

insert into visitantes (nombre,edad,sexo,domicilio,ciudad,telefono)
values ('Marcela Morales',43,'f','Colon 456','Cordoba',4567890);

select * from visitantes;

-- primer problema 
if object_id('clientes') is not null
drop table clientes;

create table clientes(
documento char(8),
apellido varchar(20),
nombre varchar(20),
domicilio varchar(30),
telefono varchar (11)
);

insert into clientes
values('2233344','Perez','Juan','Sarmiento 980','4342345');
insert into clientes (documento,apellido,nombre,domicilio)
values('2333344','Perez','Ana','Colon 234');
insert into clientes
values('2433344','Garcia','Luis','Avellaneda 1454','4558877');
insert into clientes
values('2533344','Juarez','Ana','Urquiza 444','4789900');

select * from clientes
where apellido='Perez';


-- segundo problema 

if object_id('clientes') is not null
drop table clientes;

create table clientes(
documento char(8),
apellido varchar(20),
nombre varchar(20),
domicilio varchar(30),
telefono varchar (11)
);

insert into clientes
values('2233344','Perez','Juan','Sarmiento 980','4342345');
insert into clientes (documento,apellido,nombre,domicilio)
values('2333344','Perez','Ana','Colon 234');
insert into clientes
values('2433344','Garcia','Luis','Avellaneda 1454','4558877');
insert into clientes
values('2533344','Juarez','Ana','Urquiza 444','4789900');

select * from clientes
where apellido='Perez';

-- 18 - Tipo de dato (numérico)

-- problema solucionado 

if object_id('libros') is not null
drop table libros;

create table libros(
codigo smallint identity,
titulo varchar(40) not null,
autor varchar(30),
editorial varchar(15),
precio smallmoney,
cantidad tinyint
);

insert into libros (titulo,autor,editorial,precio,cantidad)
values('El aleph','Borges','Emece',25.60,260);

insert into libros (titulo,autor,editorial,precio,cantidad)
values('El aleph','Borges','Emece',250000,100);

insert into libros (titulo,autor,editorial,precio,cantidad)
values('Uno','Richard Bach','Planeta','a50.30',100);

insert into libros (titulo,autor,editorial,precio,cantidad)
values('Uno','Richard Bach','Planeta',50.30,'100');

select * from libros;

-- primer problema 

if object_id('cuentas') is not null
drop table cuentas;

create table cuentas(
numero int not null,
documento char(8),
nombre varchar(30),
saldo money,
primary key (numero)
);

insert into cuentas(numero,documento,nombre,saldo)
values('1234','25666777','Pedro Perez',500000.60);
insert into cuentas(numero,documento,nombre,saldo)
values('2234','27888999','Juan Lopez',-250000);
insert into cuentas(numero,documento,nombre,saldo)
values('3344','27888999','Juan Lopez',4000.50);
insert into cuentas(numero,documento,nombre,saldo)
values('3346','32111222','Susana Molina',1000);

select * from cuentas
where saldo<4000;

select numero,saldo from cuentas
where nombre='Juan Lopez';

select * from cuentas
where saldo<0;

select * from cuentas
where numero>=3000;

-- segundo problema 

if object_id('empleados') is not null
drop table empleados;

create table empleados(
nombre varchar(30),
documento char(8),
sexo char(1),
domicilio varchar(30),
sueldobasico decimal(7,2),--máximo estimado 99999.99
cantidadhijos tinyint--no superará los 255
);

insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
values ('Juan Perez','22333444','m','Sarmiento 123',500,2);
insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
values ('Ana Acosta','24555666','f','Colon 134',850,0);
insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
values ('Bartolome Barrios','27888999','m','Urquiza 479',10000.80,4);

insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
values ('Susana Molina','29000555','f','Salta 876',800.888,3);

insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
values ('Marta Juarez','32444555','f','Sucre 1086',5000000,2);

select * from empleados
where sueldobasico>=900;

select * from empleados
where cantidadhijos>0;

-- 19 - Tipo de dato (fecha y hora)

-- problema solucionado 

if object_id('empleados') is not null
drop table empleados;

create table empleados(
nombre varchar(20),
documento char(8),
fechaingreso datetime
);

set dateformat dmy;

insert into empleados values('Ana Gomez','22222222','12-01-1980');
insert into empleados values('Bernardo Huerta','23333333','15-03-81');
insert into empleados values('Carla Juarez','24444444','20/05/1983');
insert into empleados values('Daniel Lopez','25555555','2.5.1990');

select * from empleados;

select * from empleados where fechaingreso<'01-01-1985';

update empleados set nombre='Maria Carla Juarez' where fechaingreso='20.5.83';

select * from empleados;

delete from empleados where fechaingreso<>'20/05/1983';

select * from empleados;

-- primer problema 

if object_id('alumnos') is not null
drop table alumnos;

create table alumnos(
apellido varchar(30),
nombre varchar(30),
documento char(8),
domicilio varchar(30),
fechaingreso datetime,
fechanacimiento datetime
);

set dateformat 'dmy';

insert into alumnos values('Gonzalez','Ana','22222222','Colon 123','10-08-1990','15/02/1972');

insert into alumnos values('Juarez','Bernardo','25555555','Sucre 456','03-03-1991','15/02/1972');

insert into alumnos values('Perez','Laura','26666666','Bulnes 345','03-03-91',null);

insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);

select * from alumnos where fechaingreso<'1-1-91';

select * from alumnos where fechanacimiento is null;

insert into alumnos values('Rosas','Romina','28888888','Avellaneda 487','03151990',null);

set dateformat 'mdy';

insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);


-- 20 - Ingresar algunos campos (insert into)

-- problema solucionado 

if object_id('libros') is not null
drop table libros;

create table libros(
codigo int identity,
titulo varchar(40) not null,
autor varchar(30),
editorial varchar(15)
);

insert into libros
values ('Uno','Richard Bach','Planeta');

insert into libros (titulo, autor)
values ('El aleph','Borges');

insert into libros (autor,editorial)
values ('Lewis Carroll','Planeta');

select * from libros;

-- primer problema 

if object_id('cuentas') is not null
drop table cuentas;

create table cuentas(
numero int identity,
documento char(8) not null,
nombre varchar(30),
saldo money
);

insert into cuentas
values (1,'25666777','Juan Perez',2500.50);

insert into cuentas
values ('25666777','Juan Perez',2500.50);

insert into cuentas (documento,saldo)
values ('28999777',-5500);

insert into cuentas (numero,documento,nombre,saldo)
values (5,'28999777','Luis Lopez',34000);

insert into cuentas (numero,documento,nombre)
values (3344,'28999777','Luis Lopez',34000);

insert into cuentas (nombre, saldo)
values ('Luis Lopez',34000);

select * from libros;

-- 21 - Valores por defecto (default)

-- problema solucionado 

if object_id('libros') is not null
drop table libros;

create table libros(
codigo int identity,
titulo varchar(40),
autor varchar(30) not null default 'Desconocido', 
editorial varchar(20),
precio decimal(5,2),
cantidad tinyint default 0
);

insert into libros (titulo,editorial,precio)
values('Java en 10 minutos','Paidos',50.40);

select * from libros;

insert into libros (titulo,editorial)
values('Aprenda PHP','Siglo XXI');
select * from libros;

exec sp_columns libros;

insert into libros (titulo,autor,precio,cantidad)
values ('El gato con botas',default,default,100);
select *from libros;

insert into libros default values;
select * from libros;

insert into libros (titulo,autor,cantidad)
values ('Alicia en el pais de las maravillas','Lewis Carroll',null);

-- primer problema 

if object_id('visitantes') is not null
drop table visitantes;

create table visitantes(
nombre varchar(30),
edad tinyint,
sexo char(1) default 'f',
domicilio varchar(30),
ciudad varchar(20) default 'Cordoba',
telefono varchar(11),
mail varchar(30) default 'no tiene',
montocompra decimal (6,2)
);

exec sp_columns visitantes;

insert into visitantes (nombre, domicilio, montocompra)
values ('Susana Molina','Colon 123',59.80);
insert into visitantes (nombre, edad, ciudad, mail)
values ('Marcos Torres',29,'Carlos Paz','marcostorres@hotmail.com');
select *from visitantes;

insert into visitantes
values ('Marcelo Morales',38,default,default,default,'4255232','marcelomorales@hotmail.com',default);

insert into visitantes default values;

select * from visitantes;

-- segundo problema 

if object_id('prestamos') is not null
drop table prestamos;

create table prestamos(
titulo varchar(40) not null,
documento char(8) not null,
fechaprestamo datetime not null,
fechadevolucion datetime,
devuelto char(1) default 'n'
);

insert into prestamos (titulo,documento,fechaprestamo,fechadevolucion)
values ('Manual de 1 grado','23456789','2006-12-15','2006-12-18');
insert into prestamos (titulo,documento,fechaprestamo)
values ('Alicia en el pais de las maravillas','23456789','2006-12-16');
insert into prestamos (titulo,documento,fechaprestamo,fechadevolucion)
values ('El aleph','22543987','2006-12-16','2006-08-19');
insert into prestamos (titulo,documento,fechaprestamo,devuelto)
values ('Manual de geografia 5 grado','25555666','2006-12-18','s');

select * from prestamos;

insert into prestamos
values('Manual de historia','32555666','2006-10-25',default,default);

select * from prestamos;

insert into prestamos default values;

-- 22 - Columnas calculadas (operadores aritméticos y de concatenación)

-- problema solucionado 

if object_id ('libros') is not null
drop table libros;

create table libros(
codigo int identity,
titulo varchar(40) not null,
autor varchar(20) default 'Desconocido',
editorial varchar(20),
precio decimal(6,2),
cantidad tinyint default 0,
primary key (codigo)
);

insert into libros (titulo,autor,editorial,precio)
values('El aleph','Borges','Emece',25);
insert into libros
values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
insert into libros (titulo,autor,editorial,precio,cantidad)
values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

select titulo, precio,cantidad,
precio*cantidad
from libros;

select titulo,precio,
precio-(precio*0.1)
from libros;

update libros set precio=precio-(precio*0.1);
select * from libros;

select titulo+'-'+autor+'-'+editorial
from libros;

-- primer problema 

if object_id ('libros') is not null
drop table libros;

create table libros(
codigo int identity,
titulo varchar(40) not null,
autor varchar(20) default 'Desconocido',
editorial varchar(20),
precio decimal(6,2),
cantidad tinyint default 0,
primary key (codigo)
);

insert into libros (titulo,autor,editorial,precio)
values('El aleph','Borges','Emece',25);
insert into libros
values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
insert into libros (titulo,autor,editorial,precio,cantidad)
values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

select titulo, precio,cantidad,
precio*cantidad
from libros;

select titulo,precio,
precio-(precio*0.1)
from libros;

update libros set precio=precio-(precio*0.1);
select * from libros;

select titulo+'-'+autor+'-'+editorial
from libros;

-- 23 - Alias
-- problema solucionado 

if object_id('agenda') is not null
drop table agenda;

create table agenda(
nombre varchar(30),
domicilio varchar(30),
telefono varchar(11)
);

insert into agenda
values('Juan Perez','Avellaneda 908','4252525');
insert into agenda
values('Marta Lopez','Sucre 34','4556688');
insert into agenda
values('Carlos Garcia','Sarmiento 1258',null);

select nombre as NombreYApellido,
domicilio,telefono
from agenda;

select nombre as 'Nombre y apellido',
domicilio,telefono
from agenda;

select nombre 'Nombre y apellido',
domicilio,telefono
from agenda;

-- primer problema 

if object_id ('libros') is not null
drop table libros;

create table libros(
codigo int identity,
titulo varchar(40) not null,
autor varchar(20) default 'Desconocido',
editorial varchar(20),
precio decimal(6,2),
cantidad tinyint default 0,
primary key (codigo)
);

insert into libros (titulo,autor,editorial,precio)
values('El aleph','Borges','Emece',25);
insert into libros
values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
insert into libros (titulo,autor,editorial,precio,cantidad)
values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

select titulo, autor,editorial,precio,cantidad,
precio*cantidad as 'monto total'
from libros;

select titulo,autor,precio,
precio*0.1 as descuento,
precio-(precio*0.1) as 'precio final'
from libros
where editorial='Emece';

select titulo+'-'+autor as "Título y autor"
from libros;

-- 24 - Funciones

-- 25 - Funciones para el manejo de cadenas

-- problema solucionado 

if object_id ('libros') is not null
drop table libros;

create table libros(
codigo int identity,
titulo varchar(40) not null,
autor varchar(20) default 'Desconocido',
editorial varchar(20),
precio decimal(6,2),
cantidad tinyint default 0,
primary key (codigo)
);

insert into libros (titulo,autor,editorial,precio)
values('El aleph','Borges','Emece',25);
insert into libros
values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
insert into libros (titulo,autor,editorial,precio,cantidad)
values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

select substring(titulo,1,12) as titulo
from libros;

select left(titulo,12) as titulo
from libros;

select titulo,
str(precio,6,1)
from libros;

select titulo,
str(precio)
from libros;

select titulo, autor, upper(editorial)
from libros;

-- 25 - Funciones para el uso de fechas y horas
-- problema solucionado 

if object_id ('libros') is not null
drop table libros;

create table libros(
titulo varchar(40) not null,
autor varchar(20) default 'Desconocido',
editorial varchar(20),
edicion datetime,
precio decimal(6,2)
);

insert into libros values('El aleph','Borges','Emece','1980/10/10',25.33);
insert into libros values('Java en 10 minutos','Mario Molina','Siglo XXI','2000/05/05',50.65);
insert into libros values('Alicia en el pais de las maravillas','Lewis Carroll','Emece','2000/08/09',19.95);
insert into libros values('Aprenda PHP','Mario Molina','Siglo XXI','2000/02/04',45);

select titulo, datepart (year,edicion) from libros;

select titulo, datename (month,edicion) from libros;

select titulo, datediff(year,edicion,getdate()) from libros;

select titulo from libros
where datepart(day,edicion)=9;

-- primer problema 

if object_id ('empleados') is not null
drop table empleados;

create table empleados(
nombre varchar(30) not null,
apellido varchar(20) not null,
documento char(8),
fechanacimiento datetime,
fechaingreso datetime,
sueldo decimal(6,2),
primary key(documento)
);

insert into empleados values('Ana','Acosta','22222222','1970/10/10','1995/05/05',228.50);
insert into empleados values('Carlos','Caseres','25555555','1978/02/06','1998/05/05',309);
insert into empleados values('Francisco','Garcia','26666666','1978/10/15','1998/10/02',250.68);
insert into empleados values('Gabriela','Garcia','30000000','1985/10/25','2000/12/22',300.25);
insert into empleados values('Luis','Lopez','31111111','1987/02/10','2000/08/21',350.98);

select nombre+space(1)+upper(apellido) as nombre,
stuff(documento,1,0,'DNI Nº ') as documento,
stuff(sueldo,1,0,'$ ') as sueldo from empleados;

select documento, stuff(ceiling(sueldo),1,0,'$ ') from empleados;

select nombre,apellido from empleados
where datename(month,fechanacimiento)='october';

select nombre,apellido from empleados
where datepart(year,fechaingreso)=2000;  

-- 28 - Ordenar registros (order by)
-- problema solucionado 

if object_id ('libros') is not null
drop table libros;

create table libros(
codigo int identity,
titulo varchar(40) not null,
autor varchar(20) default 'Desconocido',
editorial varchar(20),
precio decimal(6,2),
primary key (codigo)
);

insert into libros (titulo,autor,editorial,precio)
values('El aleph','Borges','Emece',25.33);
insert into libros
values('Java en 10 minutos','Mario Molina','Siglo XXI',50.65);
insert into libros (titulo,autor,editorial,precio)
values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',19.95);
insert into libros (titulo,autor,editorial,precio)
values('Alicia en el pais de las maravillas','Lewis Carroll','Planeta',15);

select * from libros
order by titulo;

select titulo,autor,precio
from libros order by 3;

select * from libros
order by editorial desc;

select * from libros
order by titulo,editorial;

select * from libros
order by titulo asc, editorial desc;

select titulo, autor
from libros
order by precio;

select titulo, autor, editorial,
precio+(precio*0.1) as 'precio con descuento'
from libros
order by 4;

-- primer problema 

if object_id('visitas') is not null
drop table visitas;

create table visitas (
numero int identity,
nombre varchar(30) default 'Anonimo',
mail varchar(50),
pais varchar (20),
fecha datetime,
primary key(numero)
);

insert into visitas (nombre,mail,pais,fecha)
values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
insert into visitas (nombre,mail,pais,fecha)
values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30');
insert into visitas (nombre,mail,pais,fecha)
values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
insert into visitas (nombre,mail,pais,fecha)
values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
insert into visitas (nombre,mail,pais,fecha)
values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
insert into visitas (nombre,mail,pais,fecha)
values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-12 16:20');
insert into visitas (nombre,mail,pais,fecha)
values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');

select * from visitas
order by fecha desc;

select nombre,pais,datename(month,fecha)
from visitas
order by pais,datename(month,fecha) desc;

select nombre,mail,
datename(month,fecha) mes,
datename(day,fecha) dia,
datename(hour,fecha) hora
from visitas
order by 3,4,5;

select mail, pais
from visitas
where datename(month,fecha)='October'
order by 2;

-- 29 - Operadores lógicos ( and - or - not)
-- problema solucionado 

if object_id ('libros') is not null
drop table libros;

create table libros(
codigo int identity,
titulo varchar(40) not null,
autor varchar(20) default 'Desconocido',
editorial varchar(20),
precio decimal(6,2),
);

insert into libros
values('El aleph','Borges','Emece',15.90);
insert into libros
values('Antología poética','Borges','Planeta',39.50);
insert into libros
values('Java en 10 minutos','Mario Molina','Planeta',50.50);
insert into libros
values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',19.90);
insert into libros
values('Martin Fierro','Jose Hernandez','Emece',25.90);
insert into libros
values('Martin Fierro','Jose Hernandez','Paidos',16.80);
insert into libros
values('Aprenda PHP','Mario Molina','Emece',19.50);
insert into libros
values('Cervantes y el quijote','Borges','Paidos',18.40);

select * from libros
where (autor='Borges') and
(precio<=20);

select * from libros
where autor='Borges' or
editorial='Planeta';

select * from libros
where not editorial='Planeta';

select * from libros
where (autor='Borges') or
(editorial='Paidos' and precio<20);

select * from libros
where (autor='Borges' or editorial='Paidos') and
(precio<20);

-- primer problema 

if object_id('medicamentos') is not null
drop table medicamentos;

create table medicamentos(
codigo int identity,
nombre varchar(20),
laboratorio varchar(20),
precio decimal(5,2),
cantidad tinyint,
primary key(codigo)
);

insert into medicamentos
values('Sertal','Roche',5.2,100);
insert into medicamentos
values('Buscapina','Roche',4.10,200);
insert into medicamentos
values('Amoxidal 500','Bayer',15.60,100);
insert into medicamentos
values('Paracetamol 500','Bago',1.90,200);
insert into medicamentos
values('Bayaspirina','Bayer',2.10,150); 
insert into medicamentos
values('Amoxidal jarabe','Bayer',5.10,250); 

select codigo,nombre
from medicamentos
where laboratorio='Roche' and
precio<5;

select * from medicamentos
where laboratorio='Roche' or
precio<5;

select * from medicamentos
where not laboratorio='Bayer' and
cantidad=100;

select * from medicamentos
where laboratorio='Bayer' and
not cantidad=100;

delete from medicamentos
where laboratorio='Bayer' and
precio>10;

update medicamentos set cantidad=200
where laboratorio='Roche' and
precio>5;

delete from medicamentos
where laboratorio='Bayer' or
precio<3;

-- segundo problema 

if object_id('peliculas') is not null
drop table peliculas;

create table peliculas(
codigo int identity,
titulo varchar(40) not null,
actor varchar(20),
duracion tinyint,
primary key (codigo)
);

insert into peliculas
values('Mision imposible','Tom Cruise',120);
insert into peliculas
values('Harry Potter y la piedra filosofal','Daniel R.',180);
insert into peliculas
values('Harry Potter y la camara secreta','Daniel R.',190);
insert into peliculas
values('Mision imposible 2','Tom Cruise',120);
insert into peliculas
values('Mujer bonita','Richard Gere',120);
insert into peliculas
values('Tootsie','D. Hoffman',90);
insert into peliculas
values('Un oso rojo','Julio Chavez',100);
insert into peliculas
values('Elsa y Fred','China Zorrilla',110);

select * from peliculas
where actor='Tom Cruise' or
actor='Richard Gere';

select * from peliculas
where actor='Tom Cruise' and
duracion<100;

update peliculas set duracion=200
where actor='Daniel R.' and
duracion=180;

delete from peliculas
where not actor='Tom Cruise' and
duracion<=100;

-- 30 - Otros operadores relacionales (is null)
-- problema solucionado 

if object_id ('libros') is not null
drop table libros;

create table libros(
codigo int identity,
titulo varchar(40) not null,
autor varchar(20) default 'Desconocido',
editorial varchar(20),
precio decimal(6,2),
);

insert into libros
values('El aleph','Borges','Emece',15.90);
insert into libros
values('Cervantes y el quijote','Borges','Paidos',null);
insert into libros
values('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
insert into libros
values('Martin Fierro','Jose Hernandez','Emece',25.90);
insert into libros (titulo,autor,precio)
values('Antología poética','Borges',25.50);
insert into libros (titulo,autor,precio)
values('Java en 10 minutos','Mario Molina',45.80);
insert into libros (titulo,autor)
values('Martin Fierro','Jose Hernandez');
insert into libros (titulo,autor)
values('Aprenda PHP','Mario Molina');

select * from libros
where editorial is null;

select * from libros
where editorial is not null;

-- primer problema 

if object_id('peliculas') is not null
drop table peliculas;

create table peliculas(
codigo int identity,
titulo varchar(40) not null,
actor varchar(20),
duracion tinyint,
primary key (codigo)
);

insert into peliculas
values('Mision imposible','Tom Cruise',120);
insert into peliculas
values('Harry Potter y la piedra filosofal','Daniel R.',null);
insert into peliculas
values('Harry Potter y la camara secreta','Daniel R.',190);
insert into peliculas
values('Mision imposible 2','Tom Cruise',120);
insert into peliculas
values('Mujer bonita',null,120);
insert into peliculas
values('Tootsie','D. Hoffman',90);
insert into peliculas (titulo)
values('Un oso rojo');

select * from peliculas
where actor is null;

update peliculas set duracion=0
where duracion is null;

delete from peliculas
where actor is null and
duracion=0;

select * from peliculas;

-- 31 - Otros operadores relacionales (between)
-- problema solucionado 

if object_id ('libros') is not null
drop table libros;

create table libros(
codigo int identity,
titulo varchar(40) not null,
autor varchar(20) default 'Desconocido',
editorial varchar(20),
precio decimal(6,2),
);

insert into libros
values('El aleph','Borges','Emece',15.90);
insert into libros
values('Cervantes y el quijote','Borges','Paidos',null);
insert into libros
values('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
insert into libros
values('Martin Fierro','Jose Hernandez','Emece',25.90);
insert into libros (titulo,autor,precio)
values('Antología poética','Borges',32);
insert into libros (titulo,autor,precio)
values('Java en 10 minutos','Mario Molina',45.80);
insert into libros (titulo,autor,precio)
values('Martin Fierro','Jose Hernandez',40);
insert into libros (titulo,autor,precio)
values('Aprenda PHP','Mario Molina',56.50);

select * from libros
where precio between 20 and 40;

select * from libros
where precio not between 20 and 35;

-- primer problema 

if object_id('visitas') is not null
drop table visitas;

create table visitas (
numero int identity,
nombre varchar(30) default 'Anonimo',
mail varchar(50),
pais varchar (20),
fechayhora datetime,
primary key(numero)
);

insert into visitas (nombre,mail,pais,fechayhora)
values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
insert into visitas (nombre,mail,pais,fechayhora)
values ('Gustavo Gonzalez','GustavoGGonzalez@gotmail.com','Chile','2006-10-10 21:30');
insert into visitas (nombre,mail,pais,fechayhora)
values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
insert into visitas (nombre,mail,pais,fechayhora)
values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
insert into visitas (nombre,mail,pais,fechayhora)
values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
insert into visitas (nombre,mail,pais,fechayhora)
values ('Juancito','JuanJosePerez@gmail.com','Argentina','2006-09-12 16:20');
insert into visitas (nombre,mail,pais,fechayhora)
values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');
insert into visitas (nombre,mail,pais)
values ('Federico1','federicogarcia@xaxamail.com','Argentina');

select * from visitas
where fechayhora between '2006-09-12' and '2006-10-11';

select * from visitas
where numero between 2 and 5;

-- segundo problema 

if object_id('autos') is not null
drop table autos;

create table autos(
patente char(6),
marca varchar(20),
modelo char(4),
precio decimal(8,2),
primary key(patente)
);

insert into autos
values('ACD123','Fiat 128','1970',15000);
insert into autos
values('ACG234','Renault 11','1980',40000);
insert into autos
values('BCD333','Peugeot 505','1990',80000);
insert into autos
values('GCD123','Renault Clio','1995',70000);
insert into autos
values('BCC333','Renault Megane','1998',95000);
insert into autos
values('BVF543','Fiat 128','1975',20000);

select * from autos
where modelo between '1970' and '1990'
order by modelo;

select * from autos
where precio between 50000 and 100000; 

-- 32 - Otros operadores relacionales (in)
-- problema solucionado 

if object_id ('libros') is not null
drop table libros;

create table libros(
codigo int identity,
titulo varchar(40) not null,
autor varchar(20),
editorial varchar(20),
precio decimal(6,2),
);

insert into libros
values('El aleph','Borges','Emece',15.90);
insert into libros
values('Cervantes y el quijote','Borges','Paidos',null);
insert into libros
values('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
insert into libros
values('Matematica estas ahi','Paenza','Siglo XXI',15);
insert into libros (titulo,precio)
values('Antología poética',32);
insert into libros (titulo,autor,precio)
values('Martin Fierro','Jose Hernandez',40);
insert into libros (titulo,autor,precio)
values('Aprenda PHP','Mario Molina',56.50);

select * from libros
where autor in('Borges','Paenza');

select * from libros
where autor not in ('Borges','Paenza');

-- primer problema 

if object_id('medicamentos') is not null
drop table medicamentos;

create table medicamentos(
codigo int identity,
nombre varchar(20),
laboratorio varchar(20),
precio decimal(6,2),
cantidad tinyint,
fechavencimiento datetime not null,
primary key(codigo)
);

insert into medicamentos
values('Sertal','Roche',5.2,1,'2015-02-01');
insert into medicamentos 
values('Buscapina','Roche',4.10,3,'2016-03-01');
insert into medicamentos 
values('Amoxidal 500','Bayer',15.60,100,'2017-05-01');
insert into medicamentos
values('Paracetamol 500','Bago',1.90,20,'2018-02-01');
insert into medicamentos 
values('Bayaspirina','Bayer',2.10,150,'2019-12-01'); 
insert into medicamentos 
values('Amoxidal jarabe','Bayer',5.10,250,'2020-10-01'); 

select nombre,precio from medicamentos
where laboratorio in ('Bayer','Bago');

select * from medicamentos
where cantidad between 1 and 5;

select * from medicamentos
where cantidad in (1,2,3,4,5);

-- 33 - Búsqueda de patrones (like - not like)
-- problema solucionado 

if object_id ('libros') is not null
drop table libros;

create table libros(
codigo int identity,
titulo varchar(40) not null,
autor varchar(20) default 'Desconocido',
editorial varchar(20),
precio decimal(6,2),
primary key(codigo)
);

insert into libros
values('El aleph','Borges','Emece',15.90);
insert into libros
values('Antología poética','J. L. Borges','Planeta',null);
insert into libros
values('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
insert into libros
values('Matematica estas ahi','Paenza','Siglo XXI',15);
insert into libros
values('Martin Fierro','Jose Hernandez',default,40);
insert into libros
values('Aprenda PHP','Mario Molina','Nuevo siglo',56.50);

select * from libros
where autor like '%Borges%';

select * from libros
where titulo like 'M%';

select * from libros
where titulo not like 'M%';

select * from libros
where autor like '%Carrol_';

select titulo,autor,editorial
from libros
where editorial like '[P-S]%';

select titulo,autor,editorial
from libros
where editorial like '[^PN]%';

select titulo,precio from libros
where precio like '1_.%';

select titulo,precio from libros
where precio like '%.00';


-- primer problema 

if object_id('empleados') is not null
drop table empleados;

create table empleados(
nombre varchar(30),
documento char(8),
domicilio varchar(30),
fechaingreso datetime,
seccion varchar(20),
sueldo decimal(6,2),
primary key(documento)
);

insert into empleados
values('Juan Perez','22333444','Colon 123','1990-10-08','Gerencia',900.50);
insert into empleados
values('Ana Acosta','23444555','Caseros 987','1995-12-18','Secretaria',590.30);
insert into empleados
values('Lucas Duarte','25666777','Sucre 235','2005-05-15','Sistemas',790);
insert into empleados
values('Pamela Gonzalez','26777888','Sarmiento 873','1999-02-12','Secretaria',550);
insert into empleados
values('Marcos Juarez','30000111','Rivadavia 801','2002-09-22','Contaduria',630.70);
insert into empleados
values('Yolanda Perez','35111222','Colon 180','1990-10-08','Administracion',400);
insert into empleados
values('Rodolfo Perez','35555888','Coronel Olmedo 588','1990-05-28','Sistemas',800);

select * from empleados
where nombre like '%Perez%';

select * from empleados
where domicilio like 'Co%8%';

select * from empleados
where documento like '%[02468]';

select * from empleados
where documento like '[^13]%' and
nombre like '%ez';

select nombre from empleados
where nombre like '%[yj]%';

select nombre,seccion from empleados
where seccion like '[SG]_______';

select nombre,seccion from empleados
where seccion not like '[SG]%';

select nombre,sueldo from empleados
where sueldo not like '%.00';

select * from empleados
where fechaingreso like '%1990%';

-- 34 - Contar registros (count)
-- problema solucionado 

if object_id ('libros') is not null
drop table libros;

create table libros(
codigo int identity,
titulo varchar(40) not null,
autor varchar(20) default 'Desconocido',
editorial varchar(20),
precio decimal(6,2),
primary key(codigo)
);

insert into libros
values('El aleph','Borges','Emece',15.90);
insert into libros
values('Antología poética','J. L. Borges','Planeta',null);
insert into libros
values('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
insert into libros
values('Matematica estas ahi','Paenza','Siglo XXI',15);
insert into libros
values('Martin Fierro','Jose Hernandez',default,40);
insert into libros
values('Aprenda PHP','Mario Molina','Nuevo siglo',null);
insert into libros
values('Uno','Richard Bach','Planeta',20);

select count(*)
from libros;

select count(*)
from libros
where editorial='Planeta';

select count(precio)
from libros;

-- primer problema 

if object_id('medicamentos') is not null
drop table medicamentos;

create table medicamentos(
codigo int identity,
nombre varchar(20),
laboratorio varchar(20),
precio decimal(6,2),
cantidad tinyint,
fechavencimiento datetime not null,
numerolote int default null,
primary key(codigo)
);

insert into medicamentos
values('Sertal','Roche',5.2,1,'2015-02-01',null);
insert into medicamentos 
values('Buscapina','Roche',4.10,3,'2016-03-01',null);
insert into medicamentos 
values('Amoxidal 500','Bayer',15.60,100,'2017-05-01',null);
insert into medicamentos
values('Paracetamol 500','Bago',1.90,20,'2018-02-01',null);
insert into medicamentos 
values('Bayaspirina',null,2.10,null,'2019-12-01',null); 
insert into medicamentos 
values('Amoxidal jarabe','Bayer',null,250,'2019-12-15',null); 

select count(*)
from medicamentos;

select count(laboratorio)
from medicamentos;

select count(precio) as 'Con precio',
count(cantidad) as 'Con cantidad'
from medicamentos;

select count(precio)
from medicamentos
where laboratorio like 'B%';

select count(numerolote) from medicamentos;

-- 34 - Funciones de agrupamiento (count - sum - min - max - avg)
-- problema solucionado 

if object_id('libros') is not null
drop table libros;

create table libros(
codigo int identity,
titulo varchar(40) not null,
autor varchar(30) default 'Desconocido',
editorial varchar(15),
precio decimal(5,2),
cantidad tinyint,
primary key(codigo)
);

insert into libros
values('El aleph','Borges','Planeta',15,null);
insert into libros
values('Martin Fierro','Jose Hernandez','Emece',22.20,200);
insert into libros
values('Antologia poetica','J.L. Borges','Planeta',null,150);
insert into libros
values('Aprenda PHP','Mario Molina','Emece',18.20,null);
insert into libros
values('Cervantes y el quijote','Bioy Casares- J.L. Borges','Paidos',null,100);
insert into libros
values('Manual de PHP', 'J.C. Paez', 'Siglo XXI',31.80,120);
insert into libros
values('Harry Potter y la piedra filosofal','J.K. Rowling',default,45.00,90);
insert into libros
values('Harry Potter y la camara secreta','J.K. Rowling','Emece',46.00,100);
insert into libros (titulo,autor,cantidad)
values('Alicia en el pais de las maravillas','Lewis Carroll',220);
insert into libros (titulo,autor,cantidad)
values('PHP de la A a la Z',default,0);

select sum(cantidad)
from libros;

select sum(cantidad)
from libros
where editorial='Emece';

select max(precio)
from libros;

select min(precio)
from libros
where autor like '%Rowling%';

select avg(precio)
from libros
where titulo like '%PHP%';

-- primer problema 

if object_id('empleados') is not null
drop table empleados;

create table empleados(
nombre varchar(30),
documento char(8),
domicilio varchar(30),
seccion varchar(20),
sueldo decimal(6,2),
cantidadhijos tinyint,
primary key(documento)
);

insert into empleados
values('Juan Perez','22333444','Colon 123','Gerencia',5000,2);
insert into empleados
values('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0);
insert into empleados
values('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1);
insert into empleados
values('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3);
insert into empleados
values('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0);
insert into empleados
values('Yolanda Perez','35111222','Colon 180','Administracion',3200,1);
insert into empleados
values('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3);
insert into empleados
values('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4);
insert into empleados
values('Andres Costa','28444555',default,'Secretaria',null,null);

select count(*)
from empleados;

select count(sueldo)
from empleados
where seccion='Secretaria';

select max(sueldo) as 'Mayor sueldo',
min(sueldo) as 'Menor sueldo'
from empleados;

select max(cantidadhijos)
from empleados
where nombre like '%Perez%';

select avg(sueldo)
from empleados;

select avg(sueldo)
from empleados
where seccion='Secretaria';

select avg(cantidadhijos)
from empleados
where seccion='Sistemas';

-- 35 - Agrupar registros (group by)
-- problema solucionado 

if object_id('libros') is not null
drop table libros;

create table libros(
codigo int identity,
titulo varchar(40),
autor varchar(30),
editorial varchar(15),
precio decimal(5,2),
cantidad tinyint,
primary key(codigo)
);

insert into libros
values('El aleph','Borges','Planeta',15,null);
insert into libros
values('Martin Fierro','Jose Hernandez','Emece',22.20,200);
insert into libros
values('Antologia poetica','J.L. Borges','Planeta',null,150);
insert into libros
values('Aprenda PHP','Mario Molina','Emece',18.20,null);
insert into libros
values('Cervantes y el quijote','Bioy Casares- J.L. Borges','Paidos',null,100);
insert into libros
values('Manual de PHP', 'J.C. Paez', 'Siglo XXI',31.80,120);
insert into libros
values('Harry Potter y la piedra filosofal','J.K. Rowling',default,45.00,90);
insert into libros
values('Harry Potter y la camara secreta','J.K. Rowling','Emece',null,100);
insert into libros
values('Alicia en el pais de las maravillas','Lewis Carroll','Paidos',22.50,200);
insert into libros
values('PHP de la A a la Z',null,null,null,0);

select editorial, count(*)
from libros
group by editorial;

select editorial, count(precio)
from libros
group by editorial;

select editorial, sum(precio)
from libros
group by editorial;

select editorial,
max(precio) as mayor,
min(precio) as menor
from libros
group by editorial;

select editorial, avg(precio)
from libros
group by editorial;

select editorial, count(*)
from libros
where precio<30
group by editorial;

select editorial, count(*)
from libros
where precio<30
group by all editorial;

-- primer problema 

if object_id('visitantes') is not null
drop table visitantes;

create table visitantes(
nombre varchar(30),
edad tinyint,
sexo char(1) default 'f',
domicilio varchar(30),
ciudad varchar(20) default 'Cordoba',
telefono varchar(11),
mail varchar(30) default 'no tiene',
montocompra decimal (6,2)
);

insert into visitantes
values ('Susana Molina',35,default,'Colon 123',default,null,null,59.80);
insert into visitantes
values ('Marcos Torres',29,'m',default,'Carlos Paz',default,'marcostorres@hotmail.com',150.50);
insert into visitantes
values ('Mariana Juarez',45,default,default,'Carlos Paz',null,default,23.90);
insert into visitantes (nombre, edad,sexo,telefono, mail)
values ('Fabian Perez',36,'m','4556677','fabianperez@xaxamail.com');
insert into visitantes (nombre, ciudad, montocompra)
values ('Alejandra Gonzalez','La Falda',280.50);
insert into visitantes (nombre, edad,sexo, ciudad, mail,montocompra)
values ('Gaston Perez',29,'m','Carlos Paz','gastonperez1@gmail.com',95.40);
insert into visitantes
values ('Liliana Torres',40,default,'Sarmiento 876',default,default,default,85);
insert into visitantes
values ('Gabriela Duarte',21,null,null,'Rio Tercero',default,'gabrielaltorres@hotmail.com',321.50);

select ciudad, count(*)
from visitantes
group by ciudad;

select ciudad, count(telefono)
from visitantes
group by ciudad;

select sexo, sum(montocompra)
from visitantes
group by sexo;

select sexo,ciudad,
max(montocompra) as mayor,
min(montocompra) as menor
from visitantes
group by sexo,ciudad;

select ciudad,
avg(montocompra) as 'promedio de compras'
from visitantes
group by ciudad;

select ciudad,
count(*) as 'cantidad con mail'
from visitantes
where mail is not null and
mail<>'no tiene'
group by ciudad;

select ciudad,
count(*) as 'cantidad con mail'
from visitantes
where mail is not null and
mail<>'no tiene'
group by all ciudad;

-- segundo problema 

if object_id('empleados') is not null
drop table empleados;

create table empleados(
nombre varchar(30),
documento char(8),
domicilio varchar(30),
seccion varchar(20),
sueldo decimal(6,2),
cantidadhijos tinyint,
fechaingreso datetime,
primary key(documento)
);

insert into empleados
values('Juan Perez','22333444','Colon 123','Gerencia',5000,2,'1980-05-10');
insert into empleados
values('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0,'1980-10-12');
insert into empleados
values('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1,'1985-05-25');
insert into empleados
values('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3,'1990-06-25');
insert into empleados
values('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0,'1996-05-01');
insert into empleados
values('Yolanda Perez','35111222','Colon 180','Administracion',3200,1,'1996-05-01');
insert into empleados
values('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3,'1996-05-01');
insert into empleados
values('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4,'2000-09-01');
insert into empleados
values('Andres Costa','28444555',default,'Secretaria',null,null,null);

select seccion, count(*)
from empleados
group by seccion;

select seccion, avg(cantidadhijos) as 'promedio de hijos'
from empleados
group by seccion;

select datepart(year,fechaingreso), count(*)
from empleados
group by datepart(year,fechaingreso);

select seccion, avg(sueldo) as 'promedio de sueldo'
from empleados
where cantidadhijos>0 and
cantidadhijos is not null
group by seccion;

select seccion, avg(sueldo) as 'promedio de sueldo'
from empleados
where cantidadhijos>0 and
cantidadhijos is not null
group by all seccion;

-- 34 - Seleccionar grupos (having)
-- problema solucionado 

if object_id('libros') is not null
drop table libros;

create table libros(
codigo int identity,
titulo varchar(40),
autor varchar(30),
editorial varchar(15),
precio decimal(5,2),
cantidad tinyint,
primary key(codigo)
);

insert into libros
values('El aleph','Borges','Planeta',35,null);
insert into libros
values('Martin Fierro','Jose Hernandez','Emece',22.20,200);
insert into libros
values('Martin Fierro','Jose Hernandez','Planeta',40,200);
insert into libros
values('Antologia poetica','J.L. Borges','Planeta',null,150);
insert into libros
values('Aprenda PHP','Mario Molina','Emece',18,null);
insert into libros
values('Manual de PHP', 'J.C. Paez', 'Siglo XXI',56,120);
insert into libros
values('Cervantes y el quijote','Bioy Casares- J.L. Borges','Paidos',null,100);
insert into libros
values('Harry Potter y la piedra filosofal','J.K. Rowling',default,45.00,90);
insert into libros
values('Harry Potter y la camara secreta','J.K. Rowling','Emece',null,100);
insert into libros
values('Alicia en el pais de las maravillas','Lewis Carroll','Paidos',42,80);
insert into libros
values('PHP de la A a la Z',null,null,110,0);
insert into libros
values('Uno','Richard Bach','Planeta',25,null);

select editorial, count(*) from libros
group by editorial
having count(*)>2;

select editorial, avg(precio) from libros
group by editorial
having avg(precio)>25;

select editorial, count(*) from libros
where precio is not null
group by editorial
having editorial<>'Planeta';

select editorial, avg(precio) from libros
group by editorial
having count(*) > 2; 

select editorial, max(precio) as 'mayor'
from libros
group by editorial
having max(precio)<100 and
max(precio)>30
order by editorial; 

-- primer problema 

if object_id('libros') is not null
drop table libros;

create table libros(
codigo int identity,
titulo varchar(40),
autor varchar(30),
editorial varchar(15),
precio decimal(5,2),
cantidad tinyint,
primary key(codigo)
);

insert into libros
values('El aleph','Borges','Planeta',35,null);
insert into libros
values('Martin Fierro','Jose Hernandez','Emece',22.20,200);
insert into libros
values('Martin Fierro','Jose Hernandez','Planeta',40,200);
insert into libros
values('Antologia poetica','J.L. Borges','Planeta',null,150);
insert into libros
values('Aprenda PHP','Mario Molina','Emece',18,null);
insert into libros
values('Manual de PHP', 'J.C. Paez', 'Siglo XXI',56,120);
insert into libros
values('Cervantes y el quijote','Bioy Casares- J.L. Borges','Paidos',null,100);
insert into libros
values('Harry Potter y la piedra filosofal','J.K. Rowling',default,45.00,90);
insert into libros
values('Harry Potter y la camara secreta','J.K. Rowling','Emece',null,100);
insert into libros
values('Alicia en el pais de las maravillas','Lewis Carroll','Paidos',42,80);
insert into libros
values('PHP de la A a la Z',null,null,110,0);
insert into libros
values('Uno','Richard Bach','Planeta',25,null);

select editorial, count(*) from libros
group by editorial
having count(*)>2;

select editorial, avg(precio) from libros
group by editorial
having avg(precio)>25;

select editorial, count(*) from libros
where precio is not null
group by editorial
having editorial<>'Planeta';

select editorial, avg(precio) from libros
group by editorial
having count(*) > 2; 

select editorial, max(precio) as 'mayor'
from libros
group by editorial
having max(precio)<100 and
max(precio)>30
order by editorial; 


-- 38 - Registros duplicados (distinct)
-- problema solucionado 

if object_id('libros') is not null
drop table libros;

create table libros(
codigo int identity,
titulo varchar(40),
autor varchar(30),
editorial varchar(15),
primary key(codigo)
);

insert into libros
values('El aleph','Borges','Planeta');
insert into libros
values('Martin Fierro','Jose Hernandez','Emece');
insert into libros
values('Martin Fierro','Jose Hernandez','Planeta');
insert into libros
values('Antologia poetica','Borges','Planeta');
insert into libros
values('Aprenda PHP','Mario Molina','Emece');
insert into libros
values('Aprenda PHP','Lopez','Emece');
insert into libros
values('Manual de PHP', 'J. Paez', null);
insert into libros
values('Cervantes y el quijote',null,'Paidos');
insert into libros
values('Harry Potter y la piedra filosofal','J.K. Rowling','Emece');
insert into libros
values('Harry Potter y la camara secreta','J.K. Rowling','Emece');
insert into libros
values('Alicia en el pais de las maravillas','Lewis Carroll','Paidos');
insert into libros
values('Alicia en el pais de las maravillas','Lewis Carroll','Planeta');
insert into libros
values('PHP de la A a la Z',null,null);
insert into libros
values('Uno','Richard Bach','Planeta');

select distinct autor from libros;

select distinct autor from libros
where autor is not null;

select count(distinct autor)
from libros;

select distinct editorial from libros;

select count(distinct editorial) from libros;

select distinct autor from libros
where editorial='Planeta';

select editorial,count(distinct autor)
from libros
group by editorial;

select distinct titulo,editorial
from libros
order by titulo;

-- primer problema 

if object_id('clientes') is not null
drop table clientes;

create table clientes (
codigo int identity,
nombre varchar(30) not null,
domicilio varchar(30),
ciudad varchar(20),
provincia varchar (20),
primary key(codigo)
);

insert into clientes
values ('Lopez Marcos','Colon 111','Cordoba','Cordoba');
insert into clientes
values ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba');
insert into clientes
values ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba');
insert into clientes
values ('Perez Luis','Sarmiento 444','Rosario','Santa Fe');
insert into clientes
values ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba');
insert into clientes
values ('Gomez Ines','San Martin 666','Santa Fe','Santa Fe');
insert into clientes
values ('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba');
insert into clientes
values ('Lopez Carlos',null,'Cruz del Eje','Cordoba');
insert into clientes
values ('Ramos Betina','San Martin 999','Cordoba','Cordoba');
insert into clientes
values ('Lopez Lucas','San Martin 1010','Posadas','Misiones');

select distinct provincia from clientes;

select count(distinct provincia) as cantidad
from clientes;

select distinct ciudad from clientes;

select count(distinct ciudad) from clientes;

select distinct ciudad from clientes
where provincia='Cordoba';

select provincia,count(distinct ciudad)
from clientes
group by provincia;

-- segundo problema 

if object_id('inmuebles') is not null
drop table inmuebles;

create table inmuebles (
documento varchar(8) not null,
apellido varchar(30),
nombre varchar(30),
domicilio varchar(20),
barrio varchar(20),
ciudad varchar(20),
tipo char(1),--b=baldio, e: edificado
superficie decimal (8,2)
);

insert into inmuebles
values ('11000000','Perez','Alberto','San Martin 800','Centro','Cordoba','e',100);
insert into inmuebles
values ('11000000','Perez','Alberto','Sarmiento 245','Gral. Paz','Cordoba','e',200);
insert into inmuebles
values ('12222222','Lopez','Maria','San Martin 202','Centro','Cordoba','e',250);
insert into inmuebles
values ('13333333','Garcia','Carlos','Paso 1234','Alberdi','Cordoba','b',200);
insert into inmuebles
values ('13333333','Garcia','Carlos','Guemes 876','Alberdi','Cordoba','b',300);
insert into inmuebles
values ('14444444','Perez','Mariana','Caseros 456','Flores','Cordoba','b',200);
insert into inmuebles
values ('15555555','Lopez','Luis','San Martin 321','Centro','Carlos Paz','e',500);
insert into inmuebles
values ('15555555','Lopez','Luis','Lopez y Planes 853','Flores','Carlos Paz','e',350);
insert into inmuebles
values ('16666666','Perez','Alberto','Sucre 1877','Flores','Cordoba','e',150);

select distinct apellido from inmuebles;

select distinct documento from inmuebles;

select count(distinct documento)
from inmuebles
where ciudad='Cordoba';

select count(ciudad)
from inmuebles
where domicilio like 'San Martin %';

select distinct apellido,nombre 
from inmuebles;

select documento,count(distinct barrio) as 'cantidad'
from inmuebles
group by documento;

-- 39 - Cláusula top
-- problema solucionado 

if object_id('libros') is not null
drop table libros;

create table libros(
codigo int identity,
titulo varchar(40),
autor varchar(20),
editorial varchar(20)
);

insert into libros values ('Uno','Richard Bach','Planeta');
insert into libros values ('El aleph','Borges','Emece');
insert into libros values ('Alicia en el pais...','Carroll','Planeta');
insert into libros values ('Aprenda PHP','Mario Molina','Siglo XXI');
insert into libros values ('Java en 10 minutos','Mario Molina','Siglo XXI');
insert into libros values ('Java desde cero','Mario Molina','Emece');
insert into libros values ('Ilusiones','Richard Bach','Planeta');

select top 2 * from libros;

select top 3 titulo,autor 
from libros
order by autor;

select top 3 with ties titulo,autor 
from libros
order by autor;

select top 50 percent
* from libros
order by autor;

-- primer problema 

if object_id('empleados') is not null
drop table empleados;

create table empleados (
documento varchar(8) not null,
nombre varchar(30),
estadocivil char(1),--c=casado, s=soltero,v=viudo
seccion varchar(20)
);

insert into empleados
values ('22222222','Alberto Lopez','c','Sistemas');
insert into empleados
values ('23333333','Beatriz Garcia','c','Administracion');
insert into empleados
values ('24444444','Carlos Fuentes','s','Administracion');
insert into empleados
values ('25555555','Daniel Garcia','s','Sistemas');
insert into empleados
values ('26666666','Ester Juarez','c','Sistemas');
insert into empleados
values ('27777777','Fabian Torres','s','Sistemas');
insert into empleados
values ('28888888','Gabriela Lopez',null,'Sistemas');
insert into empleados
values ('29999999','Hector Garcia',null,'Administracion');

select top 5 * from empleados;

select top 4 nombre,seccion
from empleados
order by seccion;

select top 4 with ties nombre,seccion
from empleados
order by seccion;

select top 4 nombre,estadocivil,seccion
from empleados
order by estadocivil,seccion;

select top 4 with ties nombre,estadocivil,seccion
from empleados
order by estadocivil,seccion;

-- 40 - Eliminar restricciones (alter table - drop) 
-- problema solucionado 

if object_id('libros') is not null
drop table libros;

create table libros(
codigo int not null,
titulo varchar(40),
autor varchar(30),
editorial varchar(15),
precio decimal(6,2)
);

alter table libros
add constraint PK_libros_codigo
primary key(codigo);

alter table libros
add constraint CK_libros_precio
check (precio>=0);

alter table libros
add constraint DF_libros_autor
default 'Desconocido'
for autor;

alter table libros
add constraint DF_libros_precio
default 0
for precio;

exec sp_helpconstraint libros;

alter table libros
drop DF_libros_autor;

alter table libros
drop PK_libros_codigo;

exec sp_helpconstraint libros;

-- primer problema 

if object_id('vehiculos') is not null
drop table vehiculos;

create table vehiculos(
patente char(6) not null,
tipo char(1),--'a'=auto, 'm'=moto
horallegada datetime not null,
horasalida datetime
);

alter table vehiculos
add constraint CK_vehiculos_tipo
check (tipo in ('a','m'));

alter table vehiculos
add constraint DF_vehiculos_tipo
default 'a'
for tipo;

alter table vehiculos
add constraint CK_vehiculos_patente_patron
check (patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]');

alter table vehiculos
add constraint PK_vehiculos_patentellegada
primary key(patente,horallegada);

insert into vehiculos values('SDR456','a','2005/10/10 10:10',null);

insert into vehiculos values('SDR456','m','2005/10/10 10:10',null);

insert into vehiculos values('SDR456','m','2005/10/10 12:10',null);

insert into vehiculos values('SDR111','m','2005/10/10 10:10',null);

exec sp_helpconstraint vehiculos;

alter table vehiculos
drop DF_vehiculos_tipo;

exec sp_helpconstraint vehiculos;

alter table vehiculos
drop PK_vehiculos_patentellegada, CK_vehiculos_tipo;

exec sp_helpconstraint vehiculos;

-- 41 - Trabajar con varias tablas


-- 42 - Combinación interna (inner join)
-- problema solucionado 

if object_id('libros') is not null
drop table libros;
if object_id('editoriales') is not null
drop table editoriales;

create table libros(
codigo int identity,
titulo varchar(40),
autor varchar(30) default 'Desconocido',
codigoeditorial tinyint not null,
precio decimal(5,2)
);
create table editoriales(
codigo tinyint identity,
nombre varchar(20),
primary key (codigo)
);

insert into editoriales values('Planeta');
insert into editoriales values('Emece');
insert into editoriales values('Siglo XXI');

insert into libros values('El aleph','Borges',2,20);
insert into libros values('Martin Fierro','Jose Hernandez',1,30);
insert into libros values('Aprenda PHP','Mario Molina',3,50);
insert into libros values('Java en 10 minutos',default,3,45);

select * from libros;

select titulo, autor, nombre
from libros
join editoriales
on codigoeditorial=editoriales.codigo;

select l.codigo,titulo,autor,nombre,precio
from libros as l
join editoriales as e
on codigoeditorial=e.codigo;

select l.codigo,titulo,autor,nombre,precio
from libros as l
join editoriales as e
on codigoeditorial=e.codigo
where e.nombre='Siglo XXI';

select titulo,autor,nombre
from libros as l
join editoriales as e
on codigoeditorial=e.codigo
order by titulo;

-- primer problema 

  if (object_id('clientes')) is not null
   drop table clientes;
  if (object_id('provincias')) is not null
   drop table provincias;

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint not null,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');

 insert into clientes values ('Lopez Marcos','Colon 111','Córdoba',1);
 insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
 insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values ('Pereyra Lucas','San Martin 555','Cruz del Eje',1);
 insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values ('Torres Fabiola','Alem 777','Ibera',3);

 select c.nombre,domicilio,ciudad,p.nombre
  from clientes as c
  join provincias as p
  on c.codigoprovincia=p.codigo;

 select c.nombre,domicilio,ciudad,p.nombre
  from clientes as c
  join provincias as p
  on c.codigoprovincia=p.codigo
  order by p.nombre;

 select c.nombre,domicilio,ciudad
  from clientes as c
  join provincias as p
  on c.codigoprovincia=p.codigo
  where p.nombre='Santa Fe';

-- segundo problema 

if (object_id('inscriptos')) is not null
drop table inscriptos;
if (object_id('inasistencias')) is not null
drop table inasistencias;

create table inscriptos(
nombre varchar(30),
documento char(8),
deporte varchar(15),
matricula char(1), --'s'=paga 'n'=impaga
primary key(documento,deporte)
);

create table inasistencias(
documento char(8),
deporte varchar(15),
fecha datetime
);

insert into inscriptos values('Juan Perez','22222222','tenis','s');
insert into inscriptos values('Maria Lopez','23333333','tenis','s');
insert into inscriptos values('Agustin Juarez','24444444','tenis','n');
insert into inscriptos values('Marta Garcia','25555555','natacion','s');
insert into inscriptos values('Juan Perez','22222222','natacion','s');
insert into inscriptos values('Maria Lopez','23333333','natacion','n');

insert into inasistencias values('22222222','tenis','2006-12-01');
insert into inasistencias values('22222222','tenis','2006-12-08');
insert into inasistencias values('23333333','tenis','2006-12-01');
insert into inasistencias values('24444444','tenis','2006-12-08');
insert into inasistencias values('22222222','natacion','2006-12-02');
insert into inasistencias values('23333333','natacion','2006-12-02');

select nombre,insc.deporte,ina.fecha
from inscriptos as insc
join inasistencias as ina
on insc.documento=ina.documento and
insc.deporte=ina.deporte
order by nombre, insc.deporte;

select nombre,insc.deporte, ina.fecha
from inscriptos as insc
join inasistencias as ina
on insc.documento=ina.documento and
insc.deporte=ina.deporte
where insc.documento='22222222';

select nombre,insc.deporte, ina.fecha
from inscriptos as insc
join inasistencias as ina
on insc.documento=ina.documento and
insc.deporte=ina.deporte
where insc.matricula='s';

-- 43 - Combinación externa izquierda (left join)
-- problema solucionado 

if object_id('libros') is not null
drop table libros;
if object_id('editoriales') is not null
drop table editoriales;

create table libros(
codigo int identity,
titulo varchar(40),
autor varchar(30) default 'Desconocido',
codigoeditorial tinyint not null,
precio decimal(5,2)
);
create table editoriales(
codigo tinyint identity,
nombre varchar(20),
primary key (codigo)
);

insert into editoriales values('Planeta');
insert into editoriales values('Emece');
insert into editoriales values('Siglo XXI');

insert into libros values('El aleph','Borges',1,20);
insert into libros values('Martin Fierro','Jose Hernandez',1,30);
insert into libros values('Aprenda PHP','Mario Molina',2,50);
insert into libros values('Java en 10 minutos',default,4,45);

select titulo,nombre
from editoriales as e
left join libros as l
on codigoeditorial = e.codigo;

select titulo,nombre
from libros as l
left join editoriales as e
on codigoeditorial = e.codigo;

select titulo,nombre
from editoriales as e
left join libros as l
on e.codigo=codigoeditorial
where codigoeditorial is not null;

select titulo,nombre
from editoriales as e
left join libros as l
on e.codigo=codigoeditorial
where codigoeditorial is null;

-- primer problema 

if (object_id('clientes')) is not null
drop table clientes;
if (object_id('provincias')) is not null
drop table provincias;

create table clientes (
codigo int identity,
nombre varchar(30),
domicilio varchar(30),
ciudad varchar(20),
codigoprovincia tinyint not null,
primary key(codigo)
);

create table provincias(
codigo tinyint identity,
nombre varchar(20),
primary key (codigo)
);

insert into provincias (nombre) values('Cordoba');
insert into provincias (nombre) values('Santa Fe');
insert into provincias (nombre) values('Corrientes');

insert into clientes values ('Lopez Marcos','Colon 111','Córdoba',1);
insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
insert into clientes values ('Torres Fabiola','Alem 777','La Plata',4);
insert into clientes values ('Garcia Luis','Sucre 475','Santa Rosa',5);

select c.nombre,domicilio,ciudad, p.nombre
from clientes as c
left join provincias as p
on codigoprovincia = p.codigo;

select c.nombre,domicilio,ciudad, p.nombre
from provincias as p
left join clientes as c
on codigoprovincia = p.codigo;

select c.nombre,domicilio,ciudad, p.nombre
from clientes as c
left join provincias as p
on codigoprovincia = p.codigo
where p.codigo is not null;

select c.nombre,domicilio,ciudad, p.nombre
from clientes as c
left join provincias as p
on codigoprovincia = p.codigo
where p.codigo is null
order by c.nombre;

select c.nombre,domicilio,ciudad, p.nombre
from clientes as c
left join provincias as p
on codigoprovincia = p.codigo
where p.nombre='Cordoba';

-- 44 - Combinación externa derecha (right join)
-- problema solucionado 

if object_id('libros') is not null
drop table libros;
if object_id('editoriales') is not null
drop table editoriales;

create table libros(
codigo int identity,
titulo varchar(40),
autor varchar(30) default 'Desconocido',
codigoeditorial tinyint not null,
precio decimal(5,2)
);
create table editoriales(
codigo tinyint identity,
nombre varchar(20),
primary key (codigo)
);

insert into editoriales values('Planeta');
insert into editoriales values('Emece');
insert into editoriales values('Siglo XXI');

insert into libros values('El aleph','Borges',1,20);
insert into libros values('Martin Fierro','Jose Hernandez',1,30);
insert into libros values('Aprenda PHP','Mario Molina',2,50);
insert into libros values('Java en 10 minutos',default,4,45);

select titulo,nombre
from libros as l
right join editoriales as e
on codigoeditorial = e.codigo;

select titulo,nombre
from libros as l
right join editoriales as e
on e.codigo=codigoeditorial
where codigoeditorial is not null;

select titulo,nombre
from libros as l
right join editoriales as e
on e.codigo=codigoeditorial
where codigoeditorial is null;

-- primer problema 

if (object_id('clientes')) is not null
drop table clientes;
if (object_id('provincias')) is not null
drop table provincias;

create table clientes (
codigo int identity,
nombre varchar(30),
domicilio varchar(30),
ciudad varchar(20),
codigoprovincia tinyint not null,
primary key(codigo)
);

create table provincias(
codigo tinyint identity,
nombre varchar(20),
primary key (codigo)
);

insert into provincias (nombre) values('Cordoba');
insert into provincias (nombre) values('Santa Fe');
insert into provincias (nombre) values('Corrientes');

insert into clientes values ('Lopez Marcos','Colon 111','Córdoba',1);
insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
insert into clientes values ('Torres Fabiola','Alem 777','La Plata',4);
insert into clientes values ('Garcia Luis','Sucre 475','Santa Rosa',5);

select c.nombre,domicilio,ciudad, p.nombre
from provincias as p
right join clientes as c
on codigoprovincia = p.codigo;

select c.nombre,domicilio,ciudad, p.nombre
from clientes as c
left join provincias as p
on codigoprovincia = p.codigo;

select c.nombre,domicilio,ciudad, p.nombre
from provincias as p
right join clientes as c
on codigoprovincia = p.codigo
where p.codigo is not null;

select c.nombre,domicilio,ciudad, p.nombre
from provincias as p
right join clientes as c
on codigoprovincia = p.codigo
where p.codigo is null
order by ciudad;

-- 45 - Combinación externa completa (full join)
-- problema solucionado 

if object_id('libros') is not null
drop table libros;
if object_id('editoriales') is not null
drop table editoriales;

create table libros(
codigo int identity,
titulo varchar(40),
autor varchar(30) default 'Desconocido',
codigoeditorial tinyint not null,
precio decimal(5,2)
);
create table editoriales(
codigo tinyint identity,
nombre varchar(20),
primary key (codigo)
);

insert into editoriales values('Planeta');
insert into editoriales values('Emece');
insert into editoriales values('Siglo XXI');

insert into libros values('El aleph','Borges',1,20);
insert into libros values('Martin Fierro','Jose Hernandez',1,30);
insert into libros values('Aprenda PHP','Mario Molina',2,50);
insert into libros values('Java en 10 minutos',default,4,45);

select titulo,nombre
from editoriales as e
full join libros as l
on codigoeditorial = e.codigo;

-- primer problema

if (object_id('deportes')) is not null
drop table deportes;
if (object_id('inscriptos')) is not null
drop table inscriptos;

create table deportes(
codigo tinyint identity,
nombre varchar(30),
profesor varchar(30),
primary key (codigo)
);
create table inscriptos(
documento char(8),
codigodeporte tinyint not null,
matricula char(1) --'s'=paga 'n'=impaga
);

insert into deportes values('tenis','Marcelo Roca');
insert into deportes values('natacion','Marta Torres');
insert into deportes values('basquet','Luis Garcia');
insert into deportes values('futbol','Marcelo Roca');
 
insert into inscriptos values('22222222',3,'s');
insert into inscriptos values('23333333',3,'s');
insert into inscriptos values('24444444',3,'n');
insert into inscriptos values('22222222',2,'s');
insert into inscriptos values('23333333',2,'s');
insert into inscriptos values('22222222',4,'n'); 
insert into inscriptos values('22222222',5,'n'); 

select documento,d.nombre,matricula
from inscriptos as i
join deportes as d
on codigodeporte=codigo;

select documento,d.nombre,matricula
from inscriptos as i
left join deportes as d
on codigodeporte=codigo;

select documento,d.nombre,matricula
from deportes as d
right join inscriptos as i
on codigodeporte=codigo;

select nombre
from deportes as d
left join inscriptos as i
on codigodeporte=codigo
where codigodeporte is null;

select documento
from inscriptos as i
left join deportes as d
on codigodeporte=codigo
where codigo is null;

select documento,nombre,profesor,matricula
from inscriptos as i
full join deportes as d
on codigodeporte=codigo; 

-- 46 - Combinaciones cruzadas (cross join)
-- problema solucionado 

if object_id('comidas') is not null
drop table comidas;
if object_id('postres') is not null
drop table postres;

create table comidas(
codigo tinyint identity,
nombre varchar(30),
precio decimal(4,2)
);

create table postres(
codigo tinyint identity,
nombre varchar(30),
precio decimal(4,2)
);

insert into comidas values('ravioles',5);
insert into comidas values('tallarines',4);
insert into comidas values('milanesa',7);
insert into comidas values('cuarto de pollo',6);

insert into postres values('flan',2.5);
insert into postres values('porcion torta',3.5);

select c.nombre as 'plato principal',
p.nombre as 'postre',
c.precio+p.precio as 'total'
from comidas as c
cross join postres as p;

-- primer problema 

if object_id('mujeres') is not null
drop table mujeres;
if object_id('varones') is not null
drop table varones;

create table mujeres(
nombre varchar(30),
domicilio varchar(30),
edad int
);

create table varones(
nombre varchar(30),
domicilio varchar(30),
edad int
);

insert into mujeres values('Maria Lopez','Colon 123',45);
insert into mujeres values('Liliana Garcia','Sucre 456',35);
insert into mujeres values('Susana Lopez','Avellaneda 98',41);

insert into varones values('Juan Torres','Sarmiento 755',44);
insert into varones values('Marcelo Oliva','San Martin 874',56);
insert into varones values('Federico Pereyra','Colon 234',38);
insert into varones values('Juan Garcia','Peru 333',50);

select m.nombre,m.edad,v.nombre,v.edad
from mujeres as m
cross join varones as v;

select m.nombre,m.edad,v.nombre,v.edad
from mujeres as m
cross join varones as v
where m.edad>40 and
v.edad>40;

select m.nombre,m.edad,v.nombre,v.edad
from mujeres as m
cross join varones as v
where m.edad-v.edad between -10 and 10;

-- segundo problema 

if object_id('guardias') is not null
drop table guardias;
if object_id('tareas') is not null
drop table tareas;

create table guardias(
documento char(8),
nombre varchar(30),
sexo char(1), /* 'f' o 'm' */
domicilio varchar(30),
primary key (documento)
);

create table tareas(
codigo tinyint identity,
domicilio varchar(30),
descripcion varchar(30),
horario char(2), /* 'AM' o 'PM'*/
primary key (codigo)
);

insert into guardias values('22333444','Juan Perez','m','Colon 123');
insert into guardias values('24333444','Alberto Torres','m','San Martin 567');
insert into guardias values('25333444','Luis Ferreyra','m','Chacabuco 235');
insert into guardias values('23333444','Lorena Viale','f','Sarmiento 988');
insert into guardias values('26333444','Irma Gonzalez','f','Mariano Moreno 111');

insert into tareas values('Colon 1111','vigilancia exterior','AM');
insert into tareas values('Urquiza 234','vigilancia exterior','PM');
insert into tareas values('Peru 345','vigilancia interior','AM');
insert into tareas values('Avellaneda 890','vigilancia interior','PM');

select nombre,t.domicilio,descripcion
from guardias
cross join tareas as t;

select nombre,t.domicilio,descripcion
from guardias as g
cross join tareas as t
where (g.sexo='f' and t.descripcion='vigilancia interior') or
(g.sexo='m' and t.descripcion='vigilancia exterior');

-- 47 - Combinación de más de dos tablas
-- problema solucionado 

if object_id('libros') is not null
drop table libros;
if object_id('autores') is not null
drop table autores;
if object_id('editoriales') is not null
drop table editoriales;

create table libros(
codigo int identity,
titulo varchar(40),
codigoautor int not null,
codigoeditorial tinyint not null,
precio decimal(5,2),
primary key(codigo)
);

create table autores(
codigo int identity,
nombre varchar(20),
primary key (codigo)
);

create table editoriales(
codigo tinyint identity,
nombre varchar(20),
primary key (codigo)
);

insert into editoriales values('Planeta');
insert into editoriales values('Emece');
insert into editoriales values('Siglo XXI');
insert into editoriales values('Plaza');
 
insert into autores values ('Richard Bach');
insert into autores values ('Borges');
insert into autores values ('Jose Hernandez');
insert into autores values ('Mario Molina');
insert into autores values ('Paenza');
 
insert into libros values('El aleph',2,2,20);
insert into libros values('Martin Fierro',3,1,30);
insert into libros values('Aprenda PHP',4,3,50);
insert into libros values('Uno',1,1,15);
insert into libros values('Java en 10 minutos',0,3,45);
insert into libros values('Matematica estas ahi',0,0,15);
insert into libros values('Java de la A a la Z',4,0,50);

select titulo,a.nombre,e.nombre,precio
from autores as a
join libros as l
on codigoautor=a.codigo
join editoriales as e
on codigoeditorial=e.codigo;

select titulo,a.nombre,e.nombre,precio
from autores as a
right join libros as l
on codigoautor=a.codigo
left join editoriales as e
on codigoeditorial=e.codigo;

-- primer problema 

if object_id('socios') is not null
drop table socios;
if object_id('deportes') is not null
drop table deportes;
if object_id('inscriptos') is not null
drop table inscriptos;

create table socios(
documento char(8) not null, 
nombre varchar(30),
domicilio varchar(30),
primary key(documento)
);

create table deportes(
codigo tinyint identity,
nombre varchar(20),
profesor varchar(15),
primary key(codigo)
);

create table inscriptos(
documento char(8) not null, 
codigodeporte tinyint not null,
anio char(4),
matricula char(1),--'s'=paga, 'n'=impaga
primary key(documento,codigodeporte,anio)
);

insert into socios values('22222222','Ana Acosta','Avellaneda 111');
insert into socios values('23333333','Betina Bustos','Bulnes 222');
insert into socios values('24444444','Carlos Castro','Caseros 333');
insert into socios values('25555555','Daniel Duarte','Dinamarca 44');

insert into deportes values('basquet','Juan Juarez');
insert into deportes values('futbol','Pedro Perez');
insert into deportes values('natacion','Marina Morales');
insert into deportes values('tenis','Marina Morales');

insert into inscriptos values ('22222222',3,'2006','s');
insert into inscriptos values ('23333333',3,'2006','s');
insert into inscriptos values ('24444444',3,'2006','n');

insert into inscriptos values ('22222222',3,'2005','s');
insert into inscriptos values ('22222222',3,'2007','n');

insert into inscriptos values ('24444444',1,'2006','s');
insert into inscriptos values ('24444444',2,'2006','s');

insert into inscriptos values ('26666666',0,'2006','s');

select s.nombre,d.nombre,anio
from deportes as d
right join inscriptos as i
on codigodeporte=d.codigo
left join socios as s
on i.documento=s.documento;

select s.nombre,d.nombre,anio,matricula
from deportes as d
full join inscriptos as i
on codigodeporte=d.codigo
full join socios as s
on s.documento=i.documento;

select s.nombre,d.nombre,anio,matricula
from deportes as d
join inscriptos as i
on codigodeporte=d.codigo
join socios as s
on s.documento=i.documento
where s.documento='22222222';

-- 48 - Combinaciones con update y delete
-- problema solucionado 

if object_id('libros') is not null
drop table libros;

if object_id('editoriales') is not null
drop table editoriales;

create table libros(
codigo int identity,
titulo varchar(40),
autor varchar(30) default 'Desconocido',
codigoeditorial tinyint not null,
precio decimal(5,2)
);

create table editoriales(
codigo tinyint identity,
nombre varchar(20),
primary key (codigo)
);

insert into editoriales values('Planeta');
insert into editoriales values('Emece');
insert into editoriales values('Siglo XXI');

insert into libros values('El aleph','Borges',2,20);
insert into libros values('Martin Fierro','Jose Hernandez',1,30);
insert into libros values('Aprenda PHP','Mario Molina',3,50);
insert into libros values('Java en 10 minutos',default,3,45);

update libros set precio=precio+(precio*0.1)
from libros 
join editoriales as e
on codigoeditorial=e.codigo
where nombre='Planeta';

select titulo,autor,e.nombre,precio
from libros as l
join editoriales as e
on codigoeditorial=e.codigo;

delete libros
from libros
join editoriales
on codigoeditorial = editoriales.codigo
where editoriales.nombre='Emece';

select titulo,autor,e.nombre,precio
from libros as l
join editoriales as e
on codigoeditorial=e.codigo;

-- 49 - Clave foránea

-- 50 - Unión
-- problema solucionado 

if object_id('alumnos') is not null
drop table alumnos;

if object_id('profesores') is not null
drop table profesores;

create table profesores(
documento varchar(8) not null,
nombre varchar (30),
domicilio varchar(30),
primary key(documento)
);

create table alumnos(
documento varchar(8) not null,
nombre varchar (30),
domicilio varchar(30),
primary key(documento)
);

insert into alumnos values('30000000','Juan Perez','Colon 123');
insert into alumnos values('30111111','Marta Morales','Caseros 222');
insert into alumnos values('30222222','Laura Torres','San Martin 987');
insert into alumnos values('30333333','Mariano Juarez','Avellaneda 34');
insert into alumnos values('23333333','Federico Lopez','Colon 987');
insert into profesores values('22222222','Susana Molina','Sucre 345');
insert into profesores values('23333333','Federico Lopez','Colon 987');

select nombre, domicilio from alumnos
union
select nombre, domicilio from profesores;

select nombre, domicilio from alumnos
union all
select nombre, domicilio from profesores;

select nombre, domicilio from alumnos
union
select nombre, domicilio from profesores
order by domicilio;

select nombre, domicilio, 'alumno' as condicion from alumnos
union
select nombre, domicilio,'profesor' from profesores
order by condicion;


-- primer problema 

if object_id('clientes') is not null
drop table clientes;
if object_id('proveedores') is not null
drop table proveedores;
if object_id('empleados') is not null
drop table empleados;

create table proveedores(
codigo int identity,
nombre varchar (30),
domicilio varchar(30),
primary key(codigo)
);

create table clientes(
codigo int identity,
nombre varchar (30),
domicilio varchar(30),
primary key(codigo)
);

create table empleados(
documento char(8) not null,
nombre varchar(20),
apellido varchar(20),
domicilio varchar(30),
primary key(documento)
);

insert into proveedores values('Bebida cola','Colon 123');
insert into proveedores values('Carnes Unica','Caseros 222');
insert into proveedores values('Lacteos Blanca','San Martin 987');
insert into clientes values('Supermercado Lopez','Avellaneda 34');
insert into clientes values('Almacen Anita','Colon 987');
insert into clientes values('Garcia Juan','Sucre 345');
insert into empleados values('23333333','Federico','Lopez','Colon 987');
insert into empleados values('28888888','Ana','Marquez','Sucre 333');
insert into empleados values('30111111','Luis','Perez','Caseros 956');

select nombre, domicilio from proveedores
union
select nombre, domicilio from clientes
union
select (apellido+' '+nombre), domicilio from empleados;

select nombre, domicilio, 'proveedor' as categoria from proveedores
union
select nombre, domicilio, 'cliente' from clientes
union
select (apellido+' '+nombre), domicilio , 'empleado' from empleados
order by categoria;

-- 51  - Agregar y eliminar campos ( alter table - add - drop)
-- problema solucionado 

if object_id('libros') is not null
drop table libros;

create table libros(
titulo varchar(30),
editorial varchar(15),
edicion datetime,
precio decimal(6,2)
);

insert into libros (titulo,editorial,precio)
values ('El aleph','Emece',25.50);

alter table libros
add cantidad tinyint;

exec sp_columns libros;

alter table libros
add codigo int identity;

alter table libros
add autor varchar(30) not null;

alter table libros
add autor varchar(20) not null default 'Desconocido';

alter table libros
drop column precio;

exec sp_columns libros;

alter table libros
drop column autor;

alter table libros
drop column editorial,edicion;

-- primer problema 

if object_id('empleados') is not null
drop table empleados;

create table empleados(
apellido varchar(20),
nombre varchar(20),
domicilio varchar(30),
fechaingreso datetime
);

insert into empleados(apellido,nombre) values ('Rodriguez','Pablo');

alter table empleados
add sueldo decimal(5,2);

exec sp_columns empleados;

alter table empleados
add codigo int identity;

alter table empleados
add documento char(8) not null;

alter table empleados
add documento char(8) not null default '00000000';

exec sp_columns empleados;

alter table empleados
drop column sueldo;

exec sp_columns empleados;

alter table empleados
drop column documento;

alter table empleados
drop column codigo,fechaingreso;

exec sp_columns empleados;

-- 52  - Alterar campos (alter table - alter)
-- problema solucionado 

if object_id('libros') is not null
drop table libros;

create table libros(
codigo int identity,
titulo varchar(30),
autor varchar(30),
editorial varchar(15),
precio decimal(6,2) not null default 0
);

insert into libros
values('El aleph','Borges','Planeta',20);
insert into libros
values('Java en 10 minutos',null,'Siglo XXI',30);
insert into libros
values('Uno','Richard Bach','Planeta',15);
insert into libros
values('Martin Fierro','Jose Hernandez',null,30);
insert into libros
values('Aprenda PHP','Mario Molina','Emece',25);

alter table libros
alter column titulo varchar(40) not null;

delete from libros where autor is null;
alter table libros
alter column autor varchar(30) not null;

alter table libros
alter column codigo smallint;

exec sp_columns libros;

alter table libros
alter column precio decimal(6,2) null;

-- primer problema 

if object_id('empleados') is not null
drop table empleados;

create table empleados(
legajo int not null,
documento char(7) not null,
nombre varchar(10),
domicilio varchar(30),
ciudad varchar(20) default 'Buenos Aires',
sueldo decimal(6,2),
cantidadhijos tinyint default 0,
primary key(legajo)
);

alter table empleados
alter column nombre varchar(30);

sp_columns empleados;

alter table empleados
alter column sueldo decimal(6,2) not null;

alter table empleados
alter column documento char(8) not null;

alter table empleados
alter column legajo tinyint not null;

insert into empleados values(1,'22222222','Juan Perez','Colon 123','Cordoba',500,3);
insert into empleados values(2,'30000000',null,'Sucre 456','Cordoba',600,2);

alter table empleados
alter column nombre varchar(30) not null;

delete from empleados where nombre is null;
alter table empleados
alter column nombre varchar(30) not null;

alter table empleados
alter column ciudad varchar(10);

insert into empleados values(3,'33333333','Juan Perez','Sarmiento 856',default,500,4);

alter table empleados
alter column ciudad varchar(15);

insert into empleados values(3,'33333333','Juan Perez','Sarmiento 856',default,500,4);

alter table empleados
alter column legajo int identity;

-- 53  - Campos calculados
-- problema solucionado 

if object_id('empleados') is not null
drop table empleados;

create table empleados(
documento char(8),
nombre varchar(10),
domicilio varchar(30),
sueldobasico decimal(6,2),
hijos tinyint not null default 0,
sueldototal as sueldobasico + (hijos*100)
);

insert into empleados values('22222222','Juan Perez','Colon 123',300,2);
insert into empleados values('23333333','Ana Lopez','Sucre 234',500,0);

select * from empleados;

update empleados set hijos=1 where documento='23333333';

select * from empleados;

alter table empleados
add salariofamiliar as hijos*100;

exec sp_columns empleados;

select * from empleados;

-- primer problema 

if object_id('articulos') is not null
drop table articulos;

create table articulos(
codigo int identity,
descripcion varchar(30),
precio decimal(5,2) not null,
cantidad smallint not null default 0,
montototal as precio *cantidad
);

insert into articulos values('birome',1.5,100,150);

insert into articulos values('birome',1.5,100);
insert into articulos values('cuaderno 12 hojas',4.8,150);
insert into articulos values('lapices x 12',5,200);

select * from articulos;

update articulos set precio=2 where descripcion='birome';
select * from articulos;

update articulos set cantidad=200 where descripcion='birome';
select * from articulos;

update articulos set montototal=300 where descripcion='birome';

-- 54 - Subconsultas 

-- 55 - Subconsultas como expresión
-- problema solucionado 

if object_id('libros') is not null
drop table libros;

create table libros(
codigo int identity,
titulo varchar(40),
autor varchar(30),
editorial varchar(20),
precio decimal(5,2)
);

insert into libros values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',20.00);
insert into libros values('Alicia en el pais de las maravillas','Lewis Carroll','Plaza',35.00);
insert into libros values('Aprenda PHP','Mario Molina','Siglo XXI',40.00);
insert into libros values('El aleph','Borges','Emece',10.00);
insert into libros values('Ilusiones','Richard Bach','Planeta',15.00);
insert into libros values('Java en 10 minutos','Mario Molina','Siglo XXI',50.00);
insert into libros values('Martin Fierro','Jose Hernandez','Planeta',20.00);
insert into libros values('Martin Fierro','Jose Hernandez','Emece',30.00);
insert into libros values('Uno','Richard Bach','Planeta',10.00);

select titulo,precio,
precio-(select max(precio) from libros) as diferencia
from libros
where titulo='Uno';

select titulo,autor, precio
from libros
where precio=
(select max(precio) from libros);

update libros set precio=45
where precio=
(select max(precio) from libros);

delete from libros
where precio=
(select min(precio) from libros);

-- primer problema 

if object_id('alumnos') is not null
drop table alumnos;

create table alumnos(
documento char(8),
nombre varchar(30),
nota decimal(4,2),
primary key(documento),
constraint CK_alumnos_nota_valores check (nota>=0 and nota <=10),
);

insert into alumnos values('30111111','Ana Algarbe',5.1);
insert into alumnos values('30222222','Bernardo Bustamante',3.2);
insert into alumnos values('30333333','Carolina Conte',4.5);
insert into alumnos values('30444444','Diana Dominguez',9.7);
insert into alumnos values('30555555','Fabian Fuentes',8.5);
insert into alumnos values('30666666','Gaston Gonzalez',9.70);

select alumnos.*
from alumnos
where nota=
(select max(nota) from alumnos);

select documento ,nombre, nota
from alumnos
where nota=
(select nombre,max(nota) from alumnos);

select alumnos.*,
(select avg(nota) from alumnos)-nota as diferencia
from alumnos
where nota<
(select avg(nota) from alumnos);

update alumnos set nota=4
where nota=
(select min(nota) from alumnos);

delete from alumnos
where nota<
(select avg(nota) from alumnos);

-- 56 - Subconsultas con in
-- problema solucionado 

if object_id('libros') is not null
drop table libros;
if object_id('editoriales') is not null
drop table editoriales;

create table editoriales(
codigo tinyint identity,
nombre varchar(30),
primary key (codigo)
);
 
create table libros (
codigo int identity,
titulo varchar(40),
autor varchar(30),
codigoeditorial tinyint,
primary key(codigo),
constraint FK_libros_editorial
foreign key (codigoeditorial)
references editoriales(codigo)
on update cascade,
);

insert into editoriales values('Planeta');
insert into editoriales values('Emece');
insert into editoriales values('Paidos');
insert into editoriales values('Siglo XXI');

insert into libros values('Uno','Richard Bach',1);
insert into libros values('Ilusiones','Richard Bach',1);
insert into libros values('Aprenda PHP','Mario Molina',4);
insert into libros values('El aleph','Borges',2);
insert into libros values('Puente al infinito','Richard Bach',2);

select nombre
from editoriales
where codigo in
(select codigoeditorial
    from libros
    where autor='Richard Bach');

select codigoeditorial
from libros
where autor='Richard Bach';

select distinct nombre
from editoriales as e
join libros
on codigoeditorial=e.codigo
where autor='Richard Bach';

select nombre
from editoriales
where codigo not in
(select codigoeditorial
    from libros
    where autor='Richard Bach');

-- primer problema 

if (object_id('ciudades')) is not null
drop table ciudades;
if (object_id('clientes')) is not null
drop table clientes;

create table ciudades(
codigo tinyint identity,
nombre varchar(20),
primary key (codigo)
);

create table clientes (
codigo int identity,
nombre varchar(30),
domicilio varchar(30),
codigociudad tinyint not null,
primary key(codigo),
constraint FK_clientes_ciudad
foreign key (codigociudad)
references ciudades(codigo)
on update cascade,
);

insert into ciudades (nombre) values('Cordoba');
insert into ciudades (nombre) values('Cruz del Eje');
insert into ciudades (nombre) values('Carlos Paz');
insert into ciudades (nombre) values('La Falda');
insert into ciudades (nombre) values('Villa Maria');

insert into clientes values ('Lopez Marcos','Colon 111',1);
insert into clientes values ('Lopez Hector','San Martin 222',1);
insert into clientes values ('Perez Ana','San Martin 333',2);
insert into clientes values ('Garcia Juan','Rivadavia 444',3);
insert into clientes values ('Perez Luis','Sarmiento 555',3);
insert into clientes values ('Gomez Ines','San Martin 666',4);
insert into clientes values ('Torres Fabiola','Alem 777',5);
insert into clientes values ('Garcia Luis','Sucre 888',5);

select nombre
from ciudades
where codigo in
(select codigociudad
    from clientes
    where domicilio like 'San Martin %');

select distinct ci.nombre
from ciudades as ci
join clientes as cl
on codigociudad=ci.codigo
where domicilio like 'San Martin%';

select nombre
from ciudades
where codigo not in
(select codigociudad
    from clientes
    where nombre like 'G%');

select codigociudad
from clientes
where nombre like 'G%';

-- 57 - Subconsultas any - some - all
-- problema solucionado 

if object_id('libros') is not null
drop table libros;
if object_id('editoriales') is not null
drop table editoriales;

create table editoriales(
codigo tinyint identity,
nombre varchar(30),
primary key (codigo)
);
 
create table libros (
codigo int identity,
titulo varchar(40),
autor varchar(30),
codigoeditorial tinyint,
precio decimal(5,2),
primary key(codigo),
constraint FK_libros_editorial
foreign key (codigoeditorial)
references editoriales(codigo)
on update cascade,
);

insert into editoriales values('Planeta');
insert into editoriales values('Emece');
insert into editoriales values('Paidos');
insert into editoriales values('Siglo XXI');

insert into libros values('Uno','Richard Bach',1,15);
insert into libros values('Ilusiones','Richard Bach',4,18);
insert into libros values('Puente al infinito','Richard Bach',2,19);
insert into libros values('Aprenda PHP','Mario Molina',4,40);
insert into libros values('El aleph','Borges',2,10);
insert into libros values('Antología','Borges',1,20);
insert into libros values('Cervantes y el quijote','Borges',3,25);

select titulo
from libros
where autor like '%Borges%' and
codigoeditorial = any
(select e.codigo
from editoriales as e
join libros as l
on codigoeditorial=e.codigo
where l.autor like '%Bach%');

select titulo,precio
from libros
where autor like '%Borges%' and
precio > any
(select precio
from libros
where autor like '%Bach%');

select titulo,precio
from libros
where autor like '%Borges%' and
precio > all
(select precio
from libros
where autor like '%Bach%');

delete from libros
where autor like '%Borges%' and
precio > all
(select precio
from libros
where autor like '%Bach%');

-- primer problema 

if object_id('inscriptos') is not null
drop table inscriptos;
if object_id('socios') is not null
drop table socios;

create table socios(
numero int identity,
documento char(8),
nombre varchar(30),
domicilio varchar(30),
primary key (numero)
);
 
create table inscriptos (
numerosocio int not null,
deporte varchar(20) not null,
cuotas tinyint
constraint CK_inscriptos_cuotas
check (cuotas>=0 and cuotas<=10)
constraint DF_inscriptos_cuotas default 0,
primary key(numerosocio,deporte),
constraint FK_inscriptos_socio
foreign key (numerosocio)
references socios(numero)
on update cascade
on delete cascade,
);

insert into socios values('23333333','Alberto Paredes','Colon 111');
insert into socios values('24444444','Carlos Conte','Sarmiento 755');
insert into socios values('25555555','Fabian Fuentes','Caseros 987');
insert into socios values('26666666','Hector Lopez','Sucre 344');

insert into inscriptos values(1,'tenis',1);
insert into inscriptos values(1,'basquet',2);
insert into inscriptos values(1,'natacion',1);
insert into inscriptos values(2,'tenis',9);
insert into inscriptos values(2,'natacion',1);
insert into inscriptos values(2,'basquet',default);
insert into inscriptos values(2,'futbol',2);
insert into inscriptos values(3,'tenis',8);
insert into inscriptos values(3,'basquet',9);
insert into inscriptos values(3,'natacion',0);
insert into inscriptos values(4,'basquet',10);

select numero,nombre,deporte
from socios as s
join inscriptos as i
on numerosocio=numero;

select nombre
from socios
join inscriptos as i
on numero=numerosocio
where deporte='natacion' and 
numero= any
(select numerosocio
from inscriptos as i
where deporte='tenis');

select deporte
from inscriptos as i
where numerosocio=1 and
deporte= any
(select deporte
from inscriptos as i
where numerosocio=2);

select i1.deporte
from inscriptos as i1
join inscriptos as i2
on i1.deporte=i2.deporte
where i1.numerosocio=1 and
i2.numerosocio=2;

select deporte
from inscriptos as i
where numerosocio=2 and
cuotas>any
(select cuotas
from inscriptos
where numerosocio=1);

select deporte
from inscriptos as i
where numerosocio=2 and
cuotas>all
(select cuotas
from inscriptos
where numerosocio=1);

delete from inscriptos
where numerosocio=any
(select numerosocio 
from inscriptos
where cuotas=0);

-- 58 - Subconsultas correlacionadas
-- problema solucionado 

if object_id('detalles') is not null
drop table detalles;
if object_id('facturas') is not null
drop table facturas;

create table facturas(
numero int not null,
fecha datetime,
cliente varchar(30),
primary key(numero)
);

create table detalles(
numerofactura int not null,
numeroitem int not null, 
articulo varchar(30),
precio decimal(5,2),
cantidad int,
primary key(numerofactura,numeroitem),
constraint FK_detalles_numerofactura
foreign key (numerofactura)
references facturas(numero)
on update cascade
on delete cascade,
);

insert into facturas values(1200,'2018-01-15','Juan Lopez');
insert into facturas values(1201,'2018-01-15','Luis Torres');
insert into facturas values(1202,'2018-01-15','Ana Garcia');
insert into facturas values(1300,'2018-01-20','Juan Lopez');

insert into detalles values(1200,1,'lapiz',1,100);
insert into detalles values(1200,2,'goma',0.5,150);
insert into detalles values(1201,1,'regla',1.5,80);
insert into detalles values(1201,2,'goma',0.5,200);
insert into detalles values(1201,3,'cuaderno',4,90);
insert into detalles values(1202,1,'lapiz',1,200);
insert into detalles values(1202,2,'escuadra',2,100);
insert into detalles values(1300,1,'lapiz',1,300);

select f.*,
(select count(d.numeroitem)
from detalles as d
where f.numero=d.numerofactura) as cantidad,
(select sum(d.precio*cantidad)
from detalles as d
where f.numero=d.numerofactura) as total
from facturas as f;

-- primer problema 

if object_id('inscriptos') is not null
drop table inscriptos;
if object_id('socios') is not null
drop table socios;

create table socios(
numero int identity,
documento char(8),
nombre varchar(30),
domicilio varchar(30),
primary key (numero)
);
 
create table inscriptos (
numerosocio int not null,
deporte varchar(20) not null,
cuotas tinyint
constraint CK_inscriptos_cuotas
check (cuotas>=0 and cuotas<=10)
constraint DF_inscriptos_cuotas default 0,
primary key(numerosocio,deporte),
constraint FK_inscriptos_socio
foreign key (numerosocio)
references socios(numero)
on update cascade
on delete cascade,
);

insert into socios values('23333333','Alberto Paredes','Colon 111');
insert into socios values('24444444','Carlos Conte','Sarmiento 755');
insert into socios values('25555555','Fabian Fuentes','Caseros 987');
insert into socios values('26666666','Hector Lopez','Sucre 344');

insert into inscriptos values(1,'tenis',1);
insert into inscriptos values(1,'basquet',2);
insert into inscriptos values(1,'natacion',1);
insert into inscriptos values(2,'tenis',9);
insert into inscriptos values(2,'natacion',1);
insert into inscriptos values(2,'basquet',default);
insert into inscriptos values(2,'futbol',2);
insert into inscriptos values(3,'tenis',8);
insert into inscriptos values(3,'basquet',9);
insert into inscriptos values(3,'natacion',0);
insert into inscriptos values(4,'basquet',10);

select nombre,domicilio,
(select count(*)
from inscriptos as i
where s.numero=i.numerosocio) as 'deportes'
from socios as s;

select nombre,
(select (count(*)*10)
from inscriptos as i
where s.numero=i.numerosocio) as total,
(select sum(i.cuotas)
from inscriptos as i
where s.numero=i.numerosocio) as pagas
from socios as s;

select nombre,
count(i.deporte)*10 as total,
sum(i.cuotas) as pagas
from socios as s
join inscriptos as i
on numero=numerosocio
group by nombre;

-- 59 - Subconsulta - Exists y Not Exists
-- problema solucionado 

if object_id('detalles') is not null
drop table detalles;
if object_id('facturas') is not null
drop table facturas;

create table facturas(
numero int not null,
fecha datetime,
cliente varchar(30),
primary key(numero)
);

create table detalles(
numerofactura int not null,
numeroitem int not null, 
articulo varchar(30),
precio decimal(5,2),
cantidad int,
primary key(numerofactura,numeroitem),
constraint FK_detalles_numerofactura
foreign key (numerofactura)
references facturas(numero)
on update cascade
on delete cascade
);

insert into facturas values(1200,'2018-01-15','Juan Lopez');
insert into facturas values(1201,'2018-01-15','Luis Torres');
insert into facturas values(1202,'2018-01-15','Ana Garcia');
insert into facturas values(1300,'2018-01-20','Juan Lopez');

insert into detalles values(1200,1,'lapiz',1,100);
insert into detalles values(1200,2,'goma',0.5,150);
insert into detalles values(1201,1,'regla',1.5,80);
insert into detalles values(1201,2,'goma',0.5,200);
insert into detalles values(1201,3,'cuaderno',4,90);
insert into detalles values(1202,1,'lapiz',1,200);
insert into detalles values(1202,2,'escuadra',2,100);
insert into detalles values(1300,1,'lapiz',1,300);

select cliente,numero
from facturas as f
where exists
(select *from detalles as d
    where f.numero=d.numerofactura
    and d.articulo='lapiz');

select cliente,numero
from facturas as f
where not exists
(select *from detalles as d
    where f.numero=d.numerofactura
    and d.articulo='lapiz');

-- primer problema 

if object_id('inscriptos') is not null
drop table inscriptos;
if object_id('socios') is not null
drop table socios;

create table socios(
numero int identity,
documento char(8),
nombre varchar(30),
domicilio varchar(30),
primary key (numero)
);
 
create table inscriptos (
numerosocio int not null,
deporte varchar(20) not null,
cuotas tinyint
constraint CK_inscriptos_cuotas
check (cuotas>=0 and cuotas<=10)
constraint DF_inscriptos_cuotas default 0,
primary key(numerosocio,deporte),
constraint FK_inscriptos_socio
foreign key (numerosocio)
references socios(numero)
on update cascade
on delete cascade,
);

insert into socios values('23333333','Alberto Paredes','Colon 111');
insert into socios values('24444444','Carlos Conte','Sarmiento 755');
insert into socios values('25555555','Fabian Fuentes','Caseros 987');
insert into socios values('26666666','Hector Lopez','Sucre 344');

insert into inscriptos values(1,'tenis',1);
insert into inscriptos values(1,'basquet',2);
insert into inscriptos values(1,'natacion',1);
insert into inscriptos values(2,'tenis',9);
insert into inscriptos values(2,'natacion',1);
insert into inscriptos values(2,'basquet',default);
insert into inscriptos values(2,'futbol',2);
insert into inscriptos values(3,'tenis',8);
insert into inscriptos values(3,'basquet',9);
insert into inscriptos values(3,'natacion',0);
insert into inscriptos values(4,'basquet',10);

select nombre
from socios as s
where exists
(select *from inscriptos as i
    where s.numero=i.numerosocio
    and i.deporte='natacion');

select nombre
from socios as s
where not exists
(select *from inscriptos as i
    where s.numero=i.numerosocio
    and i.deporte='natacion');

select s.*
from socios as s
where exists
(select *from inscriptos as i
    where s.numero=i.numerosocio
    and i.cuotas=10);

-- 60 - Subconsulta en lugar de una tabla
-- problema solucionado 

if object_id('detalles') is not null
drop table detalles;
if object_id('facturas') is not null
drop table facturas;
if object_id('clientes') is not null
drop table clientes;

create table clientes(
codigo int identity,
nombre varchar(30),
domicilio varchar(30),
primary key(codigo)
);

create table facturas(
numero int not null,
fecha datetime,
codigocliente int not null,
primary key(numero),
constraint FK_facturas_cliente
foreign key (codigocliente)
references clientes(codigo)
on update cascade
);

create table detalles(
numerofactura int not null,
numeroitem int not null, 
articulo varchar(30),
precio decimal(5,2),
cantidad int,
primary key(numerofactura,numeroitem),
constraint FK_detalles_numerofactura
foreign key (numerofactura)
references facturas(numero)
on update cascade
on delete cascade,
);

insert into clientes values('Juan Lopez','Colon 123');
insert into clientes values('Luis Torres','Sucre 987');
insert into clientes values('Ana Garcia','Sarmiento 576');

insert into facturas values(1200,'2018-01-15',1);
insert into facturas values(1201,'2018-01-15',2);
insert into facturas values(1202,'2018-01-15',3);
insert into facturas values(1300,'2018-01-20',1);

insert into detalles values(1200,1,'lapiz',1,100);
insert into detalles values(1200,2,'goma',0.5,150);
insert into detalles values(1201,1,'regla',1.5,80);
insert into detalles values(1201,2,'goma',0.5,200);
insert into detalles values(1201,3,'cuaderno',4,90);
insert into detalles values(1202,1,'lapiz',1,200);
insert into detalles values(1202,2,'escuadra',2,100);
insert into detalles values(1300,1,'lapiz',1,300);

select f.*,
(select sum(d.precio*cantidad)
from detalles as d
where f.numero=d.numerofactura) as total
from facturas as f;

select td.numero,c.nombre,td.total
from clientes as c
join (select f.*,
(select sum(d.precio*cantidad)
from detalles as d
where f.numero=d.numerofactura) as total
from facturas as f) as td
on td.codigocliente=c.codigo;

-- primer problema 

if object_id('inscriptos') is not null
drop table inscriptos;
if object_id('socios') is not null
drop table socios;
if object_id('deportes') is not null
drop table deportes;

create table socios(
documento char(8) not null, 
nombre varchar(30),
domicilio varchar(30),
primary key(documento)
);

create table deportes(
codigo tinyint identity,
nombre varchar(20),
profesor varchar(15),
primary key(codigo)
);

create table inscriptos(
documento char(8) not null, 
codigodeporte tinyint not null,
año char(4),
matricula char(1),--'s'=paga, 'n'=impaga
primary key(documento,codigodeporte,año),
constraint FK_inscriptos_socio
foreign key (documento)
references socios(documento)
on update cascade
on delete cascade
);

insert into socios values('22222222','Ana Acosta','Avellaneda 111');
insert into socios values('23333333','Betina Bustos','Bulnes 222');
insert into socios values('24444444','Carlos Castro','Caseros 333');
insert into socios values('25555555','Daniel Duarte','Dinamarca 44');

insert into deportes values('basquet','Juan Juarez');
insert into deportes values('futbol','Pedro Perez');
insert into deportes values('natacion','Marina Morales');
insert into deportes values('tenis','Marina Morales');

insert into inscriptos values ('22222222',3,'2006','s');
insert into inscriptos values ('23333333',3,'2006','s');
insert into inscriptos values ('24444444',3,'2006','n');
insert into inscriptos values ('22222222',3,'2005','s');
insert into inscriptos values ('22222222',3,'2007','n');
insert into inscriptos values ('24444444',1,'2006','s');
insert into inscriptos values ('24444444',2,'2006','s');

select i.documento,i.codigodeporte,d.nombre as deporte, año, matricula, d.profesor
from deportes as d
join inscriptos as i
on d.codigo=i.codigodeporte;

select s.nombre,td.deporte,td.profesor,td.año,td.matricula
from socios as s
join (select i.documento,i.codigodeporte,d.nombre as deporte, año, matricula, d.profesor
from deportes as d
join inscriptos as i
on d.codigo=i.codigodeporte) as td
on td.documento=s.documento;

-- 61 - Subconsulta (update - delete)
-- problema solucionado 

if object_id('libros') is not null
drop table libros;
if object_id('editoriales') is not null
drop table editoriales;

create table editoriales(
codigo tinyint identity,
nombre varchar(30),
primary key (codigo)
);
 
create table libros (
codigo int identity,
titulo varchar(40),
autor varchar(30),
codigoeditorial tinyint,
precio decimal(5,2),
primary key(codigo)
);

insert into editoriales values('Planeta');
insert into editoriales values('Emece');
insert into editoriales values('Paidos');
insert into editoriales values('Siglo XXI');

insert into libros values('Uno','Richard Bach',1,15);
insert into libros values('Ilusiones','Richard Bach',2,20);
insert into libros values('El aleph','Borges',3,10);
insert into libros values('Aprenda PHP','Mario Molina',4,40);
insert into libros values('Poemas','Juan Perez',1,20);
insert into libros values('Cuentos','Juan Perez',3,25);
insert into libros values('Java en 10 minutos','Marcelo Perez',2,30);

update libros set precio=precio+(precio*0.1)
where codigoeditorial=
(select codigo
    from editoriales
    where nombre='Emece');

delete from libros
where codigoeditorial in
(select e.codigo
from editoriales as e
join libros
on codigoeditorial=e.codigo
where autor='Juan Perez');

-- primer problema 

if object_id('inscriptos') is not null
drop table inscriptos;
if object_id('socios') is not null
drop table socios;

create table socios(
numero int identity,
documento char(8),
nombre varchar(30),
domicilio varchar(30),
primary key (numero)
);
 
create table inscriptos (
numerosocio int not null,
deporte varchar(20) not null,
matricula char(1),-- 'n' o 's'
primary key(numerosocio,deporte),
constraint FK_inscriptos_socio
foreign key (numerosocio)
references socios(numero)
);

insert into socios values('23333333','Alberto Paredes','Colon 111');
insert into socios values('24444444','Carlos Conte','Sarmiento 755');
insert into socios values('25555555','Fabian Fuentes','Caseros 987');
insert into socios values('26666666','Hector Lopez','Sucre 344');

insert into inscriptos values(1,'tenis','s');
insert into inscriptos values(1,'basquet','s');
insert into inscriptos values(1,'natacion','s');
insert into inscriptos values(2,'tenis','s');
insert into inscriptos values(2,'natacion','s');
insert into inscriptos values(2,'basquet','n');
insert into inscriptos values(2,'futbol','n');
insert into inscriptos values(3,'tenis','s');
insert into inscriptos values(3,'basquet','s');
insert into inscriptos values(3,'natacion','n');
insert into inscriptos values(4,'basquet','n');

update inscriptos set matricula='s'
where numerosocio=
(select numero
    from socios
    where documento='25555555');

delete from inscriptos
where numerosocio in
(select numero
from socios as s
join inscriptos
on numerosocio=numero
where matricula='n');

-- 62 - Subconsulta (insert)
-- problema solucionado 

if object_id('alumnos') is not null
drop table alumnos;
if object_id('aprobados') is not null
drop table aprobados;

create table alumnos(
documento char(8) not null,
nombre varchar(30),
nota decimal(4,2)
constraint CK_alumnos_nota_valores check (nota>=0 and nota <=10),
primary key(documento),
);

create table aprobados(
documento char(8) not null,
nota decimal(4,2)
constraint CK_aprobados_nota_valores check (nota>=0 and nota <=10),
primary key(documento),
);

insert into alumnos values('30000000','Ana Acosta',8);
insert into alumnos values('30111111','Betina Bustos',9);
insert into alumnos values('30222222','Carlos Caseros',2.5); 
insert into alumnos values('30333333','Daniel Duarte',7.7);
insert into alumnos values('30444444','Estela Esper',3.4);

insert into aprobados 
select documento,nota
from alumnos
where nota>=4;

select * from aprobados;

-- primer problema 

if object_id('facturas') is not null
drop table facturas;
if object_id('clientes') is not null
drop table clientes;

create table clientes(
codigo int identity,
nombre varchar(30),
domicilio varchar(30),
primary key(codigo)
);

create table facturas(
numero int not null,
fecha datetime,
codigocliente int not null,
total decimal(6,2),
primary key(numero),
constraint FK_facturas_cliente
foreign key (codigocliente)
references clientes(codigo)
on update cascade
);

insert into clientes values('Juan Lopez','Colon 123');
insert into clientes values('Luis Torres','Sucre 987');
insert into clientes values('Ana Garcia','Sarmiento 576');
insert into clientes values('Susana Molina','San Martin 555');

insert into facturas values(1200,'2007-01-15',1,300);
insert into facturas values(1201,'2007-01-15',2,550);
insert into facturas values(1202,'2007-01-15',3,150);
insert into facturas values(1300,'2007-01-20',1,350);
insert into facturas values(1310,'2007-01-22',3,100);

if object_id ('clientespref') is not null
drop table clientespref;
create table clientespref(
nombre varchar(30),
domicilio varchar(30)
);

insert into clientespref
select nombre,domicilio
from clientes 
where codigo in 
(select codigocliente
    from clientes as c
    join facturas as f
    on codigocliente=codigo
    group by codigocliente
    having sum(total)>500);

select * from clientespref;

-- 63 - Crear tabla a partir de otra (select - into)
-- problema solucionado 

if object_id('libros')is not null
drop table libros;
if object_id('editoriales')is not null
drop table editoriales;

create table libros( 
codigo int identity,
titulo varchar(40) not null,
autor varchar(30),
editorial varchar(20),
precio decimal(5,2),
primary key(codigo)
); 

insert into libros values('Uno','Richard Bach','Planeta',15);
insert into libros values('El aleph','Borges','Emece',25);
insert into libros values('Matematica estas ahi','Paenza','Nuevo siglo',18);
insert into libros values('Aprenda PHP','Mario Molina','Nuevo siglo',45);
insert into libros values('Ilusiones','Richard Bach','Planeta',14);
insert into libros values('Java en 10 minutos','Mario Molina','Nuevo siglo',50);

select distinct editorial as nombre
into editoriales
from libros;

select *from editoriales;

if object_id('cantidadporeditorial') is not null
drop table cantidadporeditorial;

select editorial as nombre,count(*) as cantidad
into cantidadporeditorial
from libros
group by editorial;

select *from cantidadporeditorial;

if object_id('ofertas4') is not null
drop table ofertas4;

select top 4 *
into ofertas4
from libros
order by precio asc;

select *from ofertas4;

alter table editoriales add ciudad varchar(30);

go

update editoriales set ciudad='Cordoba' where nombre='Planeta';
update editoriales set ciudad='Cordoba' where nombre='Emece';
update editoriales set ciudad='Buenos Aires' where nombre='Nuevo siglo';

if object_id('librosdecordoba') is not null
drop table librosdecordoba;

select titulo,autor
into librosdecordoba
from libros
join editoriales
on editorial=nombre 
where ciudad='Cordoba';

select *from librosdecordoba;

-- primer problema 

if object_id('empleados')is not null
drop table empleados;
if object_id('sucursales')is not null
drop table sucursales;

create table sucursales( 
codigo int identity,
ciudad varchar(30) not null,
primary key(codigo)
); 

create table empleados( 
documento char(8) not null,
nombre varchar(30) not null,
domicilio varchar(30),
seccion varchar(20),
sueldo decimal(6,2),
codigosucursal int,
primary key(documento),
constraint FK_empleados_sucursal
foreign key (codigosucursal)
references sucursales(codigo)
on update cascade
); 

insert into sucursales values('Cordoba');
insert into sucursales values('Villa Maria');
insert into sucursales values('Carlos Paz');
insert into sucursales values('Cruz del Eje');

insert into empleados values('22222222','Ana Acosta','Avellaneda 111','Secretaria',500,1);
insert into empleados values('23333333','Carlos Caseros','Colon 222','Sistemas',800,1);
insert into empleados values('24444444','Diana Dominguez','Dinamarca 333','Secretaria',550,2);
insert into empleados values('25555555','Fabiola Fuentes','Francia 444','Sistemas',750,2);
insert into empleados values('26666666','Gabriela Gonzalez','Guemes 555','Secretaria',580,3);
insert into empleados values('27777777','Juan Juarez','Jujuy 777','Secretaria',500,4);
insert into empleados values('28888888','Luis Lopez','Lules 888','Sistemas',780,4);
insert into empleados values('29999999','Maria Morales','Marina 999','Contaduria',670,4);

select documento,nombre,domicilio,seccion,sueldo,ciudad
from empleados
join sucursales on codigosucursal=codigo;

if object_id('secciones') is not null
drop table secciones;

select distinct seccion as nombre
into secciones
from empleados;

select *from secciones;

if object_id('sueldosxseccion') is not null
drop table sueldosxseccion;

select seccion, sum(sueldo) as total
into sueldosxseccion
from empleados
group by seccion;

select *from sueldosxseccion;

if object_id('maximossueldos') is not null
drop table maximossueldos;

select top 3 *
into maximossueldos
from empleados
order by sueldo;

select *from maximossueldos;

if object_id('sucursalCordoba') is not null
drop table sucursalCordoba;

select nombre,ciudad
into sucursalCordoba
from empleados
join sucursales
on codigosucursal=codigo
where ciudad='Cordoba';

select *from sucursalCordoba;

-- 64 - Go

-- 65 - Vistas
-- problema solucionado 

if object_id('empleados') is not null
drop table empleados;
if object_id('secciones') is not null
drop table secciones;

create table secciones(
codigo tinyint identity,
nombre varchar(20),
sueldo decimal(5,2)
constraint CK_secciones_sueldo check (sueldo>=0),
constraint PK_secciones primary key (codigo)
);

create table empleados(
legajo int identity,
documento char(8)
constraint CK_empleados_documento check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
sexo char(1)
constraint CK_empleados_sexo check (sexo in ('f','m')),
apellido varchar(20),
nombre varchar(20),
domicilio varchar(30),
seccion tinyint not null,
cantidadhijos tinyint
constraint CK_empleados_hijos check (cantidadhijos>=0),
estadocivil char(10)
constraint CK_empleados_estadocivil check (estadocivil in ('casado','divorciado','soltero','viudo')),
fechaingreso datetime,
constraint PK_empleados primary key (legajo),
constraint FK_empleados_seccion
foreign key (seccion)
references secciones(codigo)
on update cascade,
constraint UQ_empleados_documento
unique(documento)
);

insert into secciones values('Administracion',300);
insert into secciones values('Contaduría',400);
insert into secciones values('Sistemas',500);

insert into empleados values('22222222','f','Lopez','Ana','Colon 123',1,2,'casado','1990-10-10');
insert into empleados values('23333333','m','Lopez','Luis','Sucre 235',1,0,'soltero','1990-02-10');
insert into empleados values('24444444','m','Garcia','Marcos','Sarmiento 1234',2,3,'divorciado','1998-07-12');
insert into empleados values('25555555','m','Gomez','Pablo','Bulnes 321',3,2,'casado','1998-10-09');
insert into empleados values('26666666','f','Perez','Laura','Peru 1254',3,3,'casado','2000-05-09');

if object_id('vista_empleados') is not null
drop view vista_empleados;

create view vista_empleados as
select (apellido+' '+e.nombre) as nombre,sexo,
s.nombre as seccion, cantidadhijos
from empleados as e
join secciones as s
on codigo=seccion;

select *from vista_empleados;

select seccion,count(*) as cantidad
from vista_empleados
group by seccion;

if object_id('vista_empleados_ingreso') is not null
drop view vista_empleados_ingreso;

create view vista_empleados_ingreso (fecha,cantidad)
as
select datepart(year,fechaingreso),count(*)
from empleados
group by datepart(year,fechaingreso);

select *from vista_empleados_ingreso;

-- primer problema 

if object_id('inscriptos') is not null  
drop table inscriptos;
if object_id('socios') is not null  
drop table socios;
if object_id('profesores') is not null  
drop table profesores; 
if object_id('cursos') is not null  
drop table cursos;

create table socios(
documento char(8) not null,
nombre varchar(40),
domicilio varchar(30),
constraint PK_socios_documento
primary key (documento)
);

create table profesores(
documento char(8) not null,
nombre varchar(40),
domicilio varchar(30),
constraint PK_profesores_documento
primary key (documento)
);

create table cursos(
numero tinyint identity,
deporte varchar(20),
dia varchar(15),
constraint CK_inscriptos_dia check (dia in('lunes','martes','miercoles','jueves','viernes','sabado')),
documentoprofesor char(8),
constraint PK_cursos_numero
primary key (numero),
);

create table inscriptos(
documentosocio char(8) not null,
numero tinyint not null,
matricula char(1),
constraint CK_inscriptos_matricula check (matricula in('s','n')),
constraint PK_inscriptos_documento_numero
primary key (documentosocio,numero)
);

insert into socios values('30000000','Fabian Fuentes','Caseros 987');
insert into socios values('31111111','Gaston Garcia','Guemes 65');
insert into socios values('32222222','Hector Huerta','Sucre 534');
insert into socios values('33333333','Ines Irala','Bulnes 345');

insert into profesores values('22222222','Ana Acosta','Avellaneda 231');
insert into profesores values('23333333','Carlos Caseres','Colon 245');
insert into profesores values('24444444','Daniel Duarte','Sarmiento 987');
insert into profesores values('25555555','Esteban Lopez','Sucre 1204');

insert into cursos values('tenis','lunes','22222222');
insert into cursos values('tenis','martes','22222222');
insert into cursos values('natacion','miercoles','22222222');
insert into cursos values('natacion','jueves','23333333');
insert into cursos values('natacion','viernes','23333333');
insert into cursos values('futbol','sabado','24444444');
insert into cursos values('futbol','lunes','24444444');
insert into cursos values('basquet','martes','24444444');

insert into inscriptos values('30000000',1,'s');
insert into inscriptos values('30000000',3,'n');
insert into inscriptos values('30000000',6,null);
insert into inscriptos values('31111111',1,'s');
insert into inscriptos values('31111111',4,'s');
insert into inscriptos values('32222222',8,'s');

if object_id('vista_club') is not null drop view vista_club;

create view vista_club as
select s.nombre as socio,s.documento as docsocio,s.domicilio as domsocio,c.deporte,dia,
p.nombre as profesor, matricula
from socios as s
full join inscriptos as i
on s.documento=i.documentosocio
full join cursos as c
on i.numero=c.numero
full join profesores as p
on c.documentoprofesor=p.documento;

select *from vista_club;

select deporte,dia,count(socio) as cantidad
from vista_club
where deporte is not null
group by deporte,dia
order by cantidad;

select deporte,dia from vista_club
where socio is null and deporte is not null;

select socio from vista_club
where deporte is null and socio is not null;

select profesor from vista_club where deporte is null and profesor is not null;

select socio, docsocio from vista_club where deporte is not null and matricula <> 's';

select distinct profesor,dia
from vista_club where profesor is not null;

select distinct profesor,dia
from vista_club where profesor is not null
order by dia;

select socio from vista_club
where deporte='tenis' and dia='lunes';

if object_id('vista_inscriptos') is not null
drop view vista_inscriptos;

create view vista_inscriptos as
select deporte,dia,
(select count(*)
from inscriptos as i
where i.numero=c.numero) as cantidad
from cursos as c;

select *from vista_inscriptos;

-- 66 - Vistas (información)

-- problema solucionado 

if object_id('empleados') is not null
drop table empleados;
if object_id('secciones') is not null
drop table secciones;

create table secciones(
codigo tinyint identity,
nombre varchar(20),
sueldo decimal(5,2)
constraint CK_secciones_sueldo check (sueldo>=0),
constraint PK_secciones primary key (codigo)
);

create table empleados(
legajo int identity,
documento char(8)
constraint CK_empleados_documento check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
sexo char(1)
constraint CK_empleados_sexo check (sexo in ('f','m')),
apellido varchar(20),
nombre varchar(20),
domicilio varchar(30),
seccion tinyint not null,
cantidadhijos tinyint
constraint CK_empleados_hijos check (cantidadhijos>=0),
estadocivil char(10)
constraint CK_empleados_estadocivil check (estadocivil in ('casado','divorciado','soltero','viudo')),
fechaingreso datetime,
constraint PK_empleados primary key (legajo),
constraint FK_empleados_seccion
foreign key (seccion)
references secciones(codigo)
on update cascade,
constraint UQ_empleados_documento
unique(documento)
);

insert into secciones values('Administracion',300);
insert into secciones values('Contaduría',400);
insert into secciones values('Sistemas',500);

insert into empleados values('22222222','f','Lopez','Ana','Colon 123',1,2,'casado','1990-10-10');
insert into empleados values('23333333','m','Lopez','Luis','Sucre 235',1,0,'soltero','1990-02-10');
insert into empleados values('24444444','m','Garcia','Marcos','Sarmiento 1234',2,3,'divorciado','1998-07-12');
insert into empleados values('25555555','m','Gomez','Pablo','Bulnes 321',3,2,'casado','1998-10-09');
insert into empleados values('26666666','f','Perez','Laura','Peru 1254',3,3,'casado','2000-05-09');

if object_id('vista_empleados') is not null
drop view vista_empleados;

create view vista_empleados as
select (apellido+' '+e.nombre) as nombre,sexo,
s.nombre as seccion, cantidadhijos
from empleados as e
join secciones as s
on codigo=seccion;

select *from vista_empleados;

exec sp_help vista_empleados;

exec sp_helptext vista_empleados;

exec sp_depends vista_empleados;

exec sp_depends empleados;

select * from sysobjects;

select * from sysobjects
where xtype='V' and-- tipo vista
name like 'vista%'--búsqueda con comodín ;

-- 67 - Lenguaje de control de flujo (case)

-- problema solucionado 

if object_id('alumnos') is not null
drop table alumnos;

create table alumnos(
nombre varchar(40),
nota tinyint,
constraint CK_alunos_nota check (nota>=0 and nota<=10)
);

insert into alumnos values('Ana Acosta',8);
insert into alumnos values('Carlos Caseres',4);
insert into alumnos values('Federico Fuentes',2);
insert into alumnos values('Gaston Guzman',3);
insert into alumnos values('Hector Herrero',5);
insert into alumnos values('Luis Luna',10);
insert into alumnos values('Marcela Morales',7);
insert into alumnos values('Marcela Morales',null);

select nombre,nota, condicion=
case nota
when 0 then 'libre'
when 1 then 'libre'
when 2 then 'libre'
when 3 then 'libre'
when 4 then 'regular'
when 5 then 'regular'
when 6 then 'regular'
when 7 then 'promocionado'
when 8 then 'promocionado'
when 9 then 'promocionado'
when 10 then 'promocionado'
end
from alumnos;

select nombre, nota, condicion=
case 
when nota<4 then 'libre'
when nota >=4 and nota<7 then 'regular'
when nota>=7 then 'promocionado'
else 'sin nota'
end
from alumnos;

alter table alumnos
add condicion varchar(20);

select *from alumnos;

update alumnos set condicion=
case
when nota<4 then 'libre'
when nota between 4 and 7 then 'regular'
when nota >7 then 'promocionado'
end;

select *from alumnos;

select condicion, count(*) as cantidad,resultado=
case condicion
when 'libre' then 'repitentes'
when 'regular' then 'rinden final'
when 'promocionado' then 'no rinden final'
else 'sin datos'
end
from alumnos
group by condicion
order by cantidad;

-- primer problema 

if object_id('empleados') is not null
drop table empleados;

create table empleados(
documento char(8) not null,
nombre varchar(30) not null,
sexo char(1),
fechanacimiento datetime,
fechaingreso datetime,
cantidadhijos tinyint,
sueldo decimal(5,2),
primary key(documento)
);

insert into empleados values ('22333111','Juan Perez','m','1970-05-10','1987-04-05',2,550);
insert into empleados values ('25444444','Susana Morales','f','1975-11-06','1990-04-06',0,650);
insert into empleados values ('20111222','Hector Pereyra','m','1965-03-25','1997-04-12',3,510);
insert into empleados values ('30000222','Luis LUque','m','1980-03-29','1999-11-06',1,700);
insert into empleados values ('20555444','Laura Torres','f','1965-12-22','2003-11-06',3,400);
insert into empleados values ('30000234','Alberto Soto','m','1989-10-10','1999-11-06',2,420);
insert into empleados values ('20125478','Ana Gomez','f','1976-09-21','1998-11-06',3,350);
insert into empleados values ('24154269','Ofelia Garcia','f','1974-05-12','1990-11-06',0,390);
insert into empleados values ('30415426','Oscar Torres','m','1978-05-02','1997-11-06',1,400);

select sexo, count(*) as cantidad, obsequio=
case 
when sexo='f' then 'rosas'
else 'corbata'
end
from empleados
where datepart(month,fechanacimiento)=5
group by sexo;

select nombre,datepart(year,fechaingreso) as añoingreso,
datepart(year,getdate())-datepart(year,fechaingreso) as AñosdeServicio, placa=
case (datepart(year,getdate())-datepart(year,fechaingreso)) %10
    when 0 then 'Si'  --si la cantidad de años es divisible por 10
    else 'No'
end
from empleados
where datepart(month,fechaingreso)=4;

select nombre,sueldo,cantidadhijos,porhijo=
case 
when sueldo<=500 then 200
else 100
end,
salariofamilar=
case
when sueldo<=500 then 200*cantidadhijos
else 100*cantidadhijos
end,
sueldototal=
case
when sueldo<=500 then sueldo+(200*cantidadhijos)
else sueldo+(100*cantidadhijos)
end
from empleados
order by sueldototal;

-- 68 - Lenguaje de control de flujo (if)
-- problema solucionado 

if object_id('libros') is not null
drop table libros;

create table libros(
codigo int identity,
titulo varchar(40) not null,
autor varchar(30),
editorial varchar(20),
precio decimal(5,2),
cantidad tinyint,
primary key (codigo)
);

insert into libros values('Uno','Richard Bach','Planeta',15,100);
insert into libros values('El aleph','Borges','Emece',20,150);
insert into libros values('Aprenda PHP','Mario Molina','Nuevo siglo',50,200);
insert into libros values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,0);
insert into libros values('Java en 10 minutos','Mario Molina','Emece',40,200);

if exists (select *from libros where cantidad=0)
(select titulo from libros where cantidad=0)
else
select 'No hay libros sin stock';

if exists (select * from libros where editorial='Emece')
begin
update libros set precio=precio-(precio*0.1) where editorial='Emece'
select 'libros actualizados'
end
else
select 'no hay registros actualizados';

select * from libros where editorial='Emece';

if exists (select * from libros where cantidad=0)
delete from libros where cantidad=0
else
select 'No hay registros eliminados';

if exists (select * from libros where cantidad=0)
delete from libros where cantidad=0
else
select 'No hay registros eliminados';

select titulo,costo=iif(precio<38,'barato','caro') from libros;

-- primer problema 

if object_id('empleados') is not null
drop table empleados;

create table empleados(
documento char(8) not null,
nombre varchar(30) not null,
sexo char(1),
fechanacimiento datetime,
sueldo decimal(5,2),
primary key(documento)
);

insert into empleados values ('22333111','Juan Perez','m','1970-05-10',550);
insert into empleados values ('25444444','Susana Morales','f','1975-11-06',650);
insert into empleados values ('20111222','Hector Pereyra','m','1965-03-25',510);
insert into empleados values ('30000222','Luis LUque','m','1980-03-29',700);
insert into empleados values ('20555444','Laura Torres','f','1965-12-22',400);
insert into empleados values ('30000234','Alberto Soto','m','1989-10-10',420);
insert into empleados values ('20125478','Ana Gomez','f','1976-09-21',350);
insert into empleados values ('24154269','Ofelia Garcia','f','1974-05-12',390);
insert into empleados values ('30415426','Oscar Torres','m','1978-05-02',400);

if exists(select * from empleados
	where datepart(month,fechanacimiento)=5)--si hay empleados que cumplan en mayo
(select sexo,count(*) as cantidad 
from empleados
where datepart(month,fechanacimiento)=5
group by sexo)
else select 'no hay empleados que cumplan en mayo';

-- segundo problema

if object_id('entradas') is not null
drop table entradas;

create table entradas(
sala tinyint,
fechahora datetime,
capacidad smallint,
entradasvendidas smallint,
primary key(sala,fechahora)
);

insert into entradas values(1,'2006-05-10 20:00',300,50);
insert into entradas values(1,'2006-05-10 23:00',300,250);
insert into entradas values(2,'2006-05-10 20:00',400,350);
insert into entradas values(2,'2006-05-11 20:00',400,380);
insert into entradas values(2,'2006-05-11 23:00',400,400);
insert into entradas values(3,'2006-05-12 20:00',350,350);
insert into entradas values(3,'2006-05-12 22:30',350,100);
insert into entradas values(4,'2006-05-12 20:00',250,0);

if exists
(select * from entradas where capacidad>entradasvendidas)
select sala,fechahora,capacidad-entradasvendidas as disponibles
from entradas
where capacidad>entradasvendidas
else select 'Todas las entradas estan agotadas';

-- 69 - Procedimientos almacenados

-- 70 - Procedimientos almacenados (crear - ejecutar)
-- problema solucionado 

if object_id('pa_crear_libros') is not null
drop procedure pa_crear_libros;

create procedure pa_crear_libros 
as
if object_id('libros')is not null
drop table libros
 
create table libros(
codigo int identity,
titulo varchar(40),
autor varchar(30),
editorial varchar(20),
precio decimal(5,2),
cantidad smallint,
primary key(codigo)
)

insert into libros values('Uno','Richard Bach','Planeta',15,5)
insert into libros values('Ilusiones','Richard Bach','Planeta',18,50)
insert into libros values('El aleph','Borges','Emece',25,9)
insert into libros values('Aprenda PHP','Mario Molina','Nuevo siglo',45,100)
insert into libros values('Matematica estas ahi','Paenza','Nuevo siglo',12,50)
insert into libros values('Java en 10 minutos','Mario Molina','Paidos',35,300);

exec pa_crear_libros;

select *from libros;

exec sp_help pa_crear_libros;

if object_id('pa_libros_limite_stock') is not null
drop procedure pa_libros_limite_stock;
 
create proc pa_libros_limite_stock
as
select *from libros
where cantidad <=10;

exec sp_help pa_libros_limite_stock;

exec pa_libros_limite_stock;

update libros set cantidad=2 where codigo=4;
exec pa_libros_limite_stock;

-- primer problema 

if object_id('empleados') is not null
drop table empleados;

create table empleados(
documento char(8),
nombre varchar(20),
apellido varchar(20),
sueldo decimal(6,2),
cantidadhijos tinyint,
seccion varchar(20),
primary key(documento)
);

insert into empleados values('22222222','Juan','Perez',300,2,'Contaduria');
insert into empleados values('22333333','Luis','Lopez',300,0,'Contaduria');
insert into empleados values ('22444444','Marta','Perez',500,1,'Sistemas');
insert into empleados values('22555555','Susana','Garcia',400,2,'Secretaria');
insert into empleados values('22666666','Jose Maria','Morales',400,3,'Secretaria');

if object_id('pa_empleados_sueldo') is not null
drop procedure pa_empleados_sueldo;

create procedure pa_empleados_sueldo
as
select nombre,apellido,sueldo
from empleados;

exec pa_empleados_sueldo;

if object_id('pa_empleados_hijos') is not null
drop procedure pa_empleados_hijos;

create procedure pa_empleados_hijos
as
select nombre,apellido,cantidadhijos
from empleados
where cantidadhijos>0;

exec pa_empleados_hijos;

update empleados set cantidadhijos=1 where documento='22333333';
exec pa_empleados_hijos;

-- 71 - Tablas temporales

create table #usuarios(
nombre varchar(30),
clave varchar(10)
primary key(nombre)
);

insert into #usuarios (nombre, clave) values ('Mariano','payaso');

select * from #usuarios;

insert into #usuarios (clave, nombre) values ('River','Juan');

select * from #usuarios;

insert into #usuarios (nombre,clave) values ('Boca','Luis');

select * from #usuarios;

-- 72 - Funciones

-- 73 - Funciones escalares (crear y llamar)
-- problema solucionado 

if object_id('empleados') is not null
drop table empleados;

create table empleados(
documento char(8) not null,
nombre varchar(30),
fechaingreso datetime,
mail varchar(50),
telefono varchar(12)
);

insert into empleados values('22222222', 'Ana Acosta','1985/10/10','anaacosta@gmail.com','4556677');
insert into empleados values('23333333', 'Bernardo Bustos', '1986/02/15',null,'4558877');
insert into empleados values('24444444', 'Carlos Caseros','1999/12/02',null,null);
insert into empleados values('25555555', 'Diana Dominguez',null,null,'4252525');

if object_id('dbo.f_fechaCadena') is not null
drop function dbo.f_fechaCadena;

create function f_fechaCadena
(@fecha varchar(25))
returns varchar(25)
as
begin
declare @nombre varchar(25)
set @nombre='Fecha inválida'   
if (isdate(@fecha)=1)
begin
    set @fecha=cast(@fecha as datetime)
    set @nombre=
    case datename(month,@fecha)
    when 'January' then 'Enero'
    when 'February' then 'Febrero'
    when 'March' then 'Marzo'
    when 'April' then 'Abril'
    when 'May' then 'Mayo'
    when 'June' then 'Junio'
    when 'July' then 'Julio'
    when 'August' then 'Agosto'
    when 'September' then 'Setiembre'
    when 'October' then 'Octubre'
    when 'November' then 'Noviembre'
    when 'December' then 'Diciembre'
    end--case
    set @nombre=rtrim(cast(datepart(day,@fecha) as char(2)))+' de '+@nombre
    set @nombre=@nombre+' de '+ rtrim(cast(datepart(year,@fecha)as char(4)))
end--si es una fecha válida
return @nombre
end;

select nombre, dbo.f_fechaCadena(fechaingreso) as ingreso from empleados;

select dbo.f_fechaCadena(getdate());

-- primer problema 

if object_id('consultas') is not null
drop table consultas;
if object_id('medicos') is not null
drop table medicos;

create table medicos (
documento char(8) not null,
nombre varchar(30),
constraint PK_medicos 
primary key clustered (documento)
);

create table consultas(
fecha datetime,
medico char(8) not null,
paciente varchar(30),
constraint PK_consultas
primary key (fecha,medico),
constraint FK_consultas_medico
foreign key (medico)
references medicos(documento)
on update cascade
on delete cascade
);

insert into medicos values('22222222','Alfredo Acosta');
insert into medicos values('23333333','Pedro Perez');
insert into medicos values('24444444','Marcela Morales');

insert into consultas values('2007/03/26 8:00','22222222','Juan Juarez');
insert into consultas values('2007/03/26 8:00','23333333','Gaston Gomez');
insert into consultas values('2007/03/26 8:30','22222222','Nora Norte');
insert into consultas values('2007/03/28 9:00','22222222','Juan Juarez');
insert into consultas values('2007/03/29 8:00','24444444','Nora Norte');
insert into consultas values('2007/03/24 8:30','22222222','Hector Huerta'); 
insert into consultas values('2007/03/24 9:30','23333333','Hector Huerta');

if object_id('f_nombreDia') is not null
drop function f_nombreDia;

create function f_nombreDia
(@fecha varchar(30))
returns varchar(10)
as
begin
declare @nombre varchar(10)
set @nombre='Fecha inválida'   
if (isdate(@fecha)=1)
begin
    set @fecha=cast(@fecha as datetime)
    set @nombre=
    case datename(weekday,@fecha)
    when 'Monday' then 'lunes'
    when 'Tuesday' then 'martes'
    when 'Wednesday' then 'miércoles'
    when 'Thursday' then 'jueves'
    when 'Friday' then 'viernes'
    when 'Saturday' then 'sábado'
    when 'Sunday' then 'domingo'
    end--case
end--si es una fecha válida
return @nombre
end;
 
if object_id('f_horario') is not null
drop function f_horario;

create function f_horario
(@fecha varchar(30))
returns varchar(5)
as
begin
declare @nombre varchar(5)
set @nombre='Fecha inválida'   
if (isdate(@fecha)=1)
begin
    set @fecha=cast(@fecha as datetime)
    set @nombre=rtrim(cast(datepart(hour,@fecha) as char(2)))+':'
    set @nombre=@nombre+rtrim(cast(datepart(minute,@fecha) as char(2)))
end--si es una fecha válida
return @nombre
end;

if object_id('f_fecha') is not null
drop function f_fecha;

create function f_fecha
(@fecha varchar(30))
returns varchar(12)
as
begin
declare @nombre varchar(12)
set @nombre='Fecha inválida'   
if (isdate(@fecha)=1)
begin
    set @fecha=cast(@fecha as datetime)
    set @nombre=rtrim(cast(datepart(day,@fecha) as char(2)))+'/'
    set @nombre=@nombre+rtrim(cast(datepart(month,@fecha) as char(2)))+'/'
    set @nombre=@nombre+rtrim(cast(datepart(year,@fecha) as char(4)))
end--si es una fecha válida
return @nombre
end;

select dbo.f_nombredia(fecha) as dia,
dbo.f_fecha(fecha) as fecha,
dbo.f_horario(fecha) as horario,
paciente
from consultas as c
join medicos as m
on m.documento=c.medico
where m.nombre='Alfredo Acosta';

select fecha, m.nombre
from consultas as c
join medicos as m
on m.documento=c.medico
where dbo.f_nombredia(fecha)='sábado';

declare @valor char(30)
set @valor='2007/04/09'
select dbo.f_nombreDia(@valor);

-- 74 - Funciones de tabla de varias instrucciones
-- problema solucionado 

if object_id('libros') is not null
drop table libros; 

create table libros(
codigo int identity,
titulo varchar(40),
autor varchar(30),
editorial varchar(20),
precio decimal(6,2)
);

insert into libros values('Uno','Richard Bach','Planeta',15);
insert into libros values('Ilusiones','Richard Bach','Planeta',10);
insert into libros values('El aleph','Borges','Emece',25);
insert into libros values('Aprenda PHP','Mario Molina','Siglo XXI',55);
insert into libros values('Alicia en el pais','Lewis Carroll','Paidos',35);
insert into libros values('Matematica estas ahi','Paenza','Nuevo siglo',25);

if object_id('f_ofertas') is not null
drop function f_ofertas; 

create function f_ofertas
(@minimo decimal(6,2)
)
returns @ofertas table-- nombre de la tabla
--formato de la tabla
(codigo int,
titulo varchar(40),
autor varchar(30),
precio decimal(6,2)
)
as
begin
insert @ofertas
select codigo,titulo,autor,precio
from libros
where precio<@minimo
return
end;

select *from f_ofertas(30);

select l.titulo,l.autor,l.editorial
from libros as l
join dbo.f_ofertas(25) as o
on l.codigo=o.codigo
where l.autor='Richard Bach';

select titulo,precio from f_ofertas(40)
where autor like '%B%';

if object_id('f_listadolibros') is not null
drop function f_listadolibros; 

create function f_listadolibros
(@opcion varchar(10)
)
returns @listado table
(titulo varchar(40),
detalles varchar(60)
)
as 
begin
if @opcion not in ('autor','editorial')
set @opcion='autor'
if @opcion='editorial'
insert @listado 
select titulo,
(editorial+'-'+autor) from libros
order by 2
else
if @opcion='autor'
    insert @listado
    select titulo,
    (autor+'-'+editorial) from libros  
    order by 2
return
end;

select *from dbo.f_listadolibros('autor');

select *from dbo.f_listadolibros('editorial');

select *from dbo.f_listadolibros('precio');

-- primer problema 

if object_id('empleados') is not null
drop table empleados;

create table empleados(
documento char(8) not null,
apellido varchar(30) not null,
nombre varchar(30) not null,
domicilio varchar(30),
ciudad varchar(30),
fechanacimiento datetime,
constraint PK_empleados
primary key(documento)
);

insert into empleados values('22222222','Acosta','Ana','Avellaneda 123','Cordoba','1970/10/10');
insert into empleados values('23333333','Bustos','Bernardo','Bulnes 234','Cordoba','1972/05/15');
insert into empleados values('24444444','Caseros','Carlos','Colon 356','Carlos Paz','1980/02/25');
insert into empleados values('25555555','Fuentes','Fabiola','Fragueiro 987','Jesus Maria','1984/06/12');

if object_id('f_empleados') is not null
drop function f_empleados;

create function f_empleados
(@opcion varchar(10)
)
returns @listado table
(documento char(8),
nombre varchar(60),
domicilio varchar(60),
nacimiento varchar(12))
as 
begin
if @opcion not in ('total','parcial')
set @opcion='parcial'
if @opcion='total'
insert @listado 
select documento,
(apellido+' '+nombre),
(domicilio+' ('+ciudad+')'), 
cast(fechanacimiento as varchar(12))
    from empleados
else
insert @listado
select documento,apellido,ciudad,cast(datepart(year,fechanacimiento) as char(4))
from empleados
return
end;

select *from dbo.f_empleados('total');

select *from dbo.f_empleados();

select *from dbo.f_empleados('');

select *from dbo.f_empleados('parcial')
where domicilio='Cordoba';

-- 75 - Funciones con valores de tabla en línea
-- problema solucionado 

if object_id('libros') is not null
drop table libros;

create table libros(
codigo int identity,
titulo varchar(40),
autor varchar(30),
editorial varchar(20)
);

insert into libros values('Uno','Richard Bach','Planeta');
insert into libros values('El aleph','Borges','Emece');
insert into libros values('Ilusiones','Richard Bach','Planeta');
insert into libros values('Aprenda PHP','Mario Molina','Nuevo siglo');
insert into libros values('Matematica estas ahi','Paenza','Nuevo siglo');

if object_id('f_libros') is not null
drop function f_libros;

create function f_libros
(@autor varchar(30)='Borges')
returns table
as
return (
select titulo,editorial
from libros
where autor like '%'+@autor+'%'
);

select *from f_libros('Bach');

if object_id('f_libros_autoreditorial') is not null
drop function f_libros_autoreditorial;

create function f_libros_autoreditorial
(@autor varchar(30)='Borges',
@editorial varchar(20)='Emece')
returns table
as
return (
select titulo,autor,editorial
from libros
where autor like '%'+@autor+'%' and
editorial like '%'+@editorial+'%'
);

select *from f_libros_autoreditorial('','Nuevo siglo');

select *from f_libros_autoreditorial(default,default);
