--********************--****************** Crear tablas de la base de datos --********************--******************

create table productos (
id_producto 		int primary key not null,
id_categoria 		int not null,
codigo			varchar not null,
nombre			varchar not null,
descripcion		varchar not null,
color			varchar not null,
talla			varchar not null,
precio_normal		numeric (8,2) not null,
existencia_actual	double precision not null,
existencia_minima	double precision not null,
existencia_maxima	double precision not null,
status			boolean not null default 't',
unique (codigo)
);

create table categoria_productos (
id_categoria 		int primary key not null,
nombre_categoria	varchar not null,
status			boolean not null default 't'
);

create table imagen_productos (
id_imagenes		int primary key not null,
id_producto		int not null,
ruta_imagen		varchar not null,
status			boolean not null default 't'
);

create table ofertas_productos (
id_oferta		int primary key not null,
id_producto		int not null,
precio_oferta		numeric (8,2) not null,
vigencia		date not null,
status			boolean not null default 't'
);

create table cotizacion (
folio			int primary key not null,
fecha_hora		timestamp with time zone not null,
status			boolean not null default 't'
);

create table detalle_cotizacion (
id_detalle		int primary key not null,
folio			int not null,
id_producto		int not null,
cantidad		smallint not null,
importe			numeric (8,2) not null,
subtotal		numeric (8,2) not null,
iva			numeric (8,2) not null,
total			numeric (8,2) not null
);


--********************--****************** Constraint llaves foraneas --********************--******************

alter table productos			add constraint fk_catgProductos 		foreign key (id_categoria) 		references categoria_productos (id_categoria);
alter table imagen_productos		add constraint fk_imgProductos 			foreign key (id_producto) 		references productos (id_producto);
alter table ofertas_productos		add constraint fk_oferProductos			foreign key (id_producto)		references productos (id_producto);
alter table detalle_cotizacion		add constraint fk_decotCotizacion		foreign key (folio)			references cotizacion (folio);
alter table detalle_cotizacion		add constraint fk_prodCotizacion		foreign key (id_producto)		references productos (id_producto);

