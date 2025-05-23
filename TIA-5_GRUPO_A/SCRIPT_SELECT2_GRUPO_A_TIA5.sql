-- 1. Listado de los animales (toros) y los eventos en los que han participado.
-- Muestra el nombre del toro, el nombre del evento, el lugar y la fecha del evento.
SELECT
    t.nombre AS nombre_toro,
    e.nombre AS nombre_evento,
    e.lugar,
    e.fecha
FROM toro AS t
JOIN toro_evento AS te ON t.id_toro = te.id_toro
JOIN evento AS e ON te.id_evento = e.id_evento
ORDER BY t.nombre, e.fecha;

-- 2. Listado de los animales (toros) con la raza asociada y el nombre de su criador.
-- Muestra el nombre del toro, su raza y el nombre del criador.
SELECT t.nombre AS nombre_toro, t.raza, c.nombre AS nombre_criador
FROM toro AS t
JOIN criador AS c ON t.id_criador = c.id_criador
ORDER BY t.nombre;

-- 3. Listado de los animales vendidos con su fecha de nacimiento, fecha de compra del dueño,
-- fecha de venta, nombre del comprador y los eventos en los que el toro ha participado.
-- Nota: La base de datos no vincula directamente una venta a un evento específico "en el que se vendió".
-- Esta consulta mostrará todos los eventos en los que el toro vendido ha participado.
SELECT
    t.nombre AS nombre_toro,
    t.fecha_nacimiento,
    d.fecha_compra AS fecha_compra_dueno,
    v.fecha_venta,
    comp.nombre AS nombre_comprador,
    e.nombre AS evento_participacion,
    e.fecha AS fecha_evento_participacion
FROM venta AS v
JOIN toro AS t ON v.id_toro = t.id_toro
JOIN dueno AS d ON t.id_dueno = d.id_dueno
JOIN comprador AS comp ON v.id_comprador = comp.id_comprador
LEFT JOIN toro_evento AS te ON t.id_toro = te.id_toro
LEFT JOIN evento AS e ON te.id_evento = e.id_evento
ORDER BY v.fecha_venta DESC, t.nombre;