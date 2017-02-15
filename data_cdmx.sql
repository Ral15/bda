--sucursal
insert into e7sucursal (id, nombre, ubicacion, telefono, horario)
values (1, 'Sucursal Big Cesar Pizzas CDMX', ' Calle Hermosillo No. 26', '55 5564 1973', '10:30AM-10:30PM');

insert into e7sucursal (id, nombre, ubicacion, telefono, horario)
values (2, 'Sucursal Big Cesar Pizzas Querétaro', 'Av. Pie de la Cuesta #512', '442 246 3141', '10:30AM-10:30PM');

insert into e7sucursal (id, nombre, ubicacion, telefono, horario)
values (3, 'Sucursal Big Cesar Pizzas SLP', 'Doctor Salvador Nava Martínez 435', '444 818 6233', '10:30AM-10:30PM');


--puesto
insert into e7puesto (id, nombre_puesto, sueldo) values (1, 'Gerente', 10000.00);
insert into e7puesto (id, nombre_puesto, sueldo) values (2, 'Ventas', 8000.00);
insert into e7puesto (id, nombre_puesto, sueldo) values (3, 'Limpieza', 5000.00);
insert into e7puesto (id, nombre_puesto, sueldo) values (4, 'Cocina', 8000.00);



--empleado
insert into e7empleado (id, sucursal_id, puesto_id, nombre, apellido, telefono) values (1, 1, 1, 'Stephanie', 'Smith', '0648-0436');
insert into e7empleado (id, sucursal_id, puesto_id, nombre, apellido, telefono) values (2, 1, 2, 'Sean', 'Bryant', '5693-9713');
insert into e7empleado (id, sucursal_id, puesto_id, nombre, apellido, telefono) values (3, 1, 2, 'Judy', 'Kennedy', '6966-6501');
insert into e7empleado (id, sucursal_id, puesto_id, nombre, apellido, telefono) values (4, 1, 3, 'Jennifer', 'Ellis', '6901-7433');
insert into e7empleado (id, sucursal_id, puesto_id, nombre, apellido, telefono) values (5, 1, 4, 'Sean', 'Howard', '8184-4385');
insert into e7empleado (id, sucursal_id, puesto_id, nombre, apellido, telefono) values (6, 1, 4, 'Mildred', 'Jenkins', '3910-3680');


-- nomina **monto, empleado_id
insert into e7nomina (id, empleado_id, monto) values (1, 1, 10000.00);
insert into e7nomina (id, empleado_id, monto) values (2, 2, 8000.00);
insert into e7nomina (id, empleado_id, monto) values (3, 3, 8000.00);
insert into e7nomina (id, empleado_id, monto) values (4, 4, 5000.00);
insert into e7nomina (id, empleado_id, monto) values (5, 5, 8000.00);
insert into e7nomina (id, empleado_id, monto) values (6, 6, 8000.00);


--cliente
insert into e7cliente (id, nombre, telefono, sucursal_id) values (1, 'Andrea', '351-(598)289-5178', 1);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (2, 'Nancy', '502-(711)512-7593', 1);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (3, 'Robert', '351-(900)703-8328', 1);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (4, 'Tina', '86-(835)632-4896', 1);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (5, 'Joan', '86-(171)517-9093', 1);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (6, 'Nicholas', '51-(332)820-6405', 1);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (7, 'Joyce', '60-(112)708-4531', 1);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (8, 'Dennis', '58-(773)829-6951', 1);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (9, 'Matthew', '55-(354)292-8435', 1);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (10, 'Joan', '62-(817)846-6875', 1);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (11, 'Martin', '504-(520)905-8691', 1);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (12, 'Virginia', '62-(567)834-3265', 1);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (13, 'Julia', '233-(319)113-6809', 1);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (14, 'Joe', '33-(937)831-3597', 1);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (15, 'Janice', '62-(573)566-2550', 1);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (16, 'Arthur', '7-(594)830-1349', 1);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (17, 'Lori', '46-(284)398-0170', 1);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (18, 'Diane', '86-(326)993-4606', 1);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (19, 'Lawrence', '86-(328)712-8361', 1);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (20, 'Anna', '86-(299)100-8113', 1);

