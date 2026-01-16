-- Crea la tabla principal para almacenar las series de Netflix
CREATE TABLE series_netflix (
    nombre VARCHAR(100) PRIMARY KEY,
    genero VARCHAR(50),
    temporadas INT,
    anio_estreno INT
);

-- Muestra todas las series almacenadas en la tabla
SELECT * FROM series_netflix;

-- 1. Inserta varias series en la tabla con sus respectivos datos
INSERT INTO series_netflix (nombre, genero, temporadas, anio_estreno) VALUES
('Stranger Things', 'Ciencia Ficción', 4, 2016),
('The Haunting of Hill House', 'Terror', 1, 2018),
('Black Mirror', 'Ciencia Ficción', 5, 2011),
('The walking dead', 'Terror', 11, 2010),
('Dark', 'Ciencia Ficción', 3, 2017),
('Marianne', 'Terror', 1, 2019),
('The OA', 'Ciencia Ficción', 2, 2016),
('Altered Carbon', 'Ciencia Ficción', 2, 2018),
('Midnight Mass', 'Terror', 1, 2021),
('Archive 81', 'Terror', 1, 2022),
('The Witcher', 'Fantasía', 2, 2019);

-- 2. Lista todas las series con más de 3 temporadas, ordenadas por año de estreno descendente
SELECT * FROM series_netflix
WHERE temporadas > 3
ORDER BY anio_estreno DESC;

-- 3. Muestra el año de la serie más antigua (menor año de estreno)
SELECT MIN(anio_estreno) AS primera_serie FROM series_netflix;

-- 4. Muestra el año de la serie más nueva (mayor año de estreno)
SELECT MAX(anio_estreno) AS serie_mas_nueva FROM series_netflix;

-- 5. Calcula el promedio del año de estreno de todas las series
SELECT AVG(anio_estreno) AS promedio_anio_estreno FROM series_netflix;

-- 6. Calcula el promedio de temporadas de todas las series
SELECT AVG(temporadas) AS promedio_temporadas FROM series_netflix;

-- 7. Lista las series que tengan 1, 2, 4, 5 o 7 temporadas
SELECT * FROM series_netflix
WHERE temporadas IN (1, 2, 4, 5, 7);

-- 8. Lista las series que NO tengan 1, 2, 4, 5 o 7 temporadas
SELECT * FROM series_netflix
WHERE temporadas NOT IN (1, 2, 4, 5, 7);

-- 9. Borra todas las series cuyo año de estreno sea superior a 2010
DELETE FROM series_netflix
WHERE anio_estreno > 2010;

-- 10. Reinserta las series borradas en el paso anterior
INSERT INTO series_netflix (nombre, genero, temporadas, anio_estreno) VALUES
('Stranger Things', 'Ciencia Ficción', 4, 2016),
('The Haunting of Hill House', 'Terror', 1, 2018),
('Black Mirror', 'Ciencia Ficción', 5, 2011),
('Dark', 'Ciencia Ficción', 3, 2017),
('Marianne', 'Terror', 1, 2019),
('Altered Carbon', 'Ciencia Ficción', 2, 2018),
('Midnight Mass', 'Terror', 1, 2021),
('Archive 81', 'Terror', 1, 2022),
('The Witcher', 'Fantasía', 2, 2019);

-- 11. Agrega la serie Doctor House (si ya existe, puedes cambiar el nombre)
INSERT INTO series_netflix (nombre, genero, temporadas, anio_estreno) VALUES
('Dr. House', 'Drama Médico', 8, 2004);

-- 12. Lista todas las series estrenadas entre 2005 y 2020 (ambos inclusive)
SELECT * FROM series_netflix
WHERE anio_estreno BETWEEN 2005 AND 2020;

-- 13. Lista las series cuyo nombre comienza con B o termina con e (no distingue mayúsculas/minúsculas)
SELECT * FROM series_netflix
WHERE nombre ILIKE 'b%' OR nombre ILIKE '%e';

-- 14. Lista las series cuyo año de estreno más la cantidad de temporadas excede 2010
SELECT * FROM series_netflix
WHERE (anio_estreno + temporadas) > 2010;
