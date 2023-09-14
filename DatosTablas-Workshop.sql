use mydb;

/*Tabla Jefes*/
INSERT INTO jefes (nombre_jefe)
VALUES ('Juan Pérez'),('María García'),('Pedro López'),('Ana Sánchez'),('José Fernández'),('Luisa Gómez');

/*Tabla Oficinas*/
INSERT INTO `mydb`.`oficinas` ( `ciudad_oficina`, `pais_oficina`, `codigo_postal_oficina`, `telefono_oficina`, `direccion_oficina`) 
VALUES
(  'Bogotá',  'Colombia',  '11001',  3112345678,  'Carrera 7 # 123 - 45'), (  'Medellín',  'Colombia',  '05001',  3123456789,  'Calle 10 # 23 - 45'),
(  'Barranquilla',  'Colombia',  '08001',  3134567890,  'Avenida 123 # 45 - 67'), (  'Cali',  'Colombia',  '76001',  3145678901,  'Carrera 23 # 123 - 45'),
(  'Cartagena',  'Colombia',  '13001',  3156789012,  'Calle 34 # 123 - 45'), (  'Valledupar',  'Colombia',  '22001',  3167890123,  'Avenida 45 # 123 - 45'),
(  'Bucaramanga',  'Colombia',  '68001',  3178901234, 'Carrera 56 # 123 - 45'), (  'Pereira',  'Colombia',  '66001',  3189012345,  'Calle 78 # 123 - 45'),
(  'Manizales',  'Colombia',  '67001',  3190123456,  'Avenida 90 # 123 - 45'),(  'Ibagué',  'Colombia',  '73001',  3201234567,  'Carrera 100 # 123 - 45'),
(  'Popayán',  'Colombia',  '83001',  3212345678,  'Calle 110 # 123 - 45'), ( 'Villavicencio',  'Colombia',  '50001',  3223456789,  'Avenida 120 # 123 - 45'),
(  'Armenia',  'Colombia',  '57001',  3234567890,  'Carrera 130 # 123 - 45'),(  'Sincelejo',  'Colombia',  '70001',  3245678901,  'Calle 140 # 123 - 45'),
(  'Montería',  'Colombia',  '23001',  3256789012,   'carrera 45 46 76');
  
  /*Tabla Empleados*/