--gasto **gasto_id
-- insert into e7gasto(id, sucursal_id, tipo_gasto, gasto_id) values (seq_gasto.nextval, 11, 'N', null);


--menu
insert into e7menu(id, sucursal_id) values (seq_menu.nextval, 1);

--venta
-- insert into e7venta(id, empleado_id, sucursal_id, cliente_id, monto) values (seq_venta.nextval, null, null, null, 100);


--proveedor **ingrediente id
insert into e7proveedor(id, sucursal_id, nombre) values (1, 1, 'Harinas de México');
insert into e7proveedor(id, sucursal_id, nombre) values (2, 1, 'Lacteos de México');
insert into e7proveedor(id, sucursal_id, nombre) values (3, 1, 'Verduras de México');
insert into e7proveedor(id, sucursal_id, nombre) values (4, 1, 'Frutas de México');
insert into e7proveedor(id, sucursal_id, nombre) values (5, 1, 'Carnes Frías de México');
insert into e7proveedor(id, sucursal_id, nombre) values (6, 1, 'Bebidas de México');
insert into e7proveedor(id, sucursal_id, nombre) values (7, 1, 'Cajas de México');
insert into e7proveedor(id, sucursal_id, nombre) values (8, 1, 'Aderezos de México');

--ingredientes
insert into e7ingrediente(id, nombre, precio, proveedor_id) values (1, 'harina', 50.00, 1);
insert into e7ingrediente(id, nombre, precio, proveedor_id) values (2, 'queso', 90.00, 2);
insert into e7ingrediente(id, nombre, precio, proveedor_id) values (3, 'pimiento', 45.00, 3);
insert into e7ingrediente(id, nombre, precio, proveedor_id) values (4, 'tomate', 10.00, 3);
insert into e7ingrediente(id, nombre, precio, proveedor_id) values (5, 'cebolla', 25.00, 3);
insert into e7ingrediente(id, nombre, precio, proveedor_id) values (6, 'champiñon', 30.00, 3);
insert into e7ingrediente(id, nombre, precio, proveedor_id) values (7, 'aceituna', 100.00, 3);
insert into e7ingrediente(id, nombre, precio, proveedor_id) values (8, 'tocino', 150.00, 5);
insert into e7ingrediente(id, nombre, precio, proveedor_id) values (9, 'pepperoni', 100.00, 5);
insert into e7ingrediente(id, nombre, precio, proveedor_id) values (10, 'carne res', 120.00, 5);
insert into e7ingrediente(id, nombre, precio, proveedor_id) values (11, 'jamon', 80.00, 5);
insert into e7ingrediente(id, nombre, precio, proveedor_id) values (12, 'piña', 15.00, 4);
insert into e7ingrediente(id, nombre, precio, proveedor_id) values (13, 'caja', 200.00, 7);
insert into e7ingrediente(id, nombre, precio, proveedor_id) values (14, 'limonada', 10.00, 6);
insert into e7ingrediente(id, nombre, precio, proveedor_id) values (15, 'naranjada', 10.00, 6);
insert into e7ingrediente(id, nombre, precio, proveedor_id) values (16, 'soda', 10.00, 6);
insert into e7ingrediente(id, nombre, precio, proveedor_id) values (17, 'agua', 9.00, 6);
insert into e7ingrediente(id, nombre, precio, proveedor_id) values (18, 'salsa tomate', 40.00, 8);

