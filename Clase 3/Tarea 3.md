**Tarea 3**
### Instrucciones
1. Crea un esquema del modelo relacional de tu base de datos a partir del modelo e-r de la tarea anterior.
2. Representa con un diagrama relacional tu esquema del punto anterior.
3. Encuentra cuatro operaciones que vayas a usar en tu base de datos y exprésalas mediante operadores del algebra relacional. Explica con tus propias palabras cada una de estas operaciones.
4. Reporta tu tarea de una manera claramente identificable en el repositorio.

### Representación del diagrama relacional

Área geográfica (*ID del estado*, nombre del estado, nombre de los municipios del estado, ID del municipio_municipio)

Municipio (*ID del municipio*, municipio)

Subsector (*ID del subsector*, subsector)

Rama (*ID de la rama*, rama)

Clase (*ID de la clase*, clase)

Sector económico (*ID de la actividad económica*, nombre de la actividad económica, ID del subsector_subsector, ID de la rama_rama, ID de la clase_clase)

- Empresas (*ID de la empresa*, nombre, inversión total, producción bruta total, personal ocupado total, personal ocupado total, remuneraciones, gastos por consumo de bienes y servicios, ingresos por suministro de bienes y servicios, activos fijos, ID del estado_área geográfica, ID de la actividad económica_sector económico)

- Empleados (*ID del empleado*, nombre del empleado, salario, horas trabajadas, ID de la empresa_empresas, ID del estado_área geográfica, ID de la actividad económica_sector económico)

- Empresas_área geográfica (*ID del estado_área geográfica*, *ID de la actividad económica_empresas*, *ID del municipio_área geográfica*, nombre del estado, ID de la empresa, nombre de la empresa, inversión total, producción bruta total, personal ocupado total, remuneraciones, gastos por consumo de bienes y servicios, ingresos por suministro de bienes y servicios, activos fijos) 

- Empresas_sector económico (*ID de la actividad económica_sector económico*, *ID del estado_empresas*, *ID del subsector_sector económico*, *ID de la rama_sector económico* y *ID de la clase_sector económico*, nombre de la actividad económica, ID de la empresa, nombre de la empresa, inversión total, producción bruta total, personal ocupado total, remuneraciones, gastos por consumo de bienes y servicios, ingresos por suministro de bienes y servicios, activos fijos) 

- Empresas_empleados (*ID de la empresa_empresas*, *ID del estado_empresas*, *ID de la actividad económica_empresas*, *ID del empleado_empleados*, nombre del empleado, salario, horas trabajadas, nombre de la empresa, inversión total, producción bruta total, personal ocupado total, remuneraciones, gastos por consumo de bienes y servicios, ingresos por suministro de bienes y servicios, activos fijos)

### Álgebra relacional

1. Remuneraciones de las empresas en Chiapas y Ciudad de México.

π NombreEmpresa,Remuneraciones(σ ÁreaGeográfica=’Chiapas’∨ ÁreaGeográfica=’Ciudad de México’)(Empresas X Área geográfica)

- De la tabla de empresas y área geográfica, se seleccionarán solo las filas de los estados de Chiapas (ID: 07) y la Ciudad de México (ID: 09) y la columna de ‘Remuneraciones ‘ con el objetivo de comparar el total de pagos que se le da a un trabajador en diferente área geográfica.

2. El total de horas trabajadas y el salario en el sector de Construcción.

π NombreEmpleado,Salario,HorasTrabajadas (σ IDSectorEconomico='23')(Empleados X Empresas)

- De la tabla empresas y empleados, se busca saber si hay diferencia significativa entre las horas trabajadas y el salario en el sector de Construcción (ID: 23) para ello se filtran las filas de horas trabajadas y salario y la columna de Construcción. 

3. El total de gastos por consumo de bienes y servicios e ingresos por suministro de bienes y servicios en San Nicolás de los Garza y San Pedro Garza.

π NombreEmpresa,GastosBienesServicios,IngresosBienesServicios (σ Área geográfica = 'San Nicolás de los Garza' ∨ Área geográfica = 'San Pedro Garza García' (Empresas X Área geográfica))

- En este caso, se desea averiguar si hay relación entre el total de gastos y total de ingresos entre dos municipios de Nuevo León: San Nicolás de los Garza (ID: 19046) y San Pedro Garza García (ID: 19019) de la tabla empresas y área geográfica, por lo que se filtran los datos en la cantidad de gastos e ingresos de las empresas con estas dos ubicaciones.

4. El personal ocupado total en el sector científico y sector de finanzas y seguros en Coahuila.

π NombreEmpresa,PersonalOcupadoTotal (σ SectorEconomico='Científico, Profesional y Técnico’ ∨ SectorEconomico= 'Finanzas y Seguros' ∧ AreaGeográfica='Coahuila' (Empresas X Sector económico))

- Por último, se busca comparar el total de personal ocupado que existe entre el sector científico, profesional y técnico (ID: 54) y el sector de finanzas y seguros (ID: 52), con el fin de observar si los datos presentan una variación significativa. Para ello, se filtran ambos sectores y el total de personal ocupado de la tabla empresas y sector económico.