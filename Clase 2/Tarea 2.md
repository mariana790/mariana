**Tarea 2**
### Instrucciones
1. Convierte tu base de datos no estructurada en un modelo entidad-relación, representándolo con un diagrama de entidad-relación. Usa nodos con figuras correctas y aristas claramente señaladas con los números correspondientes para las relaciones.
2. Muestra el dominio de los atributos.
3. Subir esta descripción en un archivo markdown o PDF nombrado claramente.

### Diagrama entidad-relación (PDF)
*Relaciones*
1. Un programa puede tener varios proyectos.
1. Un proyecto solo puede tener un programa.

2. Para un proyecto en específico existe un solo sitio primario.
2. A un sitio primario le corresponde un proyecto.

3. Un género puede tener varios datos clínicos.
3. Varios datos clínicos corresponden a un género.

4. Un sitio puede tener varios subtipos.
4. Todos los subtipos corresponden a un solo sitio.

5. Un tipo de muestra puede estar en varios pacientes.
5. Un paciente solo puede tener un tipo de muestra.

6. Varios tipos de archivo contienen varios datos clínicos.
6. Varios datos clínicos se guardan en varios tipos de archivo.

7. Un mismo biotipo del gen puede tener varios tipos de mutaciones
7. Varios tipos de mutaciones pertenecen a un solo biotipo del gen.

8. Una mutación en específico puede estar en varios pacientes.
8. Un paciente solo puede tener esa mutación

### Diagrama entidad-relación 2 (PNG)
*Relaciones*
1. Un tipo de muestra puede estar en varios pacientes, pero un paciente solo puede tener un tipo de muestra.
2. Una mutación en específico puede estar en varios pacientes, peroo un paciente solo puede tener esa mutación.
3. Un paciente puede tener varias mutaciones en específico, pero esas mutaciones solo están en un único paciente. 