--inventario
insert into e7inventario(id, sucursal_id, cantidad, tipo_item, item_id) values (1, 1, 5000.00, 'I', 1);
insert into e7inventario(id, sucursal_id, cantidad, tipo_item, item_id) values (2, 1, 4000.00, 'I', 2);
insert into e7inventario(id, sucursal_id, cantidad, tipo_item, item_id) values (3, 1, 2000.00, 'I', 3);
insert into e7inventario(id, sucursal_id, cantidad, tipo_item, item_id) values (4, 1, 2000.00, 'I', 4);
insert into e7inventario(id, sucursal_id, cantidad, tipo_item, item_id) values (5, 1, 2000.00, 'I', 5);
insert into e7inventario(id, sucursal_id, cantidad, tipo_item, item_id) values (6, 1, 2000.00, 'I', 6);
insert into e7inventario(id, sucursal_id, cantidad, tipo_item, item_id) values (7, 1, 1000.00, 'I', 7);
insert into e7inventario(id, sucursal_id, cantidad, tipo_item, item_id) values (8, 1, 4000.00, 'I', 8);
insert into e7inventario(id, sucursal_id, cantidad, tipo_item, item_id) values (9, 1, 6000.00, 'I', 9);
insert into e7inventario(id, sucursal_id, cantidad, tipo_item, item_id) values (10, 1, 4000.00, 'I', 10);
insert into e7inventario(id, sucursal_id, cantidad, tipo_item, item_id) values (11, 1, 4000.00, 'I', 11);
insert into e7inventario(id, sucursal_id, cantidad, tipo_item, item_id) values (12, 1, 2000.00, 'I', 12);
insert into e7inventario(id, sucursal_id, cantidad, tipo_item, item_id) values (13, 1, 1000.00, 'I', 13);
insert into e7inventario(id, sucursal_id, cantidad, tipo_item, item_id) values (14, 1, 100.00, 'I', 14);
insert into e7inventario(id, sucursal_id, cantidad, tipo_item, item_id) values (15, 1, 100.00, 'I', 15);
insert into e7inventario(id, sucursal_id, cantidad, tipo_item, item_id) values (16, 1, 100.00, 'I', 16);
insert into e7inventario(id, sucursal_id, cantidad, tipo_item, item_id) values (17, 1, 100.00, 'I', 17);
insert into e7inventario(id, sucursal_id, cantidad, tipo_item, item_id) values (18, 1, 5000.00, 'I', 18);


--producto
insert into e7producto (id, menu_id, nombre, precio, descripcion) values (1, 1, 'Pizza de pepperoni', 80.00, 'Pizza con deliciosos pepperonis');
insert into e7producto (id, menu_id, nombre, precio, descripcion) values (2, 1, 'Pizza de queso', 80.00, 'Pizza con doble queso');
insert into e7producto (id, menu_id, nombre, precio, descripcion) values (3, 1, 'Pizza hawaiana', 90.00, 'Pizza con piña y jamon');
insert into e7producto (id, menu_id, nombre, precio, descripcion) values (4, 1, 'Pizza de italiana', 100.00, 'Pizza con champiñon, carne de res, aceitunas y pimientos');
insert into e7producto (id, menu_id, nombre, precio, descripcion) values (5, 1, 'Pizza de tocino', 90.00, 'Pizza con deliciosos trozos de tocino');
insert into e7producto (id, menu_id, nombre, precio, descripcion) values (6, 1, 'Limonada', 15.00, 'Deliciosa limonada fresca');
insert into e7producto (id, menu_id, nombre, precio, descripcion) values (7, 1, 'Naranjada', 15.00, 'Deliciosa naranjada fresca');
insert into e7producto (id, menu_id, nombre, precio, descripcion) values (8, 1, 'Soda', 15.00, 'Deliciosa soda fría');
insert into e7producto (id, menu_id, nombre, precio, descripcion) values (9, 1, 'Agua', 12.00, 'Agua de manantial');


-- requisito ingrediente  ---

-- harina
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 1, 1, 250.00);
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 2, 1, 250.00);
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 3, 1, 250.00);
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 4, 1, 250.00);
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 5, 1, 250.00);


-- queso
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 1, 2, 150.00);
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 2, 2, 300.00);
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 3, 2, 150.00);
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 4, 2, 150.00);
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 5, 2, 150.00);

-- caja
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 1, 13, 1.00);
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 2, 13, 1.00);
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 3, 13, 1.00);
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 4, 13, 1.00);
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 5, 13, 1.00);

-- pizza pepperoni
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 1, 9, 100.00);

--pizza hawaiana
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 3, 12, 40.00);
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 3, 11, 100.00);


--pizza tocino
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 5, 8, 150.00);


--pizza italiana
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 4, 6, 50.00);
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 4, 7, 30.00);
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 4, 10, 100.00);
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 4, 3, 30.00);
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 4, 5, 30.00);


--agua
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 9, 17, 1.00);
--limonada
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 6, 14, 1.00);
--naranjada
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 7, 15, 1.00);
--soda
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, 8, 16, 1.00);



