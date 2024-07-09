[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/-EjFdzh7)

# Sistema de Automatización de Carga de Datos y Modificación de Reportes en el Almacén de Datos

## Integrantes:
1. Ccalli Chata, Joel Robert
2. Anahua Coaquira, Mayner Gonzalo
3. Zevallos Purca, Justin Zinedine
4. Paco Ramos Aaron Pedro
5. Salinas Condori, Erick Javier

## Introducción
- **Propósito**: Desarrollar un sistema automatizado que facilite la carga, almacenamiento y modificación de datos en archivos CSV, así como la generación y actualización de reportes en un almacén de datos.
- **Alcance**: Incluye el desarrollo de un sistema de automatización de carga de datos, modificación de reportes, capacitación de usuarios, pruebas y validación del sistema.

## Generalidades de la Empresa
- **Nombre de la Empresa**: AOE-System
- **Visión**: Definir y establecer un sistema eficiente y automatizado para la carga de datos, optimizando los procesos de almacenamiento y reporte en la organización.
- **Misión**: Implementar una solución de automatización de carga de datos y modificar los reportes existentes para mejorar la precisión, eficiencia y accesibilidad de la información almacenada.

## Visionamiento de la Empresa
- **Descripción del Problema**: El proceso de carga de datos es manual y propenso a errores, resultando en retrasos y problemas de precisión en los reportes.
- **Objetivos de Negocios**:
  - Mejorar la eficiencia operativa reduciendo el tiempo de carga de datos.
  - Aumentar la precisión y consistencia de los datos almacenados.
  - Facilitar el acceso a información actualizada y confiable para la toma de decisiones.
  - Reducir los costos operativos asociados a la gestión manual de datos.

## Alcance del Proyecto
- Desarrollo e implementación de un sistema automatizado de carga de datos.
- Modificación del reporte de la unidad 1 para que utilice el nuevo almacén de datos.
- Capacitación a los usuarios sobre el nuevo sistema.
- Pruebas y validación del sistema para garantizar su correcto funcionamiento.

## Objetivos de Diseño
- Crear un sistema de automatización para la carga de datos.
- Modificar los reportes existentes para que apunten al nuevo almacén de datos.
- Asegurar la integración y compatibilidad con los sistemas existentes.
- Garantizar la escalabilidad del sistema para futuros requerimientos.

## Análisis de Procesos
- **Diagrama del Proceso Actual**: Incluye la descripción y representación gráfica del proceso actual de carga y manejo de datos.
- **Diagrama del Proceso Propuesto**: Incluye la descripción y representación gráfica del proceso automatizado propuesto.

## Especificación de Requerimientos de Software
### Requerimientos Funcionales Iniciales:
- El sistema debe permitir la carga automática de datos desde múltiples fuentes.
- Debe validar los datos durante el proceso de carga.
- El sistema debe integrar los datos en el almacén de datos de manera estructurada.
- Debe generar alertas en caso de errores durante la carga de datos.
- El sistema debe ser capaz de programar cargas de datos periódicas.
- Debe permitir la modificación de reportes para apuntar al nuevo almacén de datos.

### Requerimientos No Funcionales:
- El sistema debe ser escalable para manejar volúmenes crecientes de datos.
- Debe tener una alta disponibilidad (99.9% uptime).
- El tiempo de respuesta para la carga de datos no debe exceder los 10 minutos.
- El sistema debe cumplir con las normativas de seguridad de datos.

### Requerimientos Funcionales Finales:
- El sistema debe permitir la configuración de reglas de validación de datos personalizadas.
- Debe soportar la carga de datos en tiempo real.
- El sistema debe permitir la extracción y carga de datos mediante APIs.
- Debe proporcionar opciones de transformación de datos durante la carga.
- El sistema debe permitir la replicación de datos a otros almacenes de datos.
- El sistema debe permitir la administración de permisos de usuario para la carga de datos.
- Debe integrar una solución de backup y recuperación de datos automatizada.

## Reglas de Negocio:
- Solo los usuarios autorizados pueden iniciar procesos de carga de datos.
- Los datos deben pasar por validaciones predefinidas antes de ser almacenados.
- Las cargas de datos fallidas deben ser notificadas al administrador del sistema.
- Los reportes deben ser actualizados automáticamente tras cada carga de datos exitosa.

## Fase de Desarrollo
### Perfiles de Usuario:
- **Administrador del Sistema**: Responsable de la configuración y mantenimiento del sistema.
- **Analista de Datos**: Utiliza el sistema para cargar datos y generar reportes.
- **Usuario Final**: Consulta los reportes generados para la toma de decisiones.

### Modelo Conceptual:
- **Diagrama de Paquetes**: Agrupación de elementos del sistema por funcionalidad.
- **Diagrama de Casos de Uso**: Representación de las interacciones entre los actores y el sistema.
- **Escenarios de Caso de Uso (Narrativa)**: Descripción detallada de los flujos de trabajo del sistema.

### Modelo Lógico:
- **Análisis de Objetos**: Detallado análisis y descripción de los objetos que forman parte del sistema.
- **Diagrama de Actividades con Objetos**: Representación gráfica de las actividades y su secuencia con los objetos involucrados.
- **Diagrama de Secuencia**: Diagrama que muestra la interacción entre los objetos a lo largo del tiempo.
- **Diagrama de Clases**: Representación estática de las clases del sistema y sus relaciones.

## Conclusiones
- La implementación del sistema mejorará significativamente la eficiencia, precisión y accesibilidad de la información en la organización, apoyando una mejor toma de decisiones y optimizando los procesos operativos.

## Recomendaciones
- Realizar una capacitación adecuada para todos los usuarios del sistema.
- Implementar un plan de monitoreo continuo para garantizar el rendimiento y la seguridad del sistema.
- Realizar revisiones periódicas del sistema para identificar y solucionar posibles problemas.
- Planificar actualizaciones futuras para mantener el sistema alineado con las necesidades de la organización.

## Bibliografía - Webgrafía
- Kimball, R., & Ross, M. (2013). *The Data Warehouse Toolkit: The Definitive Guide to Dimensional Modeling*. Wiley.
- Inmon, W. H. (2005). *Building the Data Warehouse*. Wiley.
- Elmasri, R., & Navathe, S. B. (2015). *Fundamentals of Database Systems*. Pearson.
- [Amazon S3](https://aws.amazon.com/s3/)
- [AWS IAM](https://aws.amazon.com/iam/)
- [Inteligencia de Negocios](https://en.wikipedia.org/wiki/Business_intelligence)

