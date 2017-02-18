--**************************************************** ACTUALIZACION DE CATEGORIA DE PRODUCTOS *********************************************************************--
create or replace function fn_actualizar_categoria_producto (_idCategoria integer, _categoria character varying)
returns void as
$body$
	begin
		update categoria_productoS
		set nombre_categoria = _categoria
		where id_categoria = _idCategoria;
	end
$body$
language plpgsql;

select fn_actualizar_categoria_producto (1,'De noche')

--Select * from categoria_producto;


--**************************************************** ACTUALIZACION DE PRODCUTOS *********************************************************************--
create or replace function fn_actualizar_producto ( 	_id integer, _id_categoria integer, _codigo character varying, _nombre character varying, _descripcion character varying, 
							_color character varying, _talla character varying, _precio_normal float, _actual float, _minima float, _maxima float)
returns void as
$body$
	begin
		update productos set 
		id_categoria = _id_categoria,		
		codigo = _codigo,
		nombre = _nombre,
		descripcion = _descripcion,
		color = _color,
		talla = _talla,		
		precio_normal = _precio_normal,
		existencia_actual = _actual,
		existencia_minima = _minima,
		existencia_maxima = _maxima		
		where id_producto = _id;
	end
$body$
language plpgsql;

--select fn_actualizar_producto (1, 2, 'BLU-NEG', 'Blusa', 'Blusa estampada', 'Negra', 'Grande', 150.00, 20, 2, 100)

--**************************************************** ACTUALIZACION DE OFERTAS *********************************************************************--
create or replace function fn_actualizar_ofertas_prductos (	_id_oferta integer, _id_producto integer, _precio_oferta float, _vigencia date)
returns void as
$body$
	begin
		update ofertas_productos set		
		id_producto = _id_producto,
		precio_oferta = _precio_oferta,
		vigencia = _vigencia
		where id_oferta = _id_oferta;
	end
$body$
language plpgsql;

--select fn_actualizar_ofertas_prductos (2, 3, 150.00, '2017-02-27')