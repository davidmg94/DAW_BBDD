-- EJERCICIO 1:
-- Listar por las ventas de medicamentos con receta realizadas por los m�dicos de cada centro de salud.
SELECT med.poblacion, med.centro_salud, m.nombre_med, lab.nombre_lab, vm.fecha_venta, vm.unidades, m.precio_unit, (vm.unidades * m.precio_unit) as TOTAL_VENTA

FROM m_medicamentos m, m_medicos med, m_laboratorios lab, m_ventas_med vm, m_ventas_recetas vr

WHERE m.id_med = vm.id_med AND m.id_lab = lab.id_lab AND med.dnim = vr.dnim AND vr.id_venta = vm.id_venta 
AND vm.fecha_venta BETWEEN TO_DATE ('01/10/2021','DD/MM/YYYY') AND TO_DATE ('31/12/2021','DD/MM/YYYY') 
AND UPPER (m.nombre_med) LIKE '%MEDICAMENTO ANTIBI�TICOS%'

ORDER BY  med.poblacion, med.centro_salud, m.nombre_med,  vm.fecha_venta;

-- EJERCICIO 2:
-- VERSION 1:
-- Listado del nombre de los medicamentos y las cantidades en stock de aquellos medicamentos cuya presentaci�n sea jarabe
-- y el nombre de su laboratorio contenga la palabra regional.
SELECT nombre_med, stock, nombre_pres

FROM m_medicamentos m, m_presentaciones p, m_laboratorios l

WHERE m.id_pres = p.id_pres AND l.id_lab = m.id_lab AND
LOWER (p.nombre_pres) = 'jarabe' AND UPPER (l.nombre_lab) LIKE '%REGIONAL%';

-- EJERCICIO 2:
-- VERSION 2:
-- S�lo saldr�n los medicamentos de los que hayan realizado m�s de una venta.
SELECT  m.nombre_med, m.stock, p.nombre_pres

FROM m_medicamentos m JOIN m_presentaciones p ON m.id_pres = p.id_pres JOIN  m_laboratorios l ON l.id_lab = m.id_lab

WHERE LOWER (p.nombre_pres) = 'jarabe' AND UPPER (l.nombre_lab) LIKE '%REGIONAL%' AND 
m.id_med IN (SELECT vm.id_med FROM m_ventas_med vm
            GROUP BY vm.id_med HAVING COUNT (vm.id_med)>1);
-- EJERCICIO 3:
-- VERSION 1:
-- Se quiere visualizar el nombre de cada familia, el n�mero de medicamentos vendidos y el total de las ventas 
--(unidades * precio unitario) de esa familia. 
-- Ordenado por nombre de la familia
SELECT nombre_fam, SUM (vm.unidades) AS "NRO MEDICAMENTOS VENDIDOS", sum (m.precio_unit * vm.unidades) AS "TOTAL VENTAS"

FROM m_familias f, m_medicamentos m, m_ventas_med vm

WHERE m.id_med = vm.id_med AND f.id_fam = m.id_fam

GROUP BY nombre_fam

ORDER BY nombre_fam;
-- EJERCICIO 3:
-- VERSION 2:
-- Que s�lo salgan las familias en el que el n� total de medicamentos vendidos sea mayor de 15.
SELECT nombre_fam, SUM (vm.unidades) AS "NRO MEDICAMENTOS VENDIDOS", SUM(m.precio_unit * vm.unidades) AS "TOTAL VENTAS"

FROM m_familias f, m_medicamentos m, m_ventas_med vm

WHERE m.id_med = vm.id_med AND f.id_fam = m.id_fam 

HAVING SUM (vm.unidades) > 15

GROUP BY nombre_fam

ORDER BY nombre_fam;
-- EJERCICIO 3:
-- VERSION 3:
-- Que s�lo salgan las familias en las que la media de sus ventas sean mayor que la media de todas las ventas de todos los medicamentos.
SELECT nombre_fam, SUM (unidades) as "NRO MEDICAMENTOS VENDIDOS",      SUM (m.precio_unit * vm.unidades) AS "TOTAL VENTAS"

FROM m_familias f, m_medicamentos m,m_ventas_med vm

WHERE m.id_med = vm.id_med AND f.id_fam = m.id_fam

GROUP BY nombre_fam

HAVING AVG (m.precio_unit * vm.unidades) > 
					(SELECT AVG (m2.precio_unit * vm2.unidades)
                     FROM m_medicamentos m2, m_ventas_med vm2
                     WHERE m2.id_med = vm2.id_med)

ORDER BY nombre_fam;
-- EJERCICIO 4:
-- Visualizar de cada familia: nombre de la familia, nombre del medicamento dentro de cada familia del que haya menor n�mero de unidades en stock y el stock. 
-- Ordenado por el nombre de la familia.
SELECT f.nombre_fam, med.nombre_med, med.stock

FROM m_familias f, m_medicamentos med

WHERE f.id_fam = med.id_fam

AND med.stock IN (SELECT MIN (STOCK) FROM m_medicamentos WHERE id_fam = f.id_fam)

ORDER BY f.nombre_fam;
-- EJERCICIO 5:
-- Se listar� el apellido y nombre del paciente, poblaci�n, la suma de las unidades vendidas de medicamentos, total de sus ventas (unidades * precio venta) y fecha de la �ltima venta. 
-- S�lo se tendr�n en cuenta aquellos medicamentos que se hayan vendido m�s de 2 veces.
SELECT p.apellidos, p.nombre, p.poblacion, SUM (vm.unidades) AS "SUMA UNIDADES MED. VENDIDOS", SUM (vm.unidades * m.precio_unit) AS "TOTAL COMPRADO", MAX (vm.fecha_venta) AS "FECHA DE SU �LTIMA COMPRA"

FROM m_pacientes p JOIN m_ventas_recetas vr ON p.dnip = vr.dnip JOIN m_ventas_med vm ON vr.id_venta = vm.id_venta JOIN m_medicamentos m ON vm.id_med = m.id_med

WHERE vm.id_med IN (SELECT id_med   FROM m_ventas_med   GROUP BY id_med 

HAVING COUNT (*) > 2)

GROUP BY p.apellidos, p.nombre, p.poblacion;
-- EJERCICIO 6:
-- Realiza un listado que nos indique el n� de productos que nos vende cada laboratorio. 
-- Saldr�n todos los laboratorios, aunque no nos venda ninguno. 
SELECT 'DESDE ' || l.poblacion || ' EL ' ||l.nombre_lab||' NOS VENDE ' ||COUNT (m.id_med)||' MEDICAMENTOS.' AS "LABORATORIOS"

FROM m_laboratorios l LEFT JOIN m_medicamentos m ON l.id_lab = m.id_lab

GROUP BY l.poblacion, l.nombre_lab;
