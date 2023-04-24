```postgresql
CREATE TABLE productos (
id_producto SERIAL PRIMARY KEY,
nombre VARCHAR(255),
descripcion VARCHAR(255),
precio_unitario NUMERIC(10,2),
categoria VARCHAR(255)
);

CREATE TABLE ordenes (
id SERIAL PRIMARY KEY,
id_producto INTEGER NOT NULL,
cantidad INTEGER NOT NULL,
categoria VARCHAR(255),
fecha_orden DATE,
direccion_entrega VARCHAR(255)
);


-- Insert product 1
INSERT INTO productos ( nombre, descripcion, precio_unitario, categoria)
VALUES ( 'Producto 1', 'Descripción del producto 1', 10.99, 'Categoría 1');

-- Insert product 2
INSERT INTO productos ( nombre, descripcion, precio_unitario, categoria)
VALUES ( 'Producto 2', 'Descripción del producto 2', 19.99, 'Categoría 1');

-- Insert product 3
INSERT INTO productos ( nombre, descripcion, precio_unitario, categoria)
VALUES ( 'Producto 3', 'Descripción del producto 3', 5.99, 'Categoría 2');

-- Insert product 4
INSERT INTO productos ( nombre, descripcion, precio_unitario, categoria)
VALUES ( 'Producto 4', 'Descripción del producto 4', 39.99, 'Categoría 2');

-- Insert product 5
INSERT INTO productos ( nombre, descripcion, precio_unitario, categoria)
VALUES ( 'Producto 5', 'Descripción del producto 5', 15.99, 'Categoría 3');

```