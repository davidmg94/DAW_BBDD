-- EJERCICIO 1
SELECT e.apellido1, e.apellido2, e.nombre, c.nombrecliente, o.ciudad, p.fechapago
FROM j_empleados e JOIN  j_clientes c ON e.codigoempleado = c.codigoempleadorepventas 
JOIN j_pagos p ON c.codigocliente = p.codigocliente JOIN j_oficinas o ON e.codigooficina = o.codigooficina
ORDER BY e.apellido1, e.apellido2, e.nombre, c.nombrecliente;
-- EJERCICIO 2
SELECT e.apellido1, e.apellido2, e.nombre, c.nombrecliente, o.ciudad, p.fechapago
FROM j_empleados e JOIN  j_clientes c ON e.codigoempleado = c.codigoempleadorepventas 
JOIN j_pagos p ON c.codigocliente = p.codigocliente JOIN j_oficinas o ON e.codigooficina = o.codigooficina
WHERE p.codigocliente  IN (SELECT codigocliente FROM j_pagos GROUP BY codigocliente HAVING COUNT(codigocliente) > 2)
ORDER BY e.apellido1, e.apellido2, e.nombre, c.nombrecliente,p.fechapago;
-- EJERCICIO 3
SELECT c.codigocliente, COUNT(pe.codigocliente) NRO_PEDIDOS, SUM (dp.cantidad * dp.preciounidad) TOTAL_CLIENTE
FROM j_clientes c JOIN  j_pedidos pe ON c.codigocliente = pe.codigocliente JOIN j_detallepedidos dp ON pe.codigopedido = dp.codigopedido
HAVING COUNT(pe.codigocliente) >20
GROUP BY c.codigocliente
ORDER BY c.codigocliente;
-- EJERCICIO 4
SELECT p.codigoproducto, p.nombre, p.proveedor, SUM(d.cantidad * d.preciounidad) AS SUMA_TOTALES
FROM j_productos p JOIN j_detallepedidos d ON p.codigoproducto = d.codigoproducto
WHERE UPPER(p.proveedor) LIKE '%VIVERO%' 
GROUP BY p.codigoproducto, p.proveedor,p.nombre
HAVING SUM(d.cantidad * d.preciounidad) > 2000
ORDER BY p.nombre;
-- EJERCICIO 5
SELECT e.codigooficina, SUM(dp.cantidad * dp.preciounidad) AS TOTAL_VENDIDO
FROM j_empleados e  
    JOIN j_clientes c ON c.codigoempleadorepventas = e.codigoempleado
    JOIN j_pedidos p ON p.codigocliente = c.codigocliente 
    JOIN j_detallepedidos dp ON dp.codigopedido = p.codigopedido
GROUP BY e.codigooficina
ORDER BY e.codigooficina;
-- EJERCICIO 6
SELECT e.codigooficina, SUM(dp.cantidad * dp.preciounidad) AS TOTAL_VENDIDO
FROM  j_empleados e 
    JOIN j_clientes c ON c.codigoempleadorepventas = e.codigoempleado
    JOIN j_pedidos p ON p.codigocliente = c.codigocliente 
    JOIN j_detallepedidos dp ON dp.codigopedido = p.codigopedido
WHERE UPPER(e.codigooficina) LIKE '%USA' OR UPPER(e.codigooficina) LIKE '%ES'
GROUP BY e.codigooficina
HAVING SUM(dp.cantidad * dp.preciounidad) > 20000
ORDER BY e.codigooficina;