INSERT INTO empleados (codigo_empleado, nombre_empleado, apellido1_empleado, apellido2_empleado, extension_empleado, email_empleado, codigo_oficina, codigo_jefe)
VALUES
  (1, 'Juan', 'Pérez', 'García', 101, 'juan.perez@example.com', 1, NULL), (DEFAULT,'María', 'López', 'Martínez', 102, 'maria.lopez@example.com', 2, 1),
  (DEFAULT,'Pedro', 'González', 'Sánchez', 103, 'pedro.gonzalez@example.com', 1, 2), (DEFAULT,'Ana', 'Martínez', 'Fernández', 104, 'ana.martinez@example.com', 2, 1),
  (DEFAULT,'Carlos', 'Rodríguez', 'Pérez', 105, 'carlos.rodriguez@example.com', 1, 3), (DEFAULT,'Laura', 'García', 'Hernández', 106, 'laura.garcia@example.com', 2, 4),
  (DEFAULT,'Luis', 'Ramírez', 'Ortega', 107, 'luis.ramirez@example.com', 1, 3), (DEFAULT,'Sofía', 'Díaz', 'Fernández', 108, 'sofia.diaz@example.com', 3, 2),
  (DEFAULT,'Javier', 'López', 'Sánchez', 109, 'javier.lopez@example.com', 2, 1), (DEFAULT,'Marta', 'Martínez', 'Gómez', 110, 'marta.martinez@example.com', 1, 4),
  (DEFAULT,'Elclientesena', 'Hernández', 'Gutiérrez', 111, 'elena.hernandez@example.com', 3, 4), (DEFAULT,'Ricardo', 'Sánchez', 'López', 112, 'ricardo.sanchez@example.com', 1, 2),
  (DEFAULT,'Isabel', 'Fernández', 'Ramírez', 113, 'isabel.fernandez@example.com', 2, 1), (DEFAULT,'Hugo', 'Gómez', 'Martínez', 114, 'hugo.gomez@example.com', 3, 2),
  (DEFAULT,'Lucía', 'Ortega', 'Díaz', 115, 'lucia.ortega@example.com', 1, 3), (DEFAULT,'Diego', 'Pérez', 'Fernández', 116, 'diego.perez@example.com', 2, 1),
  (DEFAULT,'Sara', 'Martínez', 'Sánchez', 117, 'sara.martinez@example.com', 3, 2), (DEFAULT,'Miguel', 'López', 'González', 118, 'miguel.lopez@example.com', 1, 4),
  (DEFAULT,'Ana', 'Ramírez', 'Díaz', 119, 'ana.ramirez@example.com', 2, 3), (DEFAULT,'Javier', 'Fernández', 'Gómez', 120, 'javier.fernandez@example.com', 3, 1),
  (DEFAULT,'Marcela', 'Gutiérrez', 'Pérez', 121, 'marcela.gutierrez@example.com', 1, 4), (DEFAULT,'Andrés', 'Sánchez', 'Hernández', 122, 'andres.sanchez@example.com', 3, 2),
  (DEFAULT,'Natalia', 'Díaz', 'Martínez', 123, 'natalia.diaz@example.com', 2, 1), (DEFAULT,'Daniel', 'López', 'Ramírez', 124, 'daniel.lopez@example.com', 1, 3),
  (DEFAULT,'Sofía', 'Martínez', 'Gómez', 125, 'sofia.martinez@example.com', 3, 4), (DEFAULT,'Alejandro', 'Fernández', 'Gutiérrez', 126, 'alejandro.fernandez@example.com', 2, 1),
  (DEFAULT,'Valentina', 'Pérez', 'López', 127, 'valentina.perez@example.com', 1, 4), (DEFAULT,'David', 'Gómez', 'Hernández', 128, 'david.gomez@example.com', 2, 3),
  (DEFAULT,'Camila', 'Ramírez', 'Sánchez', 129, 'camila.ramirez@example.com', 3, 1), (DEFAULT,'Joaquín', 'Hernández', 'Martínez', 130, 'joaquin.hernandez@example.com', 1, 2);
  
  
  /*Tabla Cientes*/
INSERT INTO `mydb`.`clientes` (`nombre_cliente`, `telefono_cliente`, `fax_cliente`, `direccion1_cliente`, 
  `direccion2_cliente`, `ciudad_cliente`, `region_cliente`, `pais_cliente`, `codigo_postal_cliente`,
  `codigo_empleado`, `limite_crédito_cliente`)
