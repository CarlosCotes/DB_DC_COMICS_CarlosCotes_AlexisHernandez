# ☢️ DB TOXIC ZONE ☢️

## Tabla de Contenido 📋
| Indice | Título  |
|--|--|
| 1. | [Descripción](#descripción-) |
| 2. | [Diagrama_E-R]() |
| 3. | [Entidades_y_Relaciones](#entidades_y_relaciones-) |
| 4. | [Consultas]() |
| 5. | [Tecnologías](#tecnologías-%EF%B8%8F) |
| 6. | [USO](#uso-) |
| 7. | [Contribución](#contribución-) |
| 8. | [Contacto](#contacto-) |

## Descripción 💻

Toxic Zone es una base de datos MySQL diseñada para gestionar y organizar el inventario, las ventas y los datos de los clientes de una tienda de componentes electrónicos. Este proyecto ofrece una solución bien estructurada y escalable para manejar diversos aspectos de la operación de una tienda minorista, como el seguimiento de la disponibilidad de productos, la gestión de información de clientes y el procesamiento de pedidos.  

## Entidades_y_Relaciones 🌐

***Breve explicación de entidades y la relación entre cada una de ellas:***

Personajes 🥷: Cada personaje de DC Comics tiene un ID único, además de atributos como nombre, alias, primera aparición y tipo (héroe o villano).

Escritores 📝: Cada escritor tiene un ID único, nombre, apellido, nacionalidad y fecha de nacimiento.

Poderes ✴️: Cada poder tiene un ID único. Los poderes son habilidades especiales, como fuerza sobrehumana o telepatía.

Asociaciones 🦸🦹: Cada asociación tiene un ID único. Representa equipos o grupos de personajes, como la Liga de la Justicia o los Jóvenes Titanes.

Ciudad 🌃: Cada ciudad tiene un ID único. Representa las ciudades donde los personajes residen o actúan, como Gotham o Metrópolis.
 
Cómics 📖: Cada cómic tiene una ID único y es una publicación individual que puede pertenecer a una serie de cómics.

Vehículos : Cada vehículo tiene un ID único y representa los vehículos utilizados por los personajes, como el Batimóvil o la nave de Superman.

Eventos 🌁: Cada evento tiene un ID único. Son arcos argumentales que afectan a varios personajes y cómics, como Crisis en Tierras Infinitas.

Apariciones Cómics 📜: Cada aparición en cómic tiene un ID único. Guarda las apariciones de personajes en cómics.

Universos 🗺️: Cada universo presenta un ID único y además posee atributos como nombre, descripción, tipo de universo y fecha de creación. representa los distintos universos o realidades alternativas del multiverso DC, como Tierra-1 o Tierra-2.

### Relaciones:

## Consultas 📑

## Tecnologías 🖥️

- **MySQL:** Sistema de gestión de bases de datos (DBMS, por sus siglas en inglés) de código abierto desarrollado por Oracle.
- **MySQL Workbench:** Herramienta visual de diseño de bases de datos que integra desarrollo de software, administración de bases de datos, diseño de bases de datos, gestión y mantenimiento para el sistema de base de datos MySQL.
- **StarUML:** Herramienta para el modelamiento de software basado en los estándares UML (Unified Modeling Language) y MDA (Model Driven Arquitecture).
- **VS Code:** Editor de código fuente ligero pero eficaz que se ejecuta en el escritorio y está disponible para Windows, macOS y Linux.

> [!IMPORTANT]
> ## USO 🔧

- **Clona este repositorio:**
https://github.com/CarlosCotes/DB_ToxicZone_CarlosCotes_AlexisHernandez.git

- **Navega al directorio del proyecto:**
`(cd DB_ToxicZone_CarlosCotes_AlexisHernandez)`

- **Crea la base de datos en MySQL.**
`(CREATE DATABASE toxic_zone_db;)`

- **Luego selecciona esta base de datos como la predeterminada.**
`(USE toxic_zone_db;)`
   
- **Importa el archivo SQL proporcionado para generar las tablas y datos iniciales.**.
- Abre MySQL Workbench (si no lo has hecho ya).
- En el menú principal, selecciona la opción File > Open SQL Script.
- Navega a la ubicación donde se encuentra el archivo `((toxic_zone.sql))` y selecciónalo.
- Esto abrirá el contenido del archivo en el editor de texto dentro de MySQL Workbench.

- **Ejecuta el script.**
- Para ejecutar el archivo SQL, haz clic en el botón de "rayo" (⚡) que se encuentra en la parte superior izquierda del editor o presiona `(Ctrl + Enter (Windows))` / `(Cmd + Enter (MacOS))`.
- Esto creará las tablas y cargará los datos necesarios en la base de datos.

> [!TIP]
> ## Contribución 👥

¡Me encantaría recibir tus contribuciones! Si deseas contribuir a este proyecto, por favor sigue estos pasos:

- Haz un fork del proyecto.
- Crea una nueva rama `(git checkout -b feature/nueva-funcionalidad)`.
- Realiza tus cambios y haz commit `(git commit -am 'Añadir nueva funcionalidad')`.
- Empuja la rama `(git push origin feature/nueva-funcionalidad)`.
- Abre un Pull Request.

> [!NOTE]
> ## Contacto 🧑‍💻

Hecho por [Alexis Hernández](https://github.com/AlexisH28) [Carlos Cotes](https://github.com/CarlosCotes) 

Alexis Rafael Hernández Tocora -- (alexismar1228@gmail.com)
Carlos Mario Cotes Almazo -- (carlosscotess@gmail.com)
