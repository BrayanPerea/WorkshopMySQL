-- WORKSHOP -BD
	-- GRUPO # 8
	-- INTEGRANTES: 
		-- BRYAN PEREA 
		-- LIZA DANERIS MEDINA TORO
        
-- USE BD-----
-- 1. Devuelve un listado con el código de oficina y la ciudad donde hay oficinas.

SELECT codigo_oficina, ciudad_oficina FROM oficinas; 

-- 2. Devuelve un listado con la ciudad y el teléfono de las oficinas de España.
Select codigo_oficina, ciudad_oficina, telefono_oficina, pais_oficina
from oficinas
where pais_oficina like "España%";

-- 4. Devuelve un listado con el código de cliente de aquellos clientes que realizaron algún pago en 2008.
-- Tenga en cuenta que deberá eliminar aquellos códigos de cliente que aparezcan repetidos.
-- Resuelva la consulta:
-- • Utilizando la función YEAR de MySQL.
-- • Utilizando la función DATE_FORMAT de MySQL.

SELECT c.codigo_cliente, DATE_FORMAT(p.fecha_pago, '%d-%m-%Y') AS fecha_pago_formateada FROM clientes as c
INNER JOIN pagos as p 
	ON c.codigo_cliente = p.codigo_transacion
WHERE YEAR(p.fecha_pago) = 2008
GROUP BY c.codigo_cliente;
 

-- 5. ¿Cuántos empleados hay en la compañía?
select count(*) from empleados;

-- 7. ¿Cuál fue el pago medio en 2023?

SELECT AVG(total_cada_pago) AS pago_promedio FROM pagos
WHERE YEAR(fecha_pago)= 2023 ;

-- 8. ¿Cuántos pedidos hay en cada estado? Ordena el resultado de forma desc por el número de pedidos.

select estado_pedido estado, count(estado_pedido) cantidad
from pedidos
group by estado_pedido;

-- 10. Devuelve el nombre del cliente con mayor límite de crédito.

SELECT nombre_cliente, MAX(limite_crédito_cliente) AS mayor_limite_de_crédito FROM clientes
GROUP BY nombre_cliente
ORDER BY mayor_limite_de_crédito DESC
LIMIT 1 ;

-- 11. Devuelve el nombre del producto que tenga el precio de venta más caro.
select * from productos;
	-- 1
	select nombre_producto producto, precio_venta_producto precio 
	from productos 
	order by precio_venta_producto desc
	limit 1;

	-- 2
	select nombre_producto producto
	from productos
	where precio_venta_producto = (select max(precio_venta_producto) from productos);
    
-- 13. Los clientes cuyo límite de crédito sea mayor que los pagos que haya realizado. (Sin utilizar INNER JOIN).

SELECT c.nombre_cliente, c.limite_crédito_cliente, p.total_cada_pago FROM clientes AS c, pagos AS p
WHERE c.limite_crédito_cliente > p.total_cada_pago;

/* 14. Devuelve el listado de clientes indicando el nombre del cliente y cuantos pedidos ha realizado.
Tenga en cuenta que pueden existir clientes que no han realizado ningún pedido.*/

select nombre_cliente, count(pedidos.codigo_cliente) cantidad_Pedidos
from clientes
left join pedidos on clientes.codigo_cliente = pedidos.codigo_cliente
group by nombre_cliente
order by cantidad_Pedidos desc;

-- 16. Devuelve las oficinas donde no trabajan ninguno de los empleados que hayan sido los representantes de ventas
-- de algún cliente que haya realizado la compra de algún producto de la gama media.

SELECT DISTINCT o.*
FROM oficinas o
LEFT JOIN empleados e ON o.codigo_oficina = e.codigo_oficina
LEFT JOIN (
    SELECT DISTINCT c.codigo_empleado
    FROM clientes c
    JOIN pedidos p ON c.codigo_cliente = p.codigo_cliente
    JOIN pedidos_Realizados pr ON p.codigo_pedido = pr.codigo_pedido
    JOIN productos pro ON pr.codigo_producto = pro.codigo_producto
    JOIN gama g ON pro.codigo_gama = g.codigo_gama
    WHERE g.tipo_gama = 'media'
) ventas_gama_media ON e.codigo_empleado = ventas_gama_media.codigo_empleado
WHERE ventas_gama_media.codigo_empleado IS NULL;

/*17- Devuelve el listado de clientes indicando el nombre del cliente y cuantos pedidos ha realizado.
Tenga en cuenta que pueden existir clientes que no han realizado ningún pedido.*/

select nombre_cliente, count(pedidos.codigo_cliente) cantidad_Pedidos
from clientes
left join pedidos on clientes.codigo_cliente = pedidos.codigo_cliente
group by nombre_cliente
order by cantidad_Pedidos desc;