VALUES
  ('Juan Pablo Rojas', 1234567890, 345568, 'Calle 1 65 78', 'Apto 101', 'Bogota', 'Cundinamarca', 'Colombia', '12345', 1, 1000.00),
  ('Karen Arteaga', 9876543210, 345569, 'Calle 2 45 24', NULL, 'Medellin 2', 'Antioquia', 'Colombia', '54321', 2, 1500.00),
  ('Wilmer corredor', 5555555555, 5556754, 'Calle 3 12 56', 'Oficina 303', 'Cali', 'Valle Cauca', 'Colombia', '33333', 3, 2000.00),
  ('Juan Esteban Sanchez', 11156311111, NULL, 'Calle 4 9 78', NULL, 'Santamarta', 'Atlantico', 'Colombia', '44444', 4, 2500.00),
  ('Camilo Andrea Vargas', 222277722, 345568, 'Calle 5 este 76', 'Apto 505', 'Tulua', 'Valle Cauca', 'Colombia', '55555', 5, 3000.00),
  ('Tatiana Forero', 1234567890, 345568, 'Calle 1 65 78', 'Apto 101', 'Ciudad de México', 'Distrito', 'México', '12345', 6, 1000.00),
  ('Astrid Johana Forero', 9876543210, 345570,  'Calle 2 45 24', NULL, 'Buenos Aires', '', 'Provincia de Buenos Aires', '54321', 7, 1500.00),
  ('Andres Gomez', 33334566233, 567823, 'Calle 10 este 45', 'Apto 202', 'La paz', 'La paz', 'Bolivia', '44444', 8, 4000.00),
  ('Luisa Rodriguez', 4444341444, 678902, 'Calle 15 norte 67', NULL, 'Quito', 'Centro', 'Ecuador', '33333', 9, 5000.00),
  ('Carlos Hernandez', 5545655555, NULL, 'Calle 20 sur 89', 'Apt 602', 'Cali', 'Valle Cauca', 'Colombia', '22222', 10, 6000.00),
  ('Maria Torres', 6665616666, 563412, 'Calle 25 norte 34', 'Apt 656', 'Buenos Aires', 'Provincia de Buenos Aires', 'Argentina', '11111', 11, 7000.00),
  ('Juan Garcia', 777777563, 677789, 'Calle 30 este 56', 'Apt 32', 'Lima', 'Peru', 'Peru', '77777', 12, 8000.00),
  ('Sofia Ramirez', 888886531, 769000, 'Calle 35 sur 78', 'Apt 409', 'Medellin', 'Antioquia', 'Colombia', '88888', 13, 9000.00),
  ('Pedro Castro', 999956789, 677125, 'Calle 40 norte 12', 'Apt 354', 'Bucaramanga', 'Santander', 'Colombia', '99999', 14, 10000.00),
  ('Laura Hernandez', 1111456723, 671241, 'Calle 45 este 23', 'casa 45', 'Montevideo', 'Centro Capital', 'Uruguay', '55555', 15, 11000.00),
  ('Jorge Perez', 222256433, 457622, 'Calle 50 sur 56', 'manzana 56', 'Bogota', 'Cundinarma', 'Colombia', '66666', 16, 12000.00),
  ('Ana Maria Rodriguez', 567832, 111100, 'Calle 55 norte 90', 'Torres crital 5', 'Manizales', 'Caldas', 'Colombia', '44444', 17, 13000.00),
  ('Carlos Gonzalez', 333387654, 789123, 'Avenida Juarez 123', 'Apartamento 4B', 'Ciudad de México', 'Distrito Federal', 'México', '12345', 18, 15000.00),
  ('María Silva', 444456789, 654321, 'Calle 30 Oeste 56', 'Casa 78', 'Buenos Aires', 'Provincia de Buenos Aires', 'Argentina', '67890', 19, 17000.00),
  ('Pedro Ramirez', 555567890, 234567, 'Rua São Paulo 78', 'Casa 3', 'Sao Paulo', 'Sao Paulo', 'Brasil', '98765', 20, 19000.00),
  ('Luisa Mendoza', 666678901, 876543, 'Carrera 70 45', 'Apartamento 10C', 'Bogotá', 'Cundinamarca', 'Colombia', '54321', 21, 16000.00),
  ('Fernando Lopez', 777789012, 345678, 'Calle 20 Este 15', 'Casa 25', 'Panamá', 'Provincia de Panamá', 'Panamá', '34567', 22, 15500.00),
  ('Elena Fernandez', 888890123, 432345, 'Avenida Libertad 101', 'Apartamento 7A', 'Santiago', 'Región Metropolitana', 'Chile', '23456', 23, 18000.00),
  ('Hugo Torres', 999901234, 567890, 'Avenida Bolivar 234', 'Casa 56', 'Caracas', 'Distrito Capital', 'Venezuela', '87654', 24, 20000.00),
  ('Camila Castro', 101011112, 789012, 'Rua Buenos Aires 45', 'Apartamento 12D', 'Rio de Janeiro', 'Rio de Janeiro', 'Brasil', '65432', 25, 14500.00),
  ('Manuel Gonzales', 111112345, 123456, 'Calle 80 Norte 67', 'Casa 34', 'Medellín', 'Antioquia', 'Colombia', '76543', 26, 21000.00),
  ('Isabel Torres', 121213456, 890123, 'Avenida Paulista 56', 'Apartamento 8B', 'Sao Paulo', 'Sao Paulo', 'Brasil', '54321', 27, 14000.00),
  ('Diego Sanchez', 131314567, 567890, 'Calle 25 Sur 34', 'Apartamento 6A', 'Lima', 'Lima', 'Perú', '45678', 28, 22000.00),
  ('Valentina Ríos', 141415678, 234567, 'Rua Copacabana 89', 'Casa 2', 'Rio de Janeiro', 'Rio de Janeiro', 'Brasil', '78901', 29, 13500.00),
  ('Mariana Castro', 151516789, 678901, 'Avenida Reforma 112', 'Apartamento 15D', 'Ciudad de México', 'Distrito Federal', 'México', '89012', 30, 23000.00);


