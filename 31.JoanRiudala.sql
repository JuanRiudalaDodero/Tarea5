drop database tienda_libros_v1;

create database tienda_libros_v1;

use tienda_libros_v1;

-- --------------------------------

create table libros (
	lib_isbn varchar(20) primary key,
    lib_titulo varchar(45) not null,
    lib_autor varchar(90) not null,
	lib_edicion varchar(45) not null,
    lib_codest int unsigned not null,
    lib_codcat int unsigned not null
);

create table estanterias (
	est_codest int unsigned primary key,
	est_ubicacion varchar(90) not null
);

create table capitulos (
	cap_codcap int unsigned primary key,
    cap_numero int unsigned not null,
    cap_titulo varchar(45) not null,
    cap_contenido varchar(12000) not null,
    cap_isbn varchar(20) not null
);

create table categorias (
	cat_codcat int unsigned primary key,
    cat_nombre varchar(45) not null
);

-- ---------------------------------------------------------

alter table libros add foreign key LIB_EST_FK (lib_codest) references estanterias (est_codest);
alter table libros add foreign key LIB_CAT_FK (lib_codcat) references categorias (cat_codcat);
alter table capitulos add foreign key CAP_LIB_FK (cap_isbn) references libros (lib_isbn);

-- ----------------------------------------------------------

insert into estanterias(est_codest, est_ubicacion) values(1,'Entrada derecha');
insert into estanterias(est_codest, est_ubicacion) values(2,'Entrada izquierda');
insert into estanterias(est_codest, est_ubicacion) values(3,'Fondo derecha');
insert into estanterias(est_codest, est_ubicacion) values(4,'Fondo izquierda');

select * from estanterias;

insert into categorias(cat_codcat, cat_nombre) values(1,'Aventuras');
insert into categorias(cat_codcat, cat_nombre) values(2,'Comics');
insert into categorias(cat_codcat, cat_nombre) values(3,'Educacion');
insert into categorias(cat_codcat, cat_nombre) values(4,'Medicina');
insert into categorias(cat_codcat, cat_nombre) values(5,'Romance');
insert into categorias(cat_codcat, cat_nombre) values(6,'Suspense');

select * from categorias;

insert into libros(lib_isbn, lib_titulo, lib_autor, lib_edicion, lib_codest, lib_codcat) values(9780393045147, 'don quixote', 'Miguel de Cervantes', 'Norton Critical', 1, 1);
insert into libros(lib_isbn, lib_titulo, lib_autor, lib_edicion, lib_codest, lib_codcat) values(9783522128001, 'La historia interminable', 'Michael Ende', 'German edition', 1, 1);
insert into libros(lib_isbn, lib_titulo, lib_autor, lib_edicion, lib_codest, lib_codcat) values(9780439023481, 'Los juegos del hambre', 'Suzanne Collins', 'Kindle edition', 1, 2);
insert into libros(lib_isbn, lib_titulo, lib_autor, lib_edicion, lib_codest, lib_codcat) values(9788423974214, 'la colmena', 'Camilo José Cela', 'Edicion conmemorativa', 2, 2);
insert into libros(lib_isbn, lib_titulo, lib_autor, lib_edicion, lib_codest, lib_codcat) values(9788431639211, 'la celestina', 'Fernando de Rojas', 'Primera Edicion', 2, 3);
insert into libros(lib_isbn, lib_titulo, lib_autor, lib_edicion, lib_codest, lib_codcat) values(9788446046394, 'El libro del crimen', 'Varios', 'Segunda Edicion', 2, 3);
insert into libros(lib_isbn, lib_titulo, lib_autor, lib_edicion, lib_codest, lib_codcat) values(9780451166890, 'Los pilares de la tierra', 'Ken Follett', 'Nº1', 3, 4);
insert into libros(lib_isbn, lib_titulo, lib_autor, lib_edicion, lib_codest, lib_codcat) values(9788838432651, 'Geronimo','Elisabetta Dami', 'Unica Edicion', 3, 4);
insert into libros(lib_isbn, lib_titulo, lib_autor, lib_edicion, lib_codest, lib_codcat) values(9780307475732, 'la ladrona de libros', 'Markus Zusak', '', 3, 5);
insert into libros(lib_isbn, lib_titulo, lib_autor, lib_edicion, lib_codest, lib_codcat) values(9780395647400, 'El Señor de los Anillos', 'J. R. R. Tolkien', 'Primera Edicion', 4, 5);
insert into libros(lib_isbn, lib_titulo, lib_autor, lib_edicion, lib_codest, lib_codcat) values(9780439420105, 'Harry Potter y la cámara secreta', 'J. K. Rowling', 'Especial 20 años', 4, 6);
insert into libros(lib_isbn, lib_titulo, lib_autor, lib_edicion, lib_codest, lib_codcat) values(9788995501443, 'Hector y el secreto de la felicidad', 'François Lelord', 'nº1', 4, 6);

