-- 1. Seleccionar todos los criadores ordenados por nombre.
SELECT id_criador, nombre, direccion, telefono, email
FROM criador
ORDER BY nombre;

-- 2. Contar el número de toros por raza.
SELECT raza, COUNT(id_toro) AS total_toros
FROM toro
GROUP BY raza;

-- 3. Calcular el precio total de todas las ventas.
SELECT SUM(precio) AS precio_total_ventas
FROM venta;

-- 4. Calcular el precio promedio de una venta.
SELECT AVG(precio) AS precio_promedio_venta
FROM venta;

-- 5. Seleccionar los toros que están disponibles, ordenados por edad de forma descendente.
SELECT id_toro, nombre, raza, edad, disponible
FROM toro
WHERE disponible = TRUE
ORDER BY edad DESC;

-- 6. Calcular la edad promedio de los toros por raza.
SELECT raza, AVG(edad) AS edad_promedio
FROM toro
GROUP BY raza;
