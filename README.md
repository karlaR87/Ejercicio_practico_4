# Ejercicio_practico_4

CREATE DATABASE rapid_mark;
USE rapid_mark
DROP DATABASE rapid_mark


CREATE TABLE categorias (
    id_categoria VARCHAR(36) PRIMARY KEY NOT NULL DEFAULT (UUID()),
    nombre_categoria VARCHAR(50) NOT NULL
);

-- procedimiento 

DELIMITER $$
CREATE PROCEDURE insertar_categoria(IN nombre_categoria VARCHAR(50))
BEGIN
    INSERT INTO categorias (nombre_categoria) VALUES (nombre_categoria);
END$$
DELIMITER ;
 
-- INSERTS DE CATEGORIAS 
CALL insertar_categoria('Electrónica');
CALL insertar_categoria('Ropa');
CALL insertar_categoria('Alimentos');
CALL insertar_categoria('Juguetes');
CALL insertar_categoria('Libros');
CALL insertar_categoria('Herramientas');
CALL insertar_categoria('Jardinería');
CALL insertar_categoria('Deportes');
CALL insertar_categoria('Muebles');
CALL insertar_categoria('Cosméticos');
 

SELECT * FROM categorias

CREATE TABLE proveedores (
    id_proveedor VARCHAR(36) PRIMARY KEY NOT NULL DEFAULT (UUID()),
    nombre_proveedor VARCHAR(50) NOT NULL,
    direccion_proveedor VARCHAR(50) NOT NULL,
    telefono_proveedor VARCHAR(10) NOT NULL
);

-- procedimiento de proveedores 
DELIMITER $$
CREATE PROCEDURE insertar_proveedor(IN nombre_proveedor VARCHAR(50), IN direccion_proveedor VARCHAR(50), IN telefono_proveedor VARCHAR(10))
BEGIN
    INSERT INTO proveedores (nombre_proveedor, direccion_proveedor, telefono_proveedor) VALUES (nombre_proveedor, direccion_proveedor, telefono_proveedor);
END$$
DELIMITER ;
-- INSERTS PARA PROVEEDORES 
CALL insertar_proveedor('Samsung', 'Dirección A', '1234567890');
CALL insertar_proveedor('Apple', 'Dirección B', '2345678901');
CALL insertar_proveedor('Nike', 'Dirección C', '3456789012');
CALL insertar_proveedor('Adidas', 'Dirección D', '4567890123');
CALL insertar_proveedor('Sony', 'Dirección E', '5678901234');
CALL insertar_proveedor('LG', 'Dirección F', '6789012345');
CALL insertar_proveedor('Microsoft', 'Dirección G', '7890123456');
CALL insertar_proveedor('Dell', 'Dirección H', '8901234567');
CALL insertar_proveedor('HP', 'Dirección I', '9012345678');
CALL insertar_proveedor('Lenovo', 'Dirección J', '0123456789');
 
SELECT * FROM proveedores


CREATE TABLE productos (
    id_producto VARCHAR(36) PRIMARY KEY NOT NULL DEFAULT (UUID()),
    nombre_producto VARCHAR(50) NOT NULL,
    descripcion_producto VARCHAR(255) NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    id_proveedor VARCHAR(36), 
    id_categoria VARCHAR(36),
	FOREIGN KEY (id_proveedor) REFERENCES proveedores (id_proveedor),
	FOREIGN KEY (id_categoria) REFERENCES categorias (id_categoria)
);


-- procedimiento para productos 
DELIMITER $$
CREATE PROCEDURE insertar_producto(IN nombre_producto VARCHAR(50), IN descripcion_producto VARCHAR(255), IN precio_unitario DECIMAL(10,2), IN nombre_categoria VARCHAR(50), IN nombre_proveedor VARCHAR(50))
BEGIN
    DECLARE cat_id CHAR(36);
    DECLARE prov_id CHAR(36);
    SELECT id_categoria INTO cat_id FROM categorias WHERE nombre_categoria = nombre_categoria LIMIT 1;
    SELECT id_proveedor INTO prov_id FROM proveedores WHERE nombre_proveedor = nombre_proveedor LIMIT 1;
    INSERT INTO productos (nombre_producto, descripcion_producto, precio_unitario, id_categoria, id_proveedor) 
    VALUES (nombre_producto, descripcion_producto, precio_unitario, cat_id, prov_id);
END$$
DELIMITER ;
 
-- INSERTS PARA PRODUCTOS
CALL insertar_producto('Producto 1', 'Descripción del Producto 1', 100.00, 'Electrónica', 'Samsung');
CALL insertar_producto('Producto 2', 'Descripción del Producto 2', 150.00, 'Ropa', 'Apple');
CALL insertar_producto('Producto 3', 'Descripción del Producto 3', 200.00, 'Alimentos', 'Nike');
CALL insertar_producto('Producto 4', 'Descripción del Producto 4', 250.00, 'Juguetes', 'Adidas');
CALL insertar_producto('Producto 5', 'Descripción del Producto 5', 300.00, 'Libros', 'Sony');
CALL insertar_producto('Producto 6', 'Descripción del Producto 6', 350.00, 'Herramientas', 'LG');
CALL insertar_producto('Producto 7', 'Descripción del Producto 7', 400.00, 'Jardinería', 'Microsoft');
CALL insertar_producto('Producto 8', 'Descripción del Producto 8', 450.00, 'Deportes', 'Dell');
CALL insertar_producto('Producto 9', 'Descripción del Producto 9', 500.00, 'Muebles', 'HP');
CALL insertar_producto('Producto 10', 'Descripción del Producto 10', 550.00, 'Cosméticos', 'Lenovo');
 

