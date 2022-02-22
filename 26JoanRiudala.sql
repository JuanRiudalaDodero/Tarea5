drop database concesionario;

create database concesionario;

use concesionario;

--  ----------------------------

create table concesionarios (
	con_codcon int unsigned primary key,
	con_nombre varchar(45) not null,
    con_direccion varchar(45) not null,
    con_poblacion varchar(45) not null,
    con_telefono varchar(20) not null
);

create table vehiculos (
	veh_matricula varchar(20) primary key,
	veh_fabricacion YEAR not null,
    veh_marca varchar(45) not null,
    veh_modelo varchar(45) not null,
    veh_color varchar(30) not null,
    veh_codtip int unsigned not null,
    veh_codpro int unsigned not null,
    veh_codven varchar(30),
    veh_codcon int unsigned not null
);

create table propulsiones (
	pro_codpro int unsigned primary key,
	pro_tipo varchar(45) not null
);

create table tipos_vehiculos (
	tip_codtip int unsigned primary key,
	tip_tipo varchar(45) not null
);

create table tipo_vehiculos_propulsiones (
	tvp_codtip int unsigned not null,
    tvp_codpro int unsigned not null,
	primary key (tvp_codtip, tvp_codpro)
);

create table ventas (
	ven_codven varchar(30) primary key,
    ven_fecha DATETIME not null,
    ven_importe FLOAT not null,
    ven_dni varchar(15) not null
);

create table clientes (
	cli_dni varchar(15) primary key,
    cli_nombre varchar(45) not null,
    cli_apellidos varchar(120) not null,
    cli_telefono varchar(20) not null
);

-- ---------------------------------------

alter table tipo_vehiculos_propulsiones add foreign key TVP_TIP_FK (tvp_codtip) references tipos_vehiculos(tip_codtip);
alter table tipo_vehiculos_propulsiones add foreign key TVP_PRO_FK (tvp_codpro) references propulsiones(pro_codpro);
alter table ventas add foreign key VEN_CLI_FK (ven_dni) references clientes(cli_dni);
alter table vehiculos add foreign key VEH_TIP_FK (veh_codtip) references tipos_vehiculos(tip_codtip);
alter table vehiculos add foreign key VEH_PRO_FK (veh_codpro) references propulsiones(pro_codpro);
alter table vehiculos add foreign key VEH_VEN_FK (veh_codven) references ventas(ven_codven);
alter table vehiculos add foreign key VEH_CON_FK (veh_codcon) references concesionarios(con_codcon);