select * from clientes;
 
 /*Tabla Pedidos*/
INSERT INTO pedidos (codigo_pedido, fecha_pedido, fecha_esperada_pedido, fecha_entrega_pedido, estado_pedido, comentarios_pedido, id_codigo_cliente)
VALUES 
(1, '2023-08-25', '2023-08-27', '2023-09-01', 'bueno', 'pedido entregado sin problemas', 5),
(2, '2023-08-26', '2023-08-29', '2023-09-03', 'excelente', 'entrega puntual', 8),
(3, '2023-08-27', '2023-08-30', '2023-09-04', 'bueno', 'pedido entregado sin retrasos', 11),
(4, '2023-08-28', '2023-08-31', '2023-09-05', 'regular', 'pedido con leve retraso', 14),
(5, '2023-08-29', '2023-09-01', '2023-09-06', 'bueno', 'cliente satisfecho', 17),
(6, '2023-08-30', '2023-09-02', '2023-09-07', 'excelente', 'entrega rápida', 2),
(7, '2023-08-31', '2023-09-03', '2023-09-08', 'bueno', 'pedido entregado sin problemas', 6),
(8, '2023-09-01', '2023-09-04', '2023-09-09', 'regular', 'entrega ligeramente demorada', 10),
(9, '2023-09-02', '2023-09-05', '2023-09-10', 'bueno', 'cliente satisfecho', 14),
(10, '2023-09-03', '2023-09-06', '2023-09-11', 'excelente', 'pedido entregado sin problemas', 18),
(11, '2023-09-04', '2023-09-07', '2023-09-12', 'bueno', 'cliente contento', 3),
(12, '2023-09-05', '2023-09-08', '2023-09-13', 'regular', 'pedido entregado sin problemas', 7),
(13, '2023-09-06', '2023-09-09', '2023-09-14', 'bueno', 'entrega puntual', 11),
(14, '2023-09-07', '2023-09-10', '2023-09-15', 'excelente', 'cliente satisfecho', 15),
(15, '2023-09-08', '2023-09-11', '2023-09-16', 'bueno', 'pedido entregado sin problemas', 19),
(16, '2023-09-09', '2023-09-12', '2023-09-17', 'regular', 'entrega ligeramente demorada', 4),
(17, '2023-09-10', '2023-09-13', '2023-09-18', 'bueno', 'entrega rápida', 8),
(18, '2023-09-11', '2023-09-14', '2023-09-19', 'excelente', 'cliente contento', 12),
(19, '2023-09-12', '2023-09-15', '2023-09-20', 'bueno', 'pedido entregado sin problemas', 16),
(20, '2023-09-13', '2023-09-16', '2023-09-21', 'regular', 'entrega puntual', 20),
(21, '2023-09-14', '2023-09-17', '2023-09-22', 'bueno', 'entrega rápida', 5),
(22, '2023-09-15', '2023-09-18', '2023-09-23', 'excelente', 'cliente satisfecho', 10),
(23, '2023-09-16', '2023-09-19', '2023-09-24', 'bueno', 'pedido entregado sin problemas', 15),
(24, '2023-09-17', '2023-09-20', '2023-09-25', 'regular', 'entrega con retraso', 20),
(25, '2023-09-18', '2023-09-21', '2023-09-26', 'bueno', 'cliente satisfecho', 1),
(26, '2023-09-19', '2023-09-22', '2023-09-27', 'excelente', 'entrega puntual', 4),
(27, '2023-09-20', '2023-09-23', '2023-09-28', 'bueno', 'pedido entregado sin problemas', 7),
(28, '2023-09-21', '2023-09-24', '2023-09-29', 'regular', 'entrega ligeramente demorada', 10),
(29, '2023-09-22', '2023-09-25', '2023-09-30', 'bueno', 'entrega rápida', 13),
(30, '2023-09-23', '2023-09-26', '2023-10-01', 'excelente', 'cliente contento', 16);
 


