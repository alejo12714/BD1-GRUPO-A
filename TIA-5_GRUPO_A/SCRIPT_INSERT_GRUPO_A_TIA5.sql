-- Inserciones para la tabla Criador
INSERT INTO criador (nombre, direccion, telefono, email) VALUES
('Ganadería La Esperanza', 'Finca El Roble, Vereda La Palma, Envigado', '3101234567', 'laesperanza@email.com'),
('Hacienda El Paraíso', 'Km 5 Vía a San Antonio, Rionegro', '3209876543', 'elparaiso@email.com'),
('Finca Los Sauces', 'Vereda Las Flores, Guarne', '3005551234', 'lossauces@email.com'),
('Criadero San Miguel', 'Carrera 70 # 10-20, Medellín', '3157890123', 'sanmiguel@email.com'),
('Rancho La Fortuna', 'Vía al Mar, Km 15, Turbo', '3182345678', 'lafortuna@email.com'),
('Ganadería El Cedro', 'Vereda El Cedro, La Estrella', '3014567890', 'elcedro@email.com'),
('Hacienda Santa Cruz', 'Sector El Tablazo, Envigado', '3056789012', 'santacruz@email.com'),
('Finca Bella Vista', 'Vereda Pantanillo, El Retiro', '3123456789', 'bellavista@email.com'),
('Criadero La Pradera', 'Calle 20 # 5-10, Bello', '3178901234', 'laprader@email.com'),
('Rancho El Sol', 'Vía a La Pintada, Caldas', '3049876543', 'elsol@email.com'),
('Ganadería Los Pinos', 'Vereda La Honda, Copacabana', '3112233445', 'lospinos@email.com'),
('Hacienda La Aurora', 'Km 3 Vía a Marinilla, El Carmen de Viboral', '3023344556', 'laaurora@email.com'),
('Finca El Encanto', 'Vereda San José, San Vicente Ferrer', '3134455667', 'elencanto@email.com'),
('Criadero El Rodeo', 'Carrera 50 # 80-90, Itagüí', '3165566778', 'elrodeo@email.com'),
('Rancho Verde', 'Vía a Urabá, Apartadó', '3096677889', 'ranchoverde@email.com'),
('Ganadería Del Valle', 'Finca El Mirador, La Ceja', '3107788990', 'delvalle@email.com');

-- Inserciones para la tabla Dueno
INSERT INTO dueno (nombre, direccion, telefono, fecha_compra) VALUES
('Juan Pérez', 'Calle 10 # 30-45, Medellín', '3001112233', '2020-01-15'),
('María García', 'Avenida 80 # 50-60, Envigado', '3102223344', '2021-03-20'),
('Carlos Rodríguez', 'Carrera 45 # 20-10, Rionegro', '3203334455', '2019-07-01'),
('Ana López', 'Diagonal 75 # 15-25, Sabaneta', '3014445566', '2022-05-10'),
('Pedro Sánchez', 'Calle 5 # 70-80, Caldas', '3155556677', '2018-11-22'),
('Laura Martínez', 'Avenida Las Vegas # 100-10, Itagüí', '3186667788', '2023-02-28'),
('Diego González', 'Carrera 60 # 40-30, Bello', '3057778899', '2020-09-05'),
('Sofía Hernández', 'Calle 30 # 2-50, La Estrella', '3128889900', '2021-12-12'),
('Andrés Díaz', 'Transversal 30 # 10-15, Copacabana', '3179990011', '2019-04-18'),
('Valeria Ruiz', 'Avenida Oriental # 1-1, Medellín', '3040001122', '2022-08-01'),
('Fernando Castro', 'Calle 70 # 5-5, Envigado', '3111122334', '2020-06-01'),
('Isabella Vargas', 'Carrera 20 # 10-10, Rionegro', '3022233445', '2023-01-25'),
('Manuel Soto', 'Diagonal 50 # 30-30, Sabaneta', '3133344556', '2019-10-10'),
('Camila Torres', 'Calle 100 # 1-1, Caldas', '3164455667', '2021-07-07'),
('Ricardo Morales', 'Avenida Guayabal # 20-20, Itagüí', '3095566778', '2022-03-15'),
('Gabriela Jiménez', 'Carrera 80 # 60-60, Bello', '3106677889', '2020-11-03');