select * from libros;

insert into capitulos(cap_codcap, cap_numero, cap_titulo, cap_contenido, cap_isbn) value(1, 1, 'cap 1', 'x', 9780393045147);
insert into capitulos(cap_codcap, cap_numero, cap_titulo, cap_contenido, cap_isbn) value(2, 2, 'cap2', 'hey', 9780393045147);
insert into capitulos(cap_codcap, cap_numero, cap_titulo, cap_contenido, cap_isbn) value(3, 1, 'cap 1', 'x', 9783522128001);
insert into capitulos(cap_codcap, cap_numero, cap_titulo, cap_contenido, cap_isbn) value(4, 2, 'cap2', 'x', 9783522128001);
insert into capitulos(cap_codcap, cap_numero, cap_titulo, cap_contenido, cap_isbn) value(5, 1, 'cap 1', 'x', 9780439023481);
insert into capitulos(cap_codcap, cap_numero, cap_titulo, cap_contenido, cap_isbn) value(6, 2, 'cap2', 'x', 9780439023481);
insert into capitulos(cap_codcap, cap_numero, cap_titulo, cap_contenido, cap_isbn) value(7, 1, 'cap 1', 'x', 9788423974214);
insert into capitulos(cap_codcap, cap_numero, cap_titulo, cap_contenido, cap_isbn) value(8, 2, 'cap2', 'x', 9788423974214);
insert into capitulos(cap_codcap, cap_numero, cap_titulo, cap_contenido, cap_isbn) value(9, 1, 'cap 1', 'x', 9788431639211);
insert into capitulos(cap_codcap, cap_numero, cap_titulo, cap_contenido, cap_isbn) value(10, 2, 'cap2', 'x', 9788431639211);
insert into capitulos(cap_codcap, cap_numero, cap_titulo, cap_contenido, cap_isbn) value(11, 1, 'cap 1', 'x', 9788446046394);
insert into capitulos(cap_codcap, cap_numero, cap_titulo, cap_contenido, cap_isbn) value(12, 2, 'cap2', 'x', 9788446046394);
insert into capitulos(cap_codcap, cap_numero, cap_titulo, cap_contenido, cap_isbn) value(13, 1, 'cap 1', 'x', 9780451166890);
insert into capitulos(cap_codcap, cap_numero, cap_titulo, cap_contenido, cap_isbn) value(14, 2, 'cap2', 'x', 9780451166890);
insert into capitulos(cap_codcap, cap_numero, cap_titulo, cap_contenido, cap_isbn) value(15, 1, 'cap 1', 'x', 9788838432651);
insert into capitulos(cap_codcap, cap_numero, cap_titulo, cap_contenido, cap_isbn) value(16, 2, 'cap2', 'x', 9788838432651);
insert into capitulos(cap_codcap, cap_numero, cap_titulo, cap_contenido, cap_isbn) value(17, 1, 'cap 1', 'x', 9780307475732);
insert into capitulos(cap_codcap, cap_numero, cap_titulo, cap_contenido, cap_isbn) value(18, 2, 'cap2', 'x', 9780307475732);
insert into capitulos(cap_codcap, cap_numero, cap_titulo, cap_contenido, cap_isbn) value(19, 1, 'cap 1', 'x', 9780395647400);
insert into capitulos(cap_codcap, cap_numero, cap_titulo, cap_contenido, cap_isbn) value(20, 2, 'cap2', 'x', 9780395647400);
insert into capitulos(cap_codcap, cap_numero, cap_titulo, cap_contenido, cap_isbn) value(21, 1, 'cap 1', 'x', 9780439420105);
insert into capitulos(cap_codcap, cap_numero, cap_titulo, cap_contenido, cap_isbn) value(22, 2, 'cap2', 'x', 9780439420105);
insert into capitulos(cap_codcap, cap_numero, cap_titulo, cap_contenido, cap_isbn) value(23, 1, 'cap 1', 'x', 9788995501443);
insert into capitulos(cap_codcap, cap_numero, cap_titulo, cap_contenido, cap_isbn) value(24, 2, 'cap2', 'x', 9788995501443);

select * from capitulos;