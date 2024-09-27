-- Creación de la base de datos
CREATE DATABASE ToxicZone;
USE ToxicZone;

-- Tabla Ciudad
CREATE TABLE Ciudad (
    ID_Ciudad INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Departamento VARCHAR(100) NOT NULL
);

-- Tabla Ubicación
CREATE TABLE Ubicación (
    ID_Ubicación INT AUTO_INCREMENT PRIMARY KEY,
    ID_Ciudad INT,
    Dirección VARCHAR(255) NOT NULL,
    FOREIGN KEY (ID_Ciudad) REFERENCES Ciudad(ID_Ciudad)
);

-- Tabla Tienda (Modificada para usar Ubicación)
CREATE TABLE Tienda (
    ID_Tienda INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    ID_Ubicación INT,
    Teléfono VARCHAR(15) NOT NULL,
    Email VARCHAR(100),
    Horario_Apertura TIME NOT NULL,
    Horario_Cierre TIME NOT NULL,
    FOREIGN KEY (ID_Ubicación) REFERENCES Ubicación(ID_Ubicación)
);

-- Tabla Categoría
CREATE TABLE Categoría (
    ID_Categoría INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Descripción TEXT
);

-- Tabla Proveedor
CREATE TABLE Proveedor (
    ID_Proveedor INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Teléfono VARCHAR(15) NOT NULL,
    Email VARCHAR(100),
    Dirección VARCHAR(255)
);

-- Tabla Producto
CREATE TABLE Producto (
    ID_Producto INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Descripción TEXT,
    Categoría INT,
    Precio DECIMAL(10, 2) NOT NULL,
    Proveedor_ID INT,
    Fecha_Añadido DATE NOT NULL,
    FOREIGN KEY (Categoría) REFERENCES Categoría(ID_Categoría),
    FOREIGN KEY (Proveedor_ID) REFERENCES Proveedor(ID_Proveedor)
);

-- Tabla Personal
CREATE TABLE Personal (
    ID_Personal INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL,
    ID_Tienda INT,
    Cargo VARCHAR(100) NOT NULL,
    Teléfono VARCHAR(15) NOT NULL,
    Email VARCHAR(100),
    Fecha_Ingreso DATE NOT NULL,
    FOREIGN KEY (ID_Tienda) REFERENCES Tienda(ID_Tienda)
);

-- Tabla Cliente
CREATE TABLE Cliente (
    ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL,
    Teléfono VARCHAR(15) NOT NULL,
    Email VARCHAR(100),
    Dirección VARCHAR(255)
);

-- Tabla Venta
CREATE TABLE Venta (
    ID_Venta INT AUTO_INCREMENT PRIMARY KEY,
    ID_Tienda INT,
    ID_Cliente INT,
    ID_Personal INT,
    Fecha_Venta DATE NOT NULL,
    Total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (ID_Tienda) REFERENCES Tienda(ID_Tienda),
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente),
    FOREIGN KEY (ID_Personal) REFERENCES Personal(ID_Personal)
);

-- Tabla Detalle_Venta
CREATE TABLE Detalle_Venta (
    ID_Detalle_Venta INT AUTO_INCREMENT PRIMARY KEY,
    ID_Venta INT,
    ID_Producto INT,
    Cantidad INT NOT NULL,
    Precio_Unitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (ID_Venta) REFERENCES Venta(ID_Venta),
    FOREIGN KEY (ID_Producto) REFERENCES Producto(ID_Producto)
);

-- Tabla Inventario
CREATE TABLE Inventario (
    ID_Inventario INT AUTO_INCREMENT PRIMARY KEY,
    ID_Tienda INT,
    ID_Producto INT,
    Cantidad_Disponible INT NOT NULL,
    Fecha_Última_Actualización DATE NOT NULL,
    FOREIGN KEY (ID_Tienda) REFERENCES Tienda(ID_Tienda),
    FOREIGN KEY (ID_Producto) REFERENCES Producto(ID_Producto)
);

-- Tabla Factura
CREATE TABLE Factura (
    ID_Factura INT AUTO_INCREMENT PRIMARY KEY,
    ID_Venta INT,
    Fecha_Factura DATE NOT NULL,
    Total DECIMAL(10, 2) NOT NULL,
    Método_Pago VARCHAR(50),
    FOREIGN KEY (ID_Venta) REFERENCES Venta(ID_Venta)
);

-- Tabla Devolución
CREATE TABLE Devolución (
    ID_Devolución INT AUTO_INCREMENT PRIMARY KEY,
    ID_Venta INT,
    ID_Producto INT,
    Cantidad INT NOT NULL,
    Fecha_Devolución DATE NOT NULL,
    Motivo TEXT,
    FOREIGN KEY (ID_Venta) REFERENCES Venta(ID_Venta),
    FOREIGN KEY (ID_Producto) REFERENCES Producto(ID_Producto)
);