-- Inserciones para la tabla Comprador
INSERT INTO comprador (nombre, direccion, telefono) VALUES
('Roberto Gómez', 'Calle 100 # 10-10, Bogotá', '3009998877'),
('Patricia Fernández', 'Avenida El Poblado # 20-20, Cali', '3108887766'),
('Jorge Londoño', 'Carrera 50 # 30-30, Barranquilla', '3207776655'),
('Marta Ospina', 'Diagonal 60 # 40-40, Cartagena', '3016665544'),
('Luis Vélez', 'Calle 20 # 50-50, Bucaramanga', '3155554433'),
('Carolina Restrepo', 'Avenida Santander # 1-1, Manizales', '3184443322'),
('Felipe Giraldo', 'Carrera 15 # 25-25, Pereira', '3053332211'),
('Daniela Quintero', 'Calle 80 # 35-35, Cúcuta', '3122221100'),
('Pablo Escobar', 'Transversal 40 # 5-5, Pasto', '3171110099'),
('Viviana Vargas', 'Avenida Circunvalar # 10-10, Neiva', '3040009988'),
('Esteban Zuluaga', 'Calle 50 # 15-15, Armenia', '3119988776'),
('Andrea Salazar', 'Carrera 30 # 5-5, Ibagué', '3028877665'),
('Juan David Ríos', 'Diagonal 70 # 20-20, Santa Marta', '3137766554'),
('Diana Carolina Mesa', 'Avenida Libertadores # 10-10, Villavicencio', '3166655443'),
('Miguel Ángel Pérez', 'Calle 30 # 1-1, Popayán', '3095544332'),
('Sara López', 'Carrera 90 # 10-10, Montería', '3104433221');

-- Inserciones para la tabla Crianza
INSERT INTO crianza (tipo_alimentacion, ambiente, cuidados_especiales) VALUES
('Pastoreo y suplemento', 'Abierto con refugio', 'Vacunación regular, control de parásitos'),
('Alimentación balanceada', 'Estabulado con ventilación', 'Monitoreo de salud diario, suplementos vitamínicos'),
('Forraje y concentrado', 'Mixto (pastoreo y establo)', 'Revisión veterinaria mensual, desparasitación'),
('Pastoreo intensivo', 'Potreros amplios', 'Rotación de pastos, control de enfermedades'),
('Orgánica', 'Libre de químicos', 'Alimentos naturales, sin hormonas'),
('Dieta rica en proteínas', 'Clima cálido y seco', 'Hidratación constante, protección solar'),
('Nutrición especializada', 'Ambiente controlado', 'Análisis de sangre periódicos, dieta personalizada'),
('Alimentación con heno', 'Montaña, clima frío', 'Abrigo extra, protección contra el frío'),
('Pastoreo rotacional', 'Bosque y pradera', 'Observación de comportamiento, enriquecimiento ambiental'),
('Suplementos minerales', 'Semi-abierto', 'Cuidado de pezuñas, cepillado regular'),
('Dieta de alto rendimiento', 'Granja de engorde', 'Control de peso, ejercicio moderado'),
('Alimentación natural', 'Praderas extensas', 'Sin intervención humana, selección natural'),
('Concentrado de maíz', 'Corral de engorde', 'Control de estrés, ambiente tranquilo'),
('Forraje fresco', 'Húmedo y tropical', 'Prevención de enfermedades tropicales, control de mosquitos'),
('Dieta de mantenimiento', 'Cercado pequeño', 'Limpieza diaria, atención individualizada'),
('Alimentos ricos en fibra', 'Desierto', 'Acceso a agua, sombra');

