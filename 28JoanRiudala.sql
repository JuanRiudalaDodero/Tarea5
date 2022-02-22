drop database relaciones_personales_v1;

create database relaciones_personales_v1;

use relaciones_personales_v1;

-- -------------------------------
create table hombres(
		hom_codhom int unsigned primary key,
        hom_nombre varchar(45) not null,
        hom_apellido varchar(90) not null,
        hom_direccion varchar(45)
);

create table mujeres(
		muj_codmuj int unsigned primary key,
        muj_nombre varchar(45) not null,
        muj_apellido varchar(90) not null,
		muj_direccion varchar(45)
);

create table relaciones(
	rel_codhom int unsigned not null,
    rel_codmuj int unsigned not null,
	primary key(rel_codhom, rel_codmuj),
    rel_amistad varchar(1),
	rel_pareja varchar(1),
    rel_casados varchar(1),
    rel_divorciados varchar(1)
);

create table hijos(
	hij_codhij int primary key,
	hij_nombre varchar(45) not null,
    hij_apellidos varchar(90) not null,
    hij_nacimiento date not null,
    hij_codhom int unsigned not null,
    hij_codmuj int unsigned not null
);

-- -----------------------------------------

alter table relaciones add foreign key REL_HOM_FK (rel_codhom) references hombres(hom_codhom);
alter table relaciones add foreign key REL_MUJ_FK (rel_codmuj) references mujeres(muj_codmuj);
alter table hijos add foreign key HIJ_REL_FK (hij_codhom, hij_codmuj) references relaciones(rel_codhom, rel_codmuj);



