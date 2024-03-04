### Tarea 6 
### Instrucciones
1. Usar funciones de agregación para calcular
- Conteo de frecuencias
- Mínimos y máximos
- Cuantil cuyo resultado sea distinto a la mediana
- Moda
- Reporta hallazgos, dificultades y posibles soluciones.

2. Haz un ejemplo de cada una de estas consultas

Las funciones a calcular se encuentran en [Clase 6](Tarea_6.sql) 

Hallazgo: Otra forma de calcular el cuantil distinto a la mediana es utilizando la función NTILE(). Esta función divide el conjunto de datos en un número especificado de grupos y asigna un número de grupo a cada fila. Por ejemplo si escribo NILE(4), el conjunto de datos se dividirá en 4, entonces el grupo con el número 3 contendrá el tercer cuartil, que corresponde al percentil 75.