-- Inserciones para la tabla Toro
INSERT INTO toro (nombre, fecha_nacimiento, lugar_nacimiento, raza, disponible, edad, id_criador, id_dueno, id_crianza) VALUES
('Zeus', '2019-03-10', 'Finca El Roble', 'Brahman', TRUE, 5, 1, 1, 1),
('Apolo', '2020-01-25', 'Hacienda El Paraíso', 'Angus', TRUE, 4, 2, 2, 2),
('Hércules', '2018-07-01', 'Finca Los Sauces', 'Holstein', FALSE, 6, 3, 3, 3),
('Thor', '2021-05-12', 'Criadero San Miguel', 'Charolais', TRUE, 3, 4, 4, 4),
('Atlas', '2017-11-30', 'Rancho La Fortuna', 'Nelore', FALSE, 7, 5, 5, 5),
('Titán', '2020-09-01', 'Ganadería El Cedro', 'Simmental', TRUE, 4, 6, 6, 6),
('Orion', '2019-02-18', 'Hacienda Santa Cruz', 'Limousin', TRUE, 5, 7, 7, 7),
('Pegaso', '2022-04-05', 'Finca Bella Vista', 'Guzerá', TRUE, 2, 8, 8, 8),
('Fénix', '2018-08-20', 'Criadero La Pradera', 'Brangus', FALSE, 6, 9, 9, 9),
('Centauro', '2021-01-01', 'Rancho El Sol', 'Pardo Suizo', TRUE, 3, 10, 10, 10),
('Minotauro', '2019-06-15', 'Ganadería Los Pinos', 'Romosinuano', TRUE, 5, 11, 11, 11),
('Quimera', '2020-10-20', 'Hacienda La Aurora', 'Blanco Orejinegro', TRUE, 4, 12, 12, 12),
('Grifo', '2018-04-01', 'Finca El Encanto', 'Cebú', FALSE, 6, 13, 13, 13),
('Dragón', '2022-01-01', 'Criadero El Rodeo', 'Hereford', TRUE, 2, 14, 14, 14),
('Kraken', '2017-09-01', 'Rancho Verde', 'Wagyu', FALSE, 7, 15, 15, 15),
('Leviathan', '2020-03-03', 'Ganadería Del Valle', 'Jersey', TRUE, 4, 16, 16, 16);

-- Inserciones para la tabla Venta
INSERT INTO venta (id_toro, id_comprador, fecha_venta, precio) VALUES
(3, 1, '2024-01-10', 8500.00),
(5, 2, '2024-02-15', 12000.00),
(9, 3, '2024-03-22', 7000.00),
(13, 4, '2024-04-01', 9500.00),
(15, 5, '2024-05-05', 15000.00),
(1, 6, '2024-06-10', 9000.00),
(2, 7, '2024-07-01', 10500.00),
(4, 8, '2024-08-12', 8000.00),
(6, 9, '2024-09-20', 11000.00),
(7, 10, '2024-10-03', 9200.00),
(8, 11, '2024-11-11', 7800.00),
(10, 12, '2024-12-01', 10000.00),
(11, 13, '2025-01-05', 8700.00),
(12, 14, '2025-02-14', 9800.00),
(14, 15, '2025-03-01', 7500.00),
(16, 16, '2025-04-10', 11500.00);