/*Tabla Pagos*/
INSERT INTO pagos (codigo_transacion, id_codigo_cliente, forma_pago, fecha_pago, total_cada_pago)
VALUES 
(1, 3, 'contado', '2023-08-30', 1500000.0), (2, 12, 'contado', '2023-08-30', 2000000.0), 
(3, 19, 'contado', '2023-08-30', 1800000.0), (4, 7, 'crédito', '2023-08-30', 2200000.0), (5, 28, 'contado', '2023-08-30', 1900000.0),
(6, 10, 'crédito', '2023-08-30', 2100000.0), (7, 2, 'contado', '2023-08-30', 1600000.0), (8, 14, 'crédito', '2023-08-30', 2300000.0),
(9, 25, 'contado', '2023-08-30', 1750000.0), (10, 8, 'crédito', '2023-08-30', 2400000.0), (11, 15, 'contado', '2023-08-30', 1700000.0),
(12, 22, 'crédito', '2023-08-30', 2600000.0),(13, 5, 'contado', '2023-08-30', 1450000.0), (14, 29, 'crédito', '2023-08-30', 2250000.0),
(15, 11, 'contado', '2023-08-30', 1550000.0), (16, 21, 'crédito', '2023-08-30', 2150000.0), (17, 6, 'contado', '2023-08-30', 1650000.0),
(18, 18, 'crédito', '2023-08-30', 2500000.0), (19, 13, 'contado', '2023-08-30', 1850000.0), (20, 1, 'crédito', '2023-08-30', 2700000.0),
(21, 24, 'contado', '2023-08-30', 1950000.0), (22, 4, 'crédito', '2023-08-30', 2550000.0), (23, 30, 'contado', '2023-08-30', 2000000.0),
(24, 2, 'crédito', '2023-08-30', 2650000.0),(25, 9, 'contado', '2023-08-30', 1750000.0), (26, 27, 'crédito', '2023-08-30', 2450000.0),
(27, 16, 'contado', '2023-08-30', 1600000.0), (28, 20, 'crédito', '2023-08-30', 2350000.0), (29, 23, 'contado', '2023-08-30', 1800000.0),
(30, 5, 'crédito', '2023-08-30', 2800000.0);


