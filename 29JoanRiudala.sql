drop database relaciones_personales_v1;

create database relaciones_personales_v1;

use relaciones_personales_v1;

-- -------------------------------
create table hombres(
		hom_codhom int unsigned primary key,
        hom_nombre varchar(60) not null,
        hom_apellido varchar(120) not null,
        hom_direccion varchar(45),
        hom_nacimiento date not null
);

create table mujeres(
		muj_codmuj int unsigned primary key,
        muj_nombre varchar(60) not null,
        muj_apellido varchar(120) not null,
		muj_direccion varchar(45),
        muj_nacimiento date not null
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
	hij_codhij int unsigned primary key,
	hij_nombre varchar(60) not null,
    hij_apellidos varchar(120) not null,
    hij_nacimiento date not null,
    hij_sexo varchar(1) not null check (hij_sexo in ('H','M')),
    hij_codhom int unsigned not null,
    hij_codmuj int unsigned not null
);

create table hobbies(
	hob_codhob int unsigned primary key,
    hob_nombre varchar(60) not null,
	hob_descripcion varchar(500) not null
);

create table hob_hom(
	hoh_codhob int unsigned not null,
	hoh_codhom int unsigned not null,
    primary key(hoh_codhob, hoh_codhom)
);

create table hoj_muj(
	hoj_codhob int unsigned not null,
	hoj_codmuj int unsigned not null,
    primary key(hoj_codhob, hoj_codmuj)
);

create table hoi_hij(
	hoi_codhob int unsigned not null,
	hoi_codhij int unsigned not null,
    primary key(hoi_codhob, hoi_codhij)
);

-- ------------------------------------------------------------

alter table relaciones add foreign key REL_HOM_FK (rel_codhom) references hombres(hom_codhom);
alter table relaciones add foreign key REL_MUJ_FK (rel_codmuj) references mujeres(muj_codmuj);
alter table hijos add foreign key HIJ_REL_FK (hij_codhom, hij_codmuj) references relaciones(rel_codhom, rel_codmuj);
alter table hob_hom add foreign key HOH_HOB_FK (hoh_codhob) references hobbies(hob_codhob);
alter table hob_hom add foreign key HOH_HOM_FK (hoh_codhom) references hombres(hom_codhom);
alter table hoj_muj add foreign key HOJ_HOB_FK (hoj_codhob) references hobbies(hob_codhob);
alter table hoj_muj add foreign key HOJ_MUJ_FK (hoj_codmuj) references mujeres(muj_codmuj);
alter table hoi_hij add foreign key HOI_HOB_FK (hoi_codhob) references hobbies(hob_codhob);
alter table hoi_hij add foreign key HOI_HIJ_FK (hoi_codhij) references hijos(hij_codhij);

-- ------------------------------------------------------------

insert into mujeres(muj_codmuj, muj_nombre, muj_apellido, muj_direccion, muj_nacimineto) values(1,'Maria','Rodriguez','Madrid','1996-04-21');
insert into mujeres(muj_codmuj, muj_nombre, muj_apellido, muj_direccion, muj_nacimineto) values(2,'Ines','Diaz','Mallorca','2003-06-12');
insert into mujeres(muj_codmuj, muj_nombre, muj_apellido, muj_direccion, muj_nacimineto) values(3,'Adriana','Crespo','Menorca','');
insert into mujeres(muj_codmuj, muj_nombre, muj_apellido, muj_direccion, muj_nacimineto) values(4,'Carolina','Vidal','Ibiza','1996-04-21');
insert into mujeres(muj_codmuj, muj_nombre, muj_apellido, muj_direccion, muj_nacimineto) values(5,'Marta','Mingorance','Albacete','');
insert into mujeres(muj_codmuj, muj_nombre, muj_apellido, muj_direccion, muj_nacimineto) values(6,'Maria Teresa','De Guadalupe De La Cruz','Cartegena De Indias','1985-11-02');
insert into mujeres(muj_codmuj, muj_nombre, muj_apellido, muj_direccion, muj_nacimineto) values(7,'Josefina','Perez','Cuenca','');
insert into mujeres(muj_codmuj, muj_nombre, muj_apellido, muj_direccion, muj_nacimineto) values(8,'Balay','Fresh','Lavanderia','2019-07-12');
insert into mujeres(muj_codmuj, muj_nombre, muj_apellido, muj_direccion, muj_nacimineto) values(9,'Nadia','Carretero','Santander','1976-08-12');
insert into mujeres(muj_codmuj, muj_nombre, muj_apellido, muj_direccion, muj_nacimineto) values(10,'Catalina','Dodero','Lugo','1996-04-21');
insert into mujeres(muj_codmuj, muj_nombre, muj_apellido, muj_direccion, muj_nacimineto) values(11,'Margarita','Riera','Bilbao','2003-06-12');
insert into mujeres(muj_codmuj, muj_nombre, muj_apellido, muj_direccion, muj_nacimineto) values(12,'Sonia','Martin','Zaragoza','2006-06-12');
insert into mujeres(muj_codmuj, muj_nombre, muj_apellido, muj_direccion, muj_nacimineto) values(13,'Hector','Heredia','Sevilla','1999-12-29');
insert into mujeres(muj_codmuj, muj_nombre, muj_apellido, muj_direccion, muj_nacimineto) values(14,'Ramon','Artigues','Extremadura','1996-04-21');
insert into mujeres(muj_codmuj, muj_nombre, muj_apellido, muj_direccion, muj_nacimineto) values(15,'Martina','Sastre','Valladolid','1999-12-29');
insert into mujeres(muj_codmuj, muj_nombre, muj_apellido, muj_direccion, muj_nacimineto) values(16,'Gabriella','Garces','Aranda','2003-06-12');
insert into mujeres(muj_codmuj, muj_nombre, muj_apellido, muj_direccion, muj_nacimineto) values(17,'Alicia','Montero','Granada','1950-11-02');
insert into mujeres(muj_codmuj, muj_nombre, muj_apellido, muj_direccion, muj_nacimineto) values(18,'Fatema','Ashalah','Argelia','1990-05-23');
insert into mujeres(muj_codmuj, muj_nombre, muj_apellido, muj_direccion, muj_nacimineto) values(19,'Shun-Chi','Chang','China','1919-01-01');
insert into mujeres(muj_codmuj, muj_nombre, muj_apellido, muj_direccion, muj_nacimineto) values(20,'Taylor','Helyer','Londres','1999-12-29');