SELECT * FROM productos
 

SELECT * FROM categorias

CREATE TABLE inventarios (
    id_inventario VARCHAR(36) PRIMARY KEY NOT NULL DEFAULT (UUID()),
    id_producto VARCHAR(36),
    cantidad_disponible INT NOT NULL,
    fecha_ingreso DATE NOT NULL,
    FOREIGN KEY (id_producto) REFERENCES productos (id_producto)
);

-- procedimiento de inventario 

DELIMITER $$
CREATE PROCEDURE insertar_inventario(IN nombre_producto VARCHAR(50), IN cantidad_disponible INT, IN fecha_ingreso DATE)
BEGIN
    DECLARE prod_id CHAR(36);
    SELECT id_producto INTO prod_id FROM productos WHERE nombre_producto = nombre_producto LIMIT 1;
    INSERT INTO inventarios (id_producto, cantidad_disponible, fecha_ingreso) 
    VALUES (prod_id, cantidad_disponible, fecha_ingreso);
END$$
DELIMITER ;
-- inserts de inventario 
CALL insertar_inventario('Producto 1', 10, '2024-03-01');
CALL insertar_inventario('Producto 2', 20, '2024-03-02');
CALL insertar_inventario('Producto 3', 30, '2024-03-03');
CALL insertar_inventario('Producto 4', 40, '2024-03-04');
CALL insertar_inventario('Producto 5', 50, '2024-03-05');
CALL insertar_inventario('Producto 6', 60, '2024-03-06');
CALL insertar_inventario('Producto 7', 70, '2024-03-07');
CALL insertar_inventario('Producto 8', 80, '2024-03-08');
CALL insertar_inventario('Producto 9', 90, '2024-03-09');
CALL insertar_inventario('Producto 10', 100, '2024-03-10');

SELECT * FROM inventarios


CREATE TABLE movimientos_inventario (
    id_movimiento_inventario VARCHAR(36) PRIMARY KEY NOT NULL DEFAULT (UUID()),
    id_inventario VARCHAR(36),
    tipo_movimiento ENUM('Entrada', 'Salida')NOT NULL,
    cantidad INT NOT NULL,
    fecha_movimiento DATE NOT NULL,
    FOREIGN KEY (id_inventario) REFERENCES inventarios (id_inventario)
);
-- procedimiento de inventario 


DELIMITER $$
CREATE PROCEDURE insertar_movimiento_inventario(IN nombre_producto VARCHAR(50), IN tipo_movimiento ENUM('Entrada', 'Salida'), IN cantidad INT, IN fecha_movimiento DATE)
BEGIN
    DECLARE inv_id CHAR(36);
    SELECT id_inventario INTO inv_id FROM inventarios 
    JOIN productos ON inventarios.id_producto = productos.id_producto
    WHERE productos.nombre_producto = nombre_producto LIMIT 1;
    INSERT INTO movimientos_inventario (id_inventario, tipo_movimiento, cantidad, fecha_movimiento) 
    VALUES (inv_id, tipo_movimiento, cantidad, fecha_movimiento);
END$$
DELIMITER ;

-- inserts pra movimientos inventario 


CALL insertar_movimiento_inventario('Producto 1', 'Entrada', 5, '2024-03-11');
CALL insertar_movimiento_inventario('Producto 2', 'Salida', 3, '2024-03-12');
CALL insertar_movimiento_inventario('Producto 3', 'Entrada', 10, '2024-03-13');
CALL insertar_movimiento_inventario('Producto 4', 'Salida', 2, '2024-03-14');
CALL insertar_movimiento_inventario('Producto 5', 'Entrada', 15, '2024-03-15');
CALL insertar_movimiento_inventario('Producto 6', 'Salida', 1, '2024-03-16');
CALL insertar_movimiento_inventario('Producto 7', 'Entrada', 20, '2024-03-17');
CALL insertar_movimiento_inventario('Producto 8', 'Salida', 4, '2024-03-18');
CALL insertar_movimiento_inventario('Producto 9', 'Entrada', 25, '2024-03-19');
CALL insertar_movimiento_inventario('Producto 10', 'Salida', 5, '2024-03-20');


 
DELIMITER $$
CREATE TRIGGER actualizar_cantidad_disponible
BEFORE INSERT ON movimientos_inventario
FOR EACH ROW
BEGIN
  DECLARE nuevo_saldo INT;

  SET nuevo_saldo = (
    SELECT cantidad_disponible
    FROM inventarios
    WHERE id_inventario = NEW.id_inventario
  );

  IF NEW.tipo_movimiento = 'Entrada' THEN
    SET nuevo_saldo = nuevo_saldo + NEW.cantidad;
  ELSEIF NEW.tipo_movimiento = 'Salida' THEN
    SET nuevo_saldo = nuevo_saldo - NEW.cantidad;
  END IF;

  UPDATE inventarios
  SET cantidad_disponible = nuevo_saldo
  WHERE id_inventario = NEW.id_inventario;
END;
$$
DELIMITER ;


