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

## Diagrama E-R 



## Entidades_y_Relaciones 🌐

***Breve explicación de entidades y la relación entre cada una de ellas:***

**Tienda 🏦:** La entidad Tienda almacena la información básica de cada tienda física que forma parte del sistema. Cada tienda tiene un ID_Tienda único que la identifica. Además, se guardan datos como el nombre, ubicación, teléfono, email y los horarios de apertura y cierre (Horario_Apertura, Horario_Cierre).

**Producto 🖥️:** Producto representa los artículos que la tienda vende. Cada producto tiene un ID_Producto único. Además, se guardan el nombre, descripción, el precio y una Fecha_Añadido para conocer cuándo fue registrado en el sistema.

**Categoría 🖲️:** Categoría es la entidad que agrupa los productos bajo un nombre común y una descripción. Cada categoría tiene un ID_Categoría único. Esta entidad permite organizar los productos de manera que sea más fácil buscarlos y clasificarlos.

**Proveedor 👷‍♂️:** El proveedor es la entidad que representa a las empresas o personas que suministran los productos a la tienda. Cada proveedor tiene un ID_Proveedor único, y la entidad almacena datos importantes como el nombre, teléfono, email y dirección.

**Personal 👨‍💼:** La entidad personal contiene información de los empleados que trabajan en una tienda. Cada miembro del personal tiene un ID_Personal único. Se almacenan datos personales como el nombre, apellido, teléfono, email, el cargo que ocupa, y la Fecha_Ingreso. 
 
**Cliente 🧔:** La entidad cliente almacena la información de las personas que compran en la tienda. Cada cliente tiene un ID_Cliente único, y se guarda información personal como nombre, apellido, teléfono, email y dirección.

**Venta 💵:** La entidad Venta registra cada transacción que ocurre en la tienda. Cada venta tiene un ID_Venta único. Además, se registra la tienda en la que ocurrió la venta (ID_Tienda), el cliente que la realizó (ID_Cliente), y el empleado que gestionó la venta (ID_Personal). Se guarda la Fecha_Venta y el Total de la venta.

**Detalle_Venta 🗂️:** La entidad Detalle_Venta desglosa los productos vendidos en cada venta. Cada detalle tiene un ID_Detalle_Venta único y está relacionado con una venta específica (ID_Venta) y un producto específico (ID_Producto).

**Inventario 📑:** La entidad Inventario almacena la cantidad disponible de cada producto en cada tienda. Cada registro en inventario tiene un ID_Inventario único, y está relacionado tanto con una tienda (ID_Tienda) como con un producto específico (ID_Producto).

**Factura 📃:** Factura es la entidad que genera un comprobante de cada venta. Tiene un ID_Factura único y está relacionada con una venta específica (ID_Venta).

**Devolución 🧾:** La entidad Devolución permite gestionar los productos que los clientes devuelven. Cada devolución tiene un ID_Devolución único, y está relacionada con una venta específica (ID_Venta) y un producto específico (ID_Producto). 

### Resúmen de Relaciones:

- *Tienda* se relaciona con Personal, Inventario, y Venta.
- *Producto* se relaciona con Categoría, Proveedor, Detalle_Venta, y Inventario.
- *Venta* se relaciona con Tienda, Cliente, Personal, Detalle_Venta, Factura, y Devolución.
- *Inventario* se relaciona con Tienda y Producto.
- *Detalle_Venta* se relaciona con Venta y Producto.
- *Factura* está relacionada directamente con Venta.
- *Devolución* está relacionada con Venta y Producto.


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