/*Tabla Gama*/
INSERT INTO gama (codigo_gama, descripcion_gama, tipo_gama, imagen_gama)
VALUES 
(1, 'calidad alta, con lujos simples...', 'premium', 'asfkdeudsadpsda'), (2, 'calidad alta, con lujos simples...', 'alta', 'asfkdeudsadpsda'),
(3, 'calidad alta, con lujos simples...', 'media', 'asfkdeudsadpsda'), (4, 'calidad alta, con lujos simples...', 'baja', 'asfkdeudsadpsda'),
(5, 'calidad alta, con lujos simples...', 'premium', 'asfkdeudsadpsda'), (6, 'calidad alta, con lujos simples...', 'alta', 'asfkdeudsadpsda'),
(7, 'calidad alta, con lujos simples...', 'media', 'asfkdeudsadpsda'),(8, 'calidad alta, con lujos simples...', 'baja', 'asfkdeudsadpsda'),
(9, 'calidad alta, con lujos simples...', 'premium', 'asfkdeudsadpsda'), (10, 'calidad alta, con lujos simples...', 'alta', 'asfkdeudsadpsda'),
(11, 'calidad alta, con lujos simples...', 'media', 'asfkdeudsadpsda'), (12, 'calidad alta, con lujos simples...', 'baja', 'asfkdeudsadpsda'),
(13, 'calidad alta, con lujos simples...', 'premium', 'asfkdeudsadpsda'), (14, 'calidad alta, con lujos simples...', 'alta', 'asfkdeudsadpsda'),
(15, 'calidad alta, con lujos simples...', 'media', 'asfkdeudsadpsda'),(16, 'calidad alta, con lujos simples...', 'baja', 'asfkdeudsadpsda'),
(17, 'calidad alta, con lujos simples...', 'premium', 'asfkdeudsadpsda'), (18, 'calidad alta, con lujos simples...', 'alta', 'asfkdeudsadpsda'),
(19, 'calidad alta, con lujos simples...', 'media', 'asfkdeudsadpsda'), (20, 'calidad alta, con lujos simples...', 'baja', 'asfkdeudsadpsda'),
(21, 'calidad alta, con lujos simples...', 'premium', 'asfkdeudsadpsda'), (22, 'calidad alta, con lujos simples...', 'alta', 'asfkdeudsadpsda'),
(23, 'calidad alta, con lujos simples...', 'media', 'asfkdeudsadpsda'), (24, 'calidad alta, con lujos simples...', 'baja', 'asfkdeudsadpsda'),
(25, 'calidad alta, con lujos simples...', 'premium', 'asfkdeudsadpsda'), (26, 'calidad alta, con lujos simples...', 'alta', 'asfkdeudsadpsda'),
(27, 'calidad alta, con lujos simples...', 'media', 'asfkdeudsadpsda'), (28, 'calidad alta, con lujos simples...', 'baja', 'asfkdeudsadpsda'),
(29, 'calidad alta, con lujos simples...', 'premium', 'asfkdeudsadpsda'), (30, 'calidad alta, con lujos simples...', 'alta', 'asfkdeudsadpsda');

