CREATE TABLE IF NOT EXISTS public.usuario
(
    email "varchar 30",
    "contraseña" "varchar 100",
    "id" "int4range",
    PRIMARY KEY (email),
	PRIMARY KEY (id),
    CONSTRAINT email UNIQUE (email)
);

ALTER TABLE public.usuario
    OWNER to postgres;

COMMENT ON COLUMN public.usuario.email
    IS 'registra ingreso de correos de usuarios';

COMMENT ON COLUMN public.usuario."contraseña"
    IS 'registra el ingreso de contraseñas de los usuarios';
	
CREATE TABLE IF NOT EXISTS public."administrador "
(
    id_administrador int4range,
    nombre "varchar 100 ",
	email "varchar 50",
	usuarioid "int4range",
    PRIMARY KEY (id_administrador)
);

ALTER TABLE public."administrador "
    OWNER to postgres;

COMMENT ON COLUMN public."administrador ".id_administrador
    IS 'ingresa código o ID del administrador';

COMMENT ON COLUMN public."administrador ".nombre
    IS 'registra nombre del administrador';
	COMMENT ON COLUMN public."administrador ".email
    IS 'ingresa los correos de los diferentes administra';

	CREATE TABLE IF NOT EXISTS public.cliente
(
    id_cliente int4range,
    nombre "varchar 100",
    direccion "varchar 100" NOT NULL,
    email "varchar 50" NOT NULL,
    telefono int4range  NOT NULL,
    ciudad "varchar 100" NOT NULL,
    usuarioid "int4range",
    PRIMARY KEY (id_cliente)
);

ALTER TABLE public.cliente
    OWNER to postgres;

COMMENT ON COLUMN public.cliente.id_cliente
    IS 'código o ID de los diferentes clientes';

COMMENT ON COLUMN public.cliente.nombre
    IS 'ingresa los nombres de los diferentes clientes';

COMMENT ON COLUMN public.cliente.direccion
    IS 'ingresa la residencia del cliente';

COMMENT ON COLUMN public.cliente.email
    IS 'ingresa los correos de los diferentes clientes';

COMMENT ON COLUMN public.cliente.telefono
    IS 'números telefónicos de los diferentes clientes';

COMMENT ON COLUMN public.cliente.ciudad
    IS 'ciudad en la que reside el cliente';
	
CREATE TABLE IF NOT EXISTS public.producto
(
    id_producto int4range,
    nombre "varchar 100",
    marca "varchar 100" NOT NULL,
    realizar_envio "varchar 100" NOT NULL,
    cliente_id_cliente int4range,
    grupo "varchar 100" NOT NULL,
    PRIMARY KEY (id_producto)
);

ALTER TABLE public.producto
    OWNER to postgres;

COMMENT ON COLUMN public.producto.id_producto
    IS 'código o ID de los diferentes productos

';

COMMENT ON COLUMN public.producto.nombre
    IS 'nombres de los productos
';

COMMENT ON COLUMN public.producto.marca
    IS 'especifica marca del producto
';

COMMENT ON COLUMN public.producto.realizar_envio
    IS 'realiza envio del producto pedido por el cliente
';

COMMENT ON COLUMN public.producto.cliente_id_cliente
    IS 'código o ID del cliente para realizar envíos
';

COMMENT ON COLUMN public.producto.grupo
    IS 'específica grupo si son móviles o pc
';
CREATE TABLE IF NOT EXISTS public.carrito
(
    id_carrito int4range,
    num_producto int4range NOT NULL,
    productos "varchar 100" NOT NULL,
    precio int4range NOT NULL,
    total real NOT NULL,
    PRIMARY KEY (id_carrito)
);

ALTER TABLE public.carrito
    OWNER to postgres;

COMMENT ON COLUMN public.carrito.id_carrito
    IS 'código o ID del carrito
';

COMMENT ON COLUMN public.carrito.num_producto
    IS 'número de productos añadidos al carrito de compra
';

COMMENT ON COLUMN public.carrito.productos
    IS 'productos por nombre añadidos al carrito
';

COMMENT ON COLUMN public.carrito.precio
    IS 'precio de los productos o producto añadido
