**Tarea 3**
### Instrucciones
2. Representa con un diagrama relacional tu esquema del punto anterior.
3. Encuentra cuatro operaciones que vayas a usar en tu base de datos y exprésalas mediante operadores del algebra relacional. Explica con tus propias palabras cada una de estas operaciones.
4. Reporta tu tarea de una manera claramente identificable en el repositorio.

### Representación del diagrama relacional

Área geográfica (<u>(ID del estado)<u>, nombre del estado, nombre de los municipios del estado, ID del municipio_Municipio)

Municipio (ID del municipio, municipio)

Subsector (ID del subsector, subsector)

Rama (ID de la rama, rama)

Clase (ID de la clase, clase)

Sector económico (ID de la actividad económica, nombre de la actividad económica, ID del subsector_Subsector, ID de la rama_Rama, ID de la clase_Clase)

Empresas (ID de la empresa, nombre, inversión total, producción bruta total, personal ocupado total, personal ocupado total, remuneraciones, gastos por consumo de bienes y servicios, ingresos por suministro de bienes y servicios, activos fijos, ID del estado_Área geográfica, ID de la actividad económica_Sector económico)

Empleados (ID del empleado, nombre del empleado, salario, horas trabajadas, ID de la empresa_Empresas, ID del estado_Área geográfica, ID de la actividad económica_Sector económico)

Empresas_área geográfica (ID del estado, ID de la actividad económica, ID del municipio, nombre del estado, ID de la empresa, nombre de la empresa, inversión total, producción bruta total, personal ocupado total, remuneraciones, gastos por consumo de bienes y servicios, ingresos por suministro de bienes y servicios, activos fijos) 

Empresas_sector económico (ID de la actividad económica, ID del estado, ID del subsector, ID de la rama y ID de la clase, nombre de la actividad económica, ID de la empresa, nombre de la empresa, inversión total, producción bruta total, personal ocupado total, remuneraciones, gastos por consumo de bienes y servicios, ingresos por suministro de bienes y servicios, activos fijos) 

Empresas_empleados (ID de la empresa, ID del estado, ID de la actividad económica, ID del empleado, nombre del empleado, salario, horas trabajadas, nombre de la empresa, inversión total, producción bruta total, personal ocupado total, remuneraciones, gastos por consumo de bienes y servicios, ingresos por suministro de bienes y servicios, activos fijos)

Sector económico_subsector (ID del subsector, ID de la rama, ID de la clase, subsector, ID de la actividad económica, nombre de la actividad económica)
