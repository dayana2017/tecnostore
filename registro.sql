INSERT INTO usuario(email,contraseña,iniciar_sesion)VALUES ('andres','andresmartines','1');
INSERT INTO usuario(email,contraseña,iniciar_sesion)VALUES('dayana','dayanaacosta','2');
INSERT INTO usuario(email,contraseña,iniciar_sesion)VALUES('paloma','paloma12345','3');
INSERT INTO usuario(email,contraseña,iniciar_sesion)VALUES('simon','simona12345','4');
INSERT INTO usuario(email,contraseña,iniciar_sesion)VALUES('mateo','mateo9635','5');
INSERT INTO usuario(email,contraseña,iniciar_sesion)VALUES ('rosa','rosa17185','6');
select*from usuario;
INSERT INTO administrador(ID_administrador,nombre,usuario_usuario)VALUES('2','dayana','2');
select*from administrador;
INSERT INTO cliente(ID_cliente,nombre,direccion,email,telefono,ciudad,usuariousuario)VALUES('1','andres','cra42bis#32a33sur','andresmartin@gmail.com','3217254423','bogota','1');
INSERT INTO cliente(ID_cliente,nombre,direccion,email,telefono,ciudad,usuariousuario)VALUES('3','paloma','cra81#16a28sur','palomita23@gmail.com','3135948237','bogota','3');
INSERT INTO cliente(ID_cliente,nombre,direccion,email,telefono,ciudad,usuariousuario)VALUES('4','simon','cra32#18a25sur','simona25@gmail.com','3124896774','bogota','4');
INSERT INTO cliente(ID_cliente,nombre,direccion,email,telefono,ciudad,usuariousuario)VALUES('5','mateo','cra83#29b23sur','mateito79@gmail.com','3127893694','bogota','5');
INSERT INTO cliente(ID_cliente,nombre,direccion,email,telefono,ciudad,usuariousuario)VALUES('6','rosa','cra16#4b46sur','rosa56@gmail.com','3195258674','bogota','6');
select*from cliente;
INSERT INTO "historial de usuarios"(ID_Historial,usuario_usuario,"actualizacion _ datos")VALUES('1','1','1');
INSERT INTO "historial de usuarios"(ID_Historial,usuario_usuario,"actualizacion _ datos")VALUES('2','2','2');
INSERT INTO "historial de usuarios"(ID_Historial,usuario_usuario,"actualizacion _ datos")VALUES('3','3','3');
INSERT INTO "historial de usuarios"(ID_Historial,usuario_usuario,"actualizacion _ datos")VALUES('4','4','4');
INSERT INTO "historial de usuarios"(ID_Historial,usuario_usuario,"actualizacion _ datos")VALUES ('5','5','5');
INSERT INTO "historial de usuarios"(ID_Historial,usuario_usuario,"actualizacion _ datos")VALUES('6','6','6');
select*from "historial de usuario";
INSERT INTO producto(ID_producto,nombre,grupo,marca,realizarenvio,"cliente _IDcliente")VALUES('963','samsung galaxy a21s','moviles','samsung','si','1');
INSERT INTO producto(ID_producto,nombre,grupo,marca,realizarenvio,"cliente _IDcliente")VALUES('563','','pc','hp 205','si','3');
INSERT INTO producto(ID_producto,nombre,grupo,marca,realizarenvio,"cliente _IDcliente")VALUES('876','motog8powerlite','movil','motorola','si','4');
INSERT INTO producto(ID_producto,nombre,grupo,marca,realizarenvio,"cliente _IDcliente")VALUES('198','lenovo ideapad3i','pc_portatil','lenovo','si','5');
INSERT INTO producto(ID_producto,nombre,grupo,marca,realizarenvio,"cliente _IDcliente")VALUES('233','xiaomi redminote10','movil','xiaomi','si','6');
select*from producto;
INSERT INTO carrito(ID_cliente,núm_productos,productos,precio,total)VALUES('1','1','movil','749.900','892.381');
INSERT INTO carrito(ID_cliente,núm_productos,productos,precio,total)VALUES('3','1','pc','2.146.900','2.554.811');
INSERT INTO carrito(ID_cliente,núm_productos,productos,precio,total)VALUES('4','1','movil','489.900','582.981');
INSERT INTO carrito(ID_cliente,núm_productos,productos,precio,total)VALUES('5','1','portatil','2.197.900','2.615.501');
INSERT INTO carrito(ID_cliente,núm_productos,productos,precio,total)VALUES('6','1','movil','779.900','928.081');
select*from carrito;
INSERT INTO "cliente _carrito"("cliente _IDcliente",carrito_IDcliente)VALUES('1','1');
INSERT INTO "cliente _carrito"("cliente _IDcliente",carrito_IDcliente)VALUES('3','3');
INSERT INTO "cliente _carrito"("cliente _IDcliente",carrito_IDcliente)VALUES('4','4');
INSERT INTO "cliente _carrito"("cliente _IDcliente",carrito_IDcliente)VALUES('5','5');
INSERT INTO "cliente _carrito"("cliente _IDcliente",carrito_IDcliente)VALUES('6','6');
select*from "cliente_carrito";
INSERT INTO "cliente _producto"("cliente IDcliente",productoIDproducto)VALUES('1','938');
INSERT INTO "cliente _producto"("cliente IDcliente",productoIDproducto)VALUES('3','563');
INSERT INTO "cliente _producto"("cliente IDcliente",productoIDproducto)VALUES('4','876');
INSERT INTO "cliente _producto"("cliente IDcliente",productoIDproducto)VALUES('5','198');
INSERT INTO "cliente _producto"("cliente IDcliente",productoIDproducto)VALUES('6','233');
select*from "cliente_producto";
INSERT INTO pago(ID_cliente,nombre,tipo_de_tarjeta,núm_tarjeta,"cliente _IDcliente")VALUES('1','samsung galaxy a21s','credito','4000 0012 3456 7899','1');
INSERT INTO pago(ID_cliente,nombre,tipo_de_tarjeta,núm_tarjeta,"cliente _IDcliente")VALUES('3','hp 205','credito','4207 0193 2917 7607','3');
INSERT INTO pago(ID_cliente,nombre,tipo_de_tarjeta,núm_tarjeta,"cliente _IDcliente")VALUES('4','moto g8powerlite','credito','3465 5778 8872 895','4');
INSERT INTO pago(ID_cliente,nombre,tipo_de_tarjeta,núm_tarjeta,"cliente _IDcliente")VALUES('5','lenovo ideapad 3i','credito','5109 5010 2421 8865','5');
INSERT INTO pago(ID_cliente,nombre,tipo_de_tarjeta,núm_tarjeta,"cliente _IDcliente")VALUES('6','xiaomi redmi note10','credito','4686 0291 5789 2268','6');
select*from pago;
INSERT INTO factura(ID_producto,núm_factura,fecha_factura,descuento,iva,cantidad,"cliente _IDcliente",producto_IDproducto)VALUES('938','0001-00003659','20/05/2021','no','19%','1','1');
INSERT INTO factura(ID_producto,núm_factura,fecha_factura,descuento,iva,cantidad,"cliente _IDcliente",producto_IDproducto)VALUES('563','002-00001896','25/05/2021','no','19%','1','3');
INSERT INTO factura(ID_producto,núm_factura,fecha_factura,descuento,iva,cantidad,"cliente _IDcliente",poducto_IDproducto)VALUES('876','0001-00003660','26/05/2021','no','19%','1','4');
INSERT INTO factura(ID_producto,núm_factura,fecha_factura,descuento,iva,cantidad,"cliente _IDcliente",producto_IDproducto)VALUES('198','0001-00003661','28/05/2021','no','19%','1','5');
INSERT INTO factura(ID_producto,núm_factura,fecha_factura,descuento,iva,cantidad,"cliente _IDcliente",producto_IDproducto)VALUES('233','0001-00003664','31/05/2021','no','19%','1','6');
select*from factura;
INSERT INTO producto_factura(producto_IDproducto,factura_IDproducto)VALUES('938','938');
INSERT INTO producto_factura(producto_IDproducto,factura_IDproducto)VALUES('563','563');
INSERT INTO producto_factura(producto_IDproducto,factura_IDproducto)VALUES('876','876');
INSERT INTO producto_factura(producto_IDproducto,factura_IDproducto)VALUES('198','198');
INSERT INTO producto_factura(producto_IDproducto,factura_IDproducto)VALUES('233','233');
select*from producto_factura;
INSERT INTO "información del envio"(ID_envio,tipo_envio,costo_envio,lugar_envio,actualizaciones_envio,factura_IDproducto)VALUES('893','movil','5.000','bogota','si','938');
INSERT INTO "información del envio"(ID_envio,tipo_envio,costo_envio,lugar_envio,actualizaciones_envio,factura_IDproducto)VALUES('356','pc','5.000','bogota','si','563');
INSERT INTO "información del envio"(ID_envio,tipo_envio,costo_envio,lugar_envio,actualizaciones_envio,factura_IDproducto)VALUES('687','movil','5.000','bogota','si','876');
INSERT INTO "información del envio"(ID_envio,tipo_envio,costo_envio,lugar_envio,actualizaciones_envio,factura_IDproducto)VALUES('819','portatil','5.000','bogota','si','198');
INSERT INTO "información del envio"(ID_envio,tipo_envio,costo_envio,lugar_envio,actualizaciones_envio,factura_IDproducto) VALUES('323','movil','5.000','bogota','si','233');
select*from "información del envio";
