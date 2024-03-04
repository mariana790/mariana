USE Censos_económicos;

-- Conteo de frecuencias
SELECT inversion_total_id, COUNT(*) AS frecuencia
FROM empresas
GROUP BY inversion_total_id 
ORDER BY inversion_total_id ;

-- Cálculo de la media
SELECT AVG(inversion_total_id) AS media
FROM empresas;

-- Cálculo del mínimo y máximo
SELECT MIN(inversion_total_id) AS minimo, MAX(inversion_total_id) AS maximo
FROM empresas;

-- Cálculo del cuantil diferente a la mediana
SELECT NTILE(4) OVER (ORDER BY produccion_bruta_total_id) AS cuantil_1
FROM empresas;

   
-- Cálculo de la moda
SELECT produccion_bruta_total_id AS moda, COUNT(*) AS frecuencia
FROM empresas
GROUP BY produccion_bruta_total_id
ORDER BY COUNT(*) DESC
LIMIT 1;