INSERT INTO productos (nombre_producto, codigo_gama, dimensiones, proveedor, descripcion_producto, cantidad_stock_producto, precio_venta_producto, precio_proveedor_producto)
VALUES ('celular', 2, '30 x 15', 'Xiaomi', 'Pantalla HD de 6", Android, 128GB de memoria', 15, 600000.0, 495000.0),
       ('computador', 5, '50 x 30', 'Dell', 'Procesador Intel i7, 16GB de RAM, 512GB SSD', 20, 1200000.0, 950000.0),
       ('audífonos', 10, '15 x 10', 'Sony', 'Cancelación de ruido, Bluetooth', 30, 80000.0, 60000.0),
       ('teclado', 15, '45 x 15', 'Logitech', 'Teclado mecánico retroiluminado', 25, 60000.0, 45000.0),
       ('mouse', 20, '10 x 7', 'Razer', 'Mouse gaming con sensor óptico', 35, 50000.0, 40000.0),
       ('tablet', 25, '20 x 15', 'Samsung', 'Pantalla de 10", Android, 64GB de almacenamiento', 10, 350000.0, 280000.0),
       ('impresora', 3, '40 x 30', 'HP', 'Impresora láser a color', 12, 250000.0, 200000.0),
       ('monitor', 8, '24 x 18', 'Acer', 'Monitor LED de 24"', 18, 180000.0, 150000.0),
       ('cámara', 12, '12 x 8', 'Canon', 'Cámara DSLR con lente 18-55mm', 8, 900000.0, 750000.0),
       ('router', 28, '15 x 10', 'TP-Link', 'Router WiFi de doble banda', 22, 80000.0, 65000.0),
       ('auriculares', 7, '18 x 10', 'Bose', 'Auriculares inalámbricos con cancelación de ruido', 28, 220000.0, 180000.0),
       ('laptop', 18, '35 x 25', 'Lenovo', 'Laptop con procesador AMD Ryzen 5, 8GB RAM, 256GB SSD', 14, 1100000.0, 900000.0),
       ('altavoz', 13, '10 x 10', 'JBL', 'Altavoz Bluetooth resistente al agua', 40, 60000.0, 50000.0),
       ('webcam', 24, '8 x 5', 'Logitech', 'Webcam HD con micrófono incorporado', 6, 50000.0, 40000.0),
       ('smartwatch', 30, '5 x 5', 'Apple', 'Smartwatch con pantalla Retina', 5, 800000.0, 650000.0),
       ('proyector', 1, '30 x 20', 'Epson', 'Proyector Full HD 1080p', 9, 700000.0, 600000.0),
       ('tableta gráfica', 11, '15 x 10', 'Wacom', 'Tableta gráfica con lápiz sensible a la presión', 11, 150000.0, 120000.0),
       ('tarjeta de video', 27, '10 x 5', 'NVIDIA', 'Tarjeta de video GeForce RTX 3080', 7, 1500000.0, 1200000.0),
       ('auriculares inalámbricos', 6, '10 x 8', 'Samsung', 'Auriculares inalámbricos con estuche de carga', 15, 120000.0, 90000.0),
       ('disco duro externo', 22, '12 x 8', 'Seagate', 'Disco duro externo de 1TB', 16, 90000.0, 75000.0),
       ('impresora láser', 9, '18 x 12', 'Brother', 'Impresora láser monocromática', 13, 170000.0, 140000.0),
       ('monitor gaming', 16, '27 x 18', 'ASUS', 'Monitor gaming de 27" con frecuencia de actualización de 144Hz', 24, 350000.0, 280000.0),
       ('cámara deportiva', 21, '8 x 6', 'GoPro', 'Cámara deportiva 4K con resistencia al agua', 10, 250000.0, 200000.0),
       ('teclado mecánico', 4, '45 x 15', 'Corsair', 'Teclado mecánico RGB con interruptores Cherry MX', 30, 120000.0, 95000.0),
       ('ratón inalámbrico', 19, '12 x 8', 'Microsoft', 'Ratón inalámbrico con sensor óptico', 18, 60000.0, 50000.0),
       ('laptop ultrabook', 26, '30 x 20', 'Acer', 'Laptop ultrabook con procesador Intel Core i5, 8GB RAM, 512GB SSD', 12, 1000000.0, 850000.0),
       ('altavoz Bluetooth', 2, '10 x 10', 'Sony', 'Altavoz Bluetooth portátil con graves potentes', 32, 80000.0, 65000.0),
       ('auriculares con cable', 17, '18 x 10', 'Sennheiser', 'Auriculares con cable de alta fidelidad', 20, 120000.0, 95000.0),
       ('escáner', 23, '15 x 10', 'Canon', 'Escáner de documentos a color', 7, 90000.0, 75000.0),
       ('reloj inteligente', 29, '5 x 5', 'Garmin', 'Reloj inteligente con GPS y monitor de frecuencia cardíaca', 9, 300000.0, 250000.0);
       
       INSERT INTO `mydb`.`pedidos_Realizados` (`codigo_pedido`, `codigo_producto`, `cantidad_pedidos`, `precio_por_unidad_pedido`)
VALUES
    (1, 1, 5, 10000),
    (2, 2, 3, 20345),
    (3, 3, 2, 50000),
    (4, 4, 4, 13500),
    (5, 5, 1, 15900),
    (6, 6, 3, 5000),
    (7, 7, 2, 32000),
    (8, 8, 5, 8700),
    (9, 9, 4, 45600),
    (10, 10, 1, 21400),
    (11, 11, 3, 46700),
    (12, 12, 2, 18900),
    (13, 13, 4,26000),
    (14, 14, 5, 34000),
    (15, 15, 1, 46000);
  