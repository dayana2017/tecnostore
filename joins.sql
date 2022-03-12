/*1*/
select*from usuario as a1
inner join cliente b1
on a1.email=b1.email
-----------------------------------------------------------------------
/*2*/
select*from cliente as b2
inner join producto c2
on b2.id_cliente=c2.id_producto
------------------------------------------------------------------------
/*3*/
select*from factura as c3
inner join cliente d1
on c3.cliente_id_cliente=d1.id_cliente
------------------------------------------------------------------------
/*4*/
select*from informacion_del_envio as b1
inner join factura c2
on b1.factura_id_producto=c2.id_producto
------------------------------------------------------------------------
/*5*/
select*from cliente as c1
inner join carrito b2
on c1.id_cliente=b2.id_cliente
------------------------------------------------------------------------
/*6*/
select*from factura as a3
inner join producto b3
on a3.id_producto=b3.id_producto
------------------------------------------------------------------------
/*7*/
select*from pago as b3
inner join cliente a1
on b3.id_cliente=a1.id_cliente
------------------------------------------------------------------------
/*8*/
select*from pago as c2
inner join producto b1
on c2.nombre=b1.nombre
------------------------------------------------------------------------
/*9*/
select*from cliente as b2
inner join pago c1
on b2.nombre=c1.nombre
------------------------------------------------------------------------
/*10*/
select*from producto as a3
inner join cliente d1
on a3.cliente_id_cliente=d1.id_cliente
--------------------------------------------------------------------------
