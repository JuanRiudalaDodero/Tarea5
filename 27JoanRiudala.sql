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
    lib_codcat int not null
);

create table estanterias (
	est_codest int unsigned primary key,
	est_ubicacion varchar(90) not null
);

create table capitulos (
	cap_cadcap int unsigned primary key,
    cap_numero int unsigned not null,
    cap_titulo varchar(45) not null,
    cap_contenido varchar(12000) not null,
    cap_isbn varchar(20) not null
);

create table categorias (
	cat_codcat int unsigned primary key,
    cat_nombre varchar(45) not null
);

-- ----------------------------------

alter table libros add foreign key LIB_EST_FK (lib_codest) references estanterias(est_codest);
alter table capitulos add foreign key CAP_LIB_FK (cap_isbn) references libros(lib_isbn);
alter table libros add foreign key LIB_CAT_FK (lib_codcat) references categorias(cat_codcat);













