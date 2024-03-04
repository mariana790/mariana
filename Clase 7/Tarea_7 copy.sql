USE Censos_económicos;

--Subconsulta para obtener el máximo valor de producción bruta total

SELECT *
FROM empresas
WHERE produccion_bruta_total_id = (
    SELECT MAX(produccion_bruta_total_id)
    FROM empresas
);


-- Subconsulta para obtener la cantidad de empresas con ID de la producción bruta total superior a 20

SELECT COUNT(*)
FROM empresas
WHERE produccion_bruta_total_id > (
    SELECT produccion_bruta_total_id
    FROM empresas
    WHERE nombre = 'Midel'
    LIMIT 1
) AND produccion_bruta_total_id > 20;



---Transacciones

START TRANSACTION;

-- Verificar empresas con producción bruta total negativa
SELECT *
FROM empresas
WHERE produccion_bruta_total_id < 0;

-- Verificar empresas con producción bruta total nula
SELECT *
FROM empresas
WHERE produccion_bruta_total_id IS NULL;

-- Si se encuentran inconsistencias, revertir la transacción
ROLLBACK;

