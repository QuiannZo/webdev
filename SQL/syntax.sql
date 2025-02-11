-- ----------------------------------------
-- 🗄️ TIPOS DE DATOS EN SQL
-- ----------------------------------------
-- Números
INT       -- Entero
BIGINT    -- Entero grande
DECIMAL   -- Decimal de precisión fija
FLOAT     -- Decimal de precisión variable

-- Cadenas de texto
CHAR(n)   -- Cadena de longitud fija
VARCHAR(n)-- Cadena de longitud variable
TEXT      -- Texto largo

-- Fechas y horas
DATE      -- Solo fecha
TIME      -- Solo hora
DATETIME  -- Fecha y hora
TIMESTAMP -- Marca de tiempo

-- Booleanos
BOOLEAN   -- TRUE o FALSE (en MySQL, es un alias de TINYINT(1))

-- ----------------------------------------
-- 📌 COMANDOS BÁSICOS DE SQL
-- ----------------------------------------

-- 🔹 CREAR BASE DE DATOS
CREATE DATABASE mi_base_de_datos;

-- 🔹 USAR UNA BASE DE DATOS
USE mi_base_de_datos;

-- 🔹 CREAR UNA TABLA
CREATE TABLE usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    edad INT CHECK (edad >= 18),
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 🔹 INSERTAR DATOS EN UNA TABLA
INSERT INTO usuarios (nombre, email, edad) VALUES ('Juan Perez', 'juan@email.com', 25);

-- 🔹 CONSULTAR DATOS
SELECT * FROM usuarios;  -- Obtener todos los registros
SELECT nombre, email FROM usuarios WHERE edad > 18;  -- Filtrar resultados

-- 🔹 ACTUALIZAR DATOS
UPDATE usuarios SET email = 'nuevo@email.com' WHERE id = 1;

-- 🔹 ELIMINAR DATOS
DELETE FROM usuarios WHERE id = 1;

-- ----------------------------------------
-- 🔄 RELACIONES ENTRE TABLAS (FOREIGN KEYS)
-- ----------------------------------------

CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT,
    fecha_pedido DATE,
    total DECIMAL(10,2),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE
);

-- ----------------------------------------
-- 🚀 CONSULTAS AVANZADAS
-- ----------------------------------------

-- 🔹 JOINS: Unir datos de múltiples tablas
SELECT usuarios.nombre, pedidos.total
FROM usuarios
JOIN pedidos ON usuarios.id = pedidos.usuario_id;

-- 🔹 AGRUPAR Y CONTAR REGISTROS
SELECT usuario_id, COUNT(*) AS cantidad_pedidos
FROM pedidos
GROUP BY usuario_id;

-- 🔹 SUBCONSULTAS
SELECT nombre FROM usuarios WHERE id IN (SELECT usuario_id FROM pedidos WHERE total > 100);

-- 🔹 CREAR UN ÍNDICE PARA MEJORAR EL RENDIMIENTO
CREATE INDEX idx_email ON usuarios(email);

-- 🔹 CREAR UNA VISTA (QUERY GUARDADO COMO UNA TABLA VIRTUAL)
CREATE VIEW vista_usuarios_activos AS
SELECT id, nombre, email FROM usuarios WHERE edad >= 18;

-- 🔹 CREAR UN PROCEDIMIENTO ALMACENADO
DELIMITER $$
CREATE PROCEDURE ObtenerUsuarios()
BEGIN
    SELECT * FROM usuarios;
END $$
DELIMITER ;

-- ----------------------------------------
-- 🎯 GESTIÓN DE PERMISOS
-- ----------------------------------------

-- 🔹 CREAR UN USUARIO
CREATE USER 'nuevo_usuario'@'localhost' IDENTIFIED BY 'contraseña_segura';

-- 🔹 OTORGAR PERMISOS
GRANT SELECT, INSERT, UPDATE ON mi_base_de_datos.* TO 'nuevo_usuario'@'localhost';

-- 🔹 REVOCAR PERMISOS
REVOKE INSERT ON mi_base_de_datos.* FROM 'nuevo_usuario'@'localhost';

-- 🔹 ELIMINAR UN USUARIO
DROP USER 'nuevo_usuario'@'localhost';

-- ----------------------------------------
-- ✅ TRANSACCIONES (CONSISTENCIA EN LOS DATOS)
-- ----------------------------------------

-- Iniciar una transacción
START TRANSACTION;

-- Ejecutar consultas
UPDATE usuarios SET edad = edad + 1 WHERE id = 2;
INSERT INTO pedidos (usuario_id, fecha_pedido, total) VALUES (2, '2025-02-05', 150.00);

-- Confirmar cambios
COMMIT;

-- Si hay un error, deshacer cambios
ROLLBACK;