';

COMMENT ON COLUMN public.carrito.total
    IS 'precio total de todo
';

CREATE TABLE IF NOT EXISTS public.pago
(
    id_cliente int4range,
    nombre "varchar 100",
    tipo_de_tarjeta "varchar 100" NOT NULL,
    num_tarjeta int4range,
    cliente_id_cliente int4range,
	id_pago int4range,
    PRIMARY KEY (id_cliente)
);

ALTER TABLE public.pago
    OWNER to postgres;

COMMENT ON COLUMN public.pago.id_cliente
    IS 'código o ID de los clientes que realizan el pago
';

COMMENT ON COLUMN public.pago.nombre
    IS 'nombre del producto para realizar pago';

COMMENT ON COLUMN public.pago.tipo_de_tarjeta
    IS 'tipo de tarjeta con la que realiza el pago
';

COMMENT ON COLUMN public.pago.num_tarjeta
    IS 'número de la tarjeta que registra para el pago
';

COMMENT ON COLUMN public.pago.cliente_id_cliente
    IS 'deriva de cliente';
	CREATE TABLE IF NOT EXISTS public.factura
(
    id_producto int4range,
    num_factura int4range NOT NULL,
    fecha_factura int4range NOT NULL,
    descuento int4range NOT NULL,
    iva int4range NOT NULL,
    cantidad int4range NOT NULL,
    cliente_id_cliente int4range,
    producto_id_producto int4range,
    PRIMARY KEY (id_producto)
);

ALTER TABLE public.factura
    OWNER to postgres;

COMMENT ON COLUMN public.factura.id_producto
    IS 'código o ID del producto o los productos ';

COMMENT ON COLUMN public.factura.num_factura
    IS 'número de las diferentes facturas de las compras
';

COMMENT ON COLUMN public.factura.fecha_factura
    IS 'fecha del diligenciamiento de la factura realizada';

COMMENT ON COLUMN public.factura.descuento
    IS 'precio si el producto tiene descuento
';

COMMENT ON COLUMN public.factura.iva
    IS 'impuesto del 19 %
';

COMMENT ON COLUMN public.factura.cantidad
    IS 'cantidad de productos añadidos a la factura
';

COMMENT ON COLUMN public.factura.cliente_id_cliente
    IS 'deriva del ID del cliente
';


	CREATE TABLE IF NOT EXISTS public.producto_factura
(
    factura_id_producto int4range,
    producto_id_producto int4range,
    CONSTRAINT factura_id_producto FOREIGN KEY (factura_id_producto)
        REFERENCES public.factura (id_producto) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT producto_id_producto FOREIGN KEY (producto_id_producto)
        REFERENCES public.producto (id_producto) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

ALTER TABLE public.producto_factura
    OWNER to postgres;
	CREATE TABLE IF NOT EXISTS public.informacion_del_envio
(
    id_envio int4range,
    tipo_envio "varchar 100" NOT NULL,
    costo_envio real NOT NULL,
    lugar_envio "varchar 100" NOT NULL,
    actualizaciones_envio "varchar 100" NOT NULL,
    factura_id_producto int4range,
    PRIMARY KEY (id_envio),
    CONSTRAINT factura_id_producto FOREIGN KEY (factura_id_producto)
        REFERENCES public.factura (id_producto) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

ALTER TABLE public.informacion_del_envio
    OWNER to postgres;

COMMENT ON COLUMN public.informacion_del_envio.id_envio
    IS 'código o ID del envío
';

COMMENT ON COLUMN public.informacion_del_envio.tipo_envio
    IS 'envio terrestre
';

COMMENT ON COLUMN public.informacion_del_envio.costo_envio
    IS 'costo por el envío del producto
';

COMMENT ON COLUMN public.informacion_del_envio.lugar_envio
    IS 'lugar o residencia donde se debe enviar el producto
';

COMMENT ON COLUMN public.informacion_del_envio.actualizaciones_envio
    IS 'actualizar datos del envío requerido
';

COMMENT ON COLUMN public.informacion_del_envio.factura_id_producto
    IS 'deriva del ID de la factura
';