-- Inserciones para la tabla Evento
INSERT INTO evento (nombre, lugar, fecha) VALUES
('Feria Ganadera de Antioquia', 'Plaza Mayor, Medellín', '2024-06-01'),
('Exposición Nacional de Razas', 'Corferias, Bogotá', '2024-07-15'),
('Subasta de Ganado Elite', 'Centro de Eventos La Macarena, Medellín', '2024-08-20'),
('Día de Campo Bovino', 'Finca Modelo La Aurora, Rionegro', '2024-09-10'),
('Concurso de Juzgamiento de Ganado', 'Coliseo de Ferias, Cali', '2024-10-05'),
('Seminario de Producción Ganadera', 'Universidad Nacional, Medellín', '2024-11-01'),
('Feria Agropecuaria Regional', 'Parque de Exposiciones, Envigado', '2024-12-01'),
('Encuentro de Criadores de Brahman', 'Hacienda El Roble, Envigado', '2025-01-20'),
('Festival Equino y Bovino', 'Centro de Convenciones, Cartagena', '2025-02-10'),
('Jornada de Vacunación Bovina', 'Varios puntos en Antioquia', '2025-03-01'),
('Exposición de Ganado de Leche', 'Feria de las Flores, Medellín', '2025-08-05'),
('Subasta de Ganado de Ceba', 'Mercado Ganadero, Caucasia', '2025-09-15'),
('Congreso Internacional de Ganadería', 'Centro de Convenciones, Bogotá', '2025-10-20'),
('Día de la Ganadería Sostenible', 'Finca Demostrativa, La Ceja', '2025-11-10'),
('Feria Ganadera de Navidad', 'Plaza de Toros La Macarena, Medellín', '2025-12-15'),
('Exposición de Ganado de Carne', 'Parque de Exposiciones, Barranquilla', '2026-01-25');

-- Inserciones para la tabla Toro_Evento
INSERT INTO toro_Evento (id_toro, id_evento) VALUES
(1, 1), (2, 1), (3, 1),
(4, 2), (5, 2), (6, 2),
(7, 3), (8, 3), (9, 3),
(10, 4), (11, 4), (12, 4),
(13, 5), (14, 5), (15, 5),
(16, 6), (1, 7), (2, 7),
(3, 8), (4, 8), (5, 9),
(6, 9), (7, 10), (8, 10),
(9, 11), (10, 11), (11, 12),
(12, 12), (13, 13), (14, 13),
(15, 14), (16, 14), (1, 15),
(2, 15), (3, 16), (4, 16);

-- Inserciones para la tabla Publicidad
INSERT INTO publicidad (id_toro, descripcion, fecha_inicio, fecha_fin) VALUES
(1, 'Toro Zeus, campeón de raza Brahman, disponible para monta.', '2024-05-01', '2024-07-31'),
(2, 'Apolo, joven promesa Angus, excelente genética.', '2024-06-01', '2024-08-31'),
(4, 'Thor, semental Charolais, ideal para mejora de rebaño.', '2024-07-01', '2024-09-30'),
(6, 'Titán, Simmental de gran porte, listo para servicio.', '2024-08-01', '2024-10-31'),
(7, 'Orion, Limousin con pedigrí, disponible para venta.', '2024-09-01', '2024-11-30'),
(8, 'Pegaso, joven Guzerá, con potencial de crecimiento.', '2024-10-01', '2024-12-31'),
(10, 'Centauro, Pardo Suizo, ideal para producción de leche.', '2024-11-01', '2025-01-31'),
(11, 'Minotauro, Romosinuano, resistente y productivo.', '2024-12-01', '2025-02-28'),
(12, 'Quimera, Blanco Orejinegro, adaptado al trópico.', '2025-01-01', '2025-03-31'),
(14, 'Dragón, Hereford, con excelente conformación cárnica.', '2025-02-01', '2025-04-30'),
(16, 'Leviathan, Jersey, para alta producción lechera.', '2025-03-01', '2025-05-31'),
(1, 'Nueva campaña de Zeus: descuentos en servicios de monta.', '2025-04-01', '2025-06-30'),
(2, 'Apolo en exhibición en la Feria Ganadera de Antioquia.', '2025-05-01', '2025-07-31'),
(4, 'Última oportunidad para adquirir a Thor.', '2025-06-01', '2025-08-31'),
(6, 'Titán: semental de élite, disponible para venta.', '2025-07-01', '2025-09-30'),
(7, 'Orion: genética superior para su ganadería.', '2025-08-01', '2025-10-31');
