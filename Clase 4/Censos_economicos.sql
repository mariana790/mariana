CREATE DATABASE Censos_economicos_Mexico;
USE Censos_economicos_Mexico;

CREATE TABLE ubicacion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30) DEFAULT 'X'
);

CREATE TABLE sector_economico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre TEXT,
    ubicacion_id INT,
    FOREIGN KEY (ubicacion_id) REFERENCES ubicacion(id)
);

CREATE TABLE empresas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30),
    ubicacion_id INT,
    sector_economico_id INT,
    FOREIGN KEY (ubicacion_id) REFERENCES ubicacion(id),
    FOREIGN KEY (sector_economico_id) REFERENCES sector_economico(id)
);

CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ubicacion_id INT,
    sector_economico_id INT,
    empresas_id INT,
    FOREIGN KEY (ubicacion_id) REFERENCES ubicacion(id),
    FOREIGN KEY (sector_economico_id) REFERENCES sector_economico(id),
    FOREIGN KEY (empresas_id) REFERENCES empresas(id)
);

SHOW TABLES;

INSERT INTO ubicacion (nombre) VALUES 
('Aguascalientes'),
('Baja California'),
('Baja California Sur'),
('Campeche'),
('Coahuila de Zaragoza'),
('Colima'),
('Chiapas'),
('Chihuahua'),
('Ciudad de México'),
('Durango'),
('Guanajuato'),
('Guerrero'),
('Hidalgo'),
('Jalisco'),
('México'),
('Michoacán de Ocampo'),
('Morelos'),
('Nayarit'),
('Nuevo León'),
('Oaxaca');

SELECT * FROM ubicacion;

INSERT INTO sector_economico (nombre, ubicacion_id) VALUES
('Agricultura, cría y explotación de animales, aprovechamiento forestal, pesca y caza', 4),
('Minería',2),
('Generación, transmisión, distribución y comercialización de energía eléctrica, suministro de agua y de gas natural por ductos al consumidor final', 1),
('Construcción',3),
('Industrias manufactureras',3),
('Comercio al por mayor',1),
('Comercio al por menor',8),
('Transportes, correos y almacenamiento',4),
('Información en medios masivos',17),
('Servicios financieros y de seguros',6),
('Servicios inmobiliarios y de alquiler de bienes muebles e intangibles',13),
('Servicios profesionales, científicos y técnicos',19),
('Corporativos',4),
('Servicios de apoyo a los negocios y manejo de residuos, y servicios de remediación',3),
('Servicios educativos',16),
('Servicios de salud y de asistencia social',1),
('Servicios de esparcimiento culturales y deportivos, y otros servicios recreativos',14),
('Servicios de alojamiento temporal y de preparación de alimentos y bebidas',2),
('Otros servicios excepto actividades gubernamentales',1);

SELECT * FROM sector_economico;

INSERT INTO empresas (nombre, ubicacion_id, sector_economico_id) VALUES
    ('PEMEX', 1,8),
    ('America Movil', 2,10),
    ('Walmart', 9,9),
    ('Soriana', 14,10),
    ('Coppel', 2,5),
    ('CFE', 1,9),
    ('FEMSA', 1, 2),
    ('General Motors', 13,7),
    ('CEMEX', 12,11),
    ('BBVA', 1,4),
    ('Honda', 14,2),
    ('Infonavit', 2,8),
    ('Arca continental', 4,1),
    ('Ford', 19,18),
    ('SAM’S Club', 13,13),
    ('Liverpool', 7,12),
    ('Cinépolis', 2,8),
    ('Chedraui', 18,2),
    ('DelSol', 4,5),
    ('Ternium', 6,6);

SELECT * FROM empresas;

INSERT INTO empleados (ubicacion_id, sector_economico_id, empresas_id) VALUES
    (11, 2, 12),
    (2, 1, 13),
    (3, 7, 5),
    (14, 8, 3),
    (15, 10, 5);

SELECT * FROM empleados;

SHOW TABLES;