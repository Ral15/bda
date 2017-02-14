
--sucursal
insert into e7sucursal (id, nombre, ubicacion, telefono, horario)
values (seq_sucursal.nextval, 'Sucursal Big Cesar Pizzas Querétaro', 'Av. Pie de la Cuesta #512', '442 246 3141', '10:30AM-10:30PM');

--puesto
insert into e7puesto (id, nombre_puesto, sueldo) values (seq_puesto.nextval, 'Gerente', 10000.00);
insert into e7puesto (id, nombre_puesto, sueldo) values (seq_puesto.nextval, 'Ventas', 8000.00);
insert into e7puesto (id, nombre_puesto, sueldo) values (seq_puesto.nextval, 'Limpieza', 5000.00);
insert into e7puesto (id, nombre_puesto, sueldo) values (seq_puesto.nextval, 'Cocina', 8000.00);

--empleado
insert into e7empleado (id, sucursal_id, puesto_id, nombre, apellido, telefono) values (seq_empleado.nextval, 11, 1, 'Timothy', 'Diaz', '21509-6621');
insert into e7empleado (id, sucursal_id, puesto_id, nombre, apellido, telefono) values (seq_empleado.nextval, 11, 2, 'Harold', 'Ellis', '9960-0547');
insert into e7empleado (id, sucursal_id, puesto_id, nombre, apellido, telefono) values (seq_empleado.nextval, 11, 2, 'Timothy', 'Kim', '488-1059');
insert into e7empleado (id, sucursal_id, puesto_id, nombre, apellido, telefono) values (seq_empleado.nextval, 11, 3, 'Jerry', 'Pierce', '6677-6087');
insert into e7empleado (id, sucursal_id, puesto_id, nombre, apellido, telefono) values (seq_empleado.nextval, 11, 4, 'Evelyn', 'Gardner', '408-1026');
insert into e7empleado (id, sucursal_id, puesto_id, nombre, apellido, telefono) values (seq_empleado.nextval, 11, 4, 'Billy', 'Cook', '6947-7127');


--nomina **monto, empleado_id
-- insert into e7nomina (id, empleado_id, monto) values (seq_nomina.nextval, , );
-- insert into e7nomina (id, empleado_id, monto) values (seq_nomina.nextval, , );
-- insert into e7nomina (id, empleado_id, monto) values (seq_nomina.nextval, , );
-- insert into e7nomina (id, empleado_id, monto) values (seq_nomina.nextval, , );
-- insert into e7nomina (id, empleado_id, monto) values (seq_nomina.nextval, , );
-- insert into e7nomina (id, empleado_id, monto) values (seq_nomina.nextval, , );


--cliente
insert into e7cliente (id, nombre, telefono, sucursal_id) values (seq_cliente.nextval, 'David', '7-(156)226-8173', 11);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (seq_cliente.nextval, 'Marie', '63-(588)479-6091', 11);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (seq_cliente.nextval, 'Jimmy', '60-(107)793-8677', 11);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (seq_cliente.nextval, 'Mark', '39-(337)769-3952', 11);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (seq_cliente.nextval, 'Elizabeth', '62-(392)381-0772', 11);

--gasto **gasto_id
-- insert into e7gasto(id, sucursal_id, tipo_gasto, gasto_id) values (seq_gasto.nextval, 11, 'N', null);


--menu
insert into e7menu(id, sucursal_id) values (seq_menu.nextval, 11);

--venta
-- insert into e7venta(id, empleado_id, sucursal_id, cliente_id, monto) values (seq_venta.nextval, null, null, null, 100);


--proveedor **ingrediente id
insert into e7proveedor(id, sucursal_id, nombre, ingrediente_id) values (seq_proveedor.nextval, 11, 'Harinas de México', null);
insert into e7proveedor(id, sucursal_id, nombre, ingrediente_id) values (seq_proveedor.nextval, 11, 'Lacteos de México', null);
insert into e7proveedor(id, sucursal_id, nombre, ingrediente_id) values (seq_proveedor.nextval, 11, 'Verduras de México', null);
insert into e7proveedor(id, sucursal_id, nombre, ingrediente_id) values (seq_proveedor.nextval, 11, 'Carnes Frías de México', null);
insert into e7proveedor(id, sucursal_id, nombre, ingrediente_id) values (seq_proveedor.nextval, 11, 'Bebidas de México', null);
insert into e7proveedor(id, sucursal_id, nombre, ingrediente_id) values (seq_proveedor.nextval, 11, 'Cajas de México', null);
insert into e7proveedor(id, sucursal_id, nombre, ingrediente_id) values (seq_proveedor.nextval, 11, 'Aderezos de México', null);

--ingredientes
insert into e7ingrediente(id, nombre, inventario_id, precio) values (seq_ingrediente.nextval, 'harina', null, 50.00);
insert into e7ingrediente(id, nombre, inventario_id, precio) values (seq_ingrediente.nextval, 'queso', null, 90.00);
insert into e7ingrediente(id, nombre, inventario_id, precio) values (seq_ingrediente.nextval, 'pimiento', null, 45.00);
insert into e7ingrediente(id, nombre, inventario_id, precio) values (seq_ingrediente.nextval, 'tomate', null, 10.00);
insert into e7ingrediente(id, nombre, inventario_id, precio) values (seq_ingrediente.nextval, 'cebolla', null, 25.00);
insert into e7ingrediente(id, nombre, inventario_id, precio) values (seq_ingrediente.nextval, 'champiñon', null, 30.00);
insert into e7ingrediente(id, nombre, inventario_id, precio) values (seq_ingrediente.nextval, 'aceituna', null, 100.00);
insert into e7ingrediente(id, nombre, inventario_id, precio) values (seq_ingrediente.nextval, 'tocino', null, 150.00);
insert into e7ingrediente(id, nombre, inventario_id, precio) values (seq_ingrediente.nextval, 'pepperoni', null, 100.00);
insert into e7ingrediente(id, nombre, inventario_id, precio) values (seq_ingrediente.nextval, 'carne res', null, 120.00);
insert into e7ingrediente(id, nombre, inventario_id, precio) values (seq_ingrediente.nextval, 'jamon', null, 80.00);
insert into e7ingrediente(id, nombre, inventario_id, precio) values (seq_ingrediente.nextval, 'piña', null, 15.00);
insert into e7ingrediente(id, nombre, inventario_id, precio) values (seq_ingrediente.nextval, 'caja', null, 200.00);
insert into e7ingrediente(id, nombre, inventario_id, precio) values (seq_ingrediente.nextval, 'limonada', null, 10.00);
insert into e7ingrediente(id, nombre, inventario_id, precio) values (seq_ingrediente.nextval, 'naranjada', null, 10.00);
insert into e7ingrediente(id, nombre, inventario_id, precio) values (seq_ingrediente.nextval, 'soda', null, 10.00);
insert into e7ingrediente(id, nombre, inventario_id, precio) values (seq_ingrediente.nextval, 'agua', null, 9.00);

--inventario
-- insert into e7inventario(id, sucursal_id, cantidad, tipo_item) values (seq_inventario.nextval, 11, null, null);


--producto
insert into e7producto (id, menu_id, nombre, precio, descripcion) values (seq_producto.nextval, null, 'Pizza de pepperoni', 80.00, 'Pizza con deliciosos pepperonis');
insert into e7producto (id, menu_id, nombre, precio, descripcion) values (seq_producto.nextval, null, 'Pizza de queso', 80.00, 'Pizza con doble queso');
insert into e7producto (id, menu_id, nombre, precio, descripcion) values (seq_producto.nextval, null, 'Pizza hawaiana', 90.00, 'Pizza con piña y jamon');
insert into e7producto (id, menu_id, nombre, precio, descripcion) values (seq_producto.nextval, null, 'Pizza de italiana', 100.00, 'Pizza con champiñon, carne de res, aceitunas y pimientos')
insert into e7producto (id, menu_id, nombre, precio, descripcion) values (seq_producto.nextval, null, 'Pizza de tocino', 90.00, 'Pizza con deliciosos trozos de tocino');
insert into e7producto (id, menu_id, nombre, precio, descripcion) values (seq_producto.nextval, null, 'Limonada', 15.00, 'Deliciosa limonada fresca');
insert into e7producto (id, menu_id, nombre, precio, descripcion) values (seq_producto.nextval, null, 'Naranjada', 15.00, 'Deliciosa naranjada fresca');
insert into e7producto (id, menu_id, nombre, precio, descripcion) values (seq_producto.nextval, null, 'Soda', 15.00, 'Deliciosa soda fría');
insert into e7producto (id, menu_id, nombre, precio, descripcion) values (seq_producto.nextval, null, 'Agua', 1.00, 'Agua de manantial');


-- requisito ingrediente  ---

-- harina
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, harina, null, 250.00);
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, harina, null, 250.00);
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, harina, null, 250.00);
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, harina, null, 250.00);
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, harina, null, 250.00);


-- queso
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, queso, null, 150.00);
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, pqueso, null, 300.00);
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, queso, null, 150.00);
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, queso, null, 150.00);
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, queso, null, 150.00);

-- caja
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, caja, null, 250.00);
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, caja, null, 250.00);
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, caja, null, 250.00);
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, caja, null, 250.00);
insert into e7requisito_ingrediente (id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, caja, null, 250.00);

-- pizza pepperoni
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, ppepperni, pepperoni, 100.00);

--pizza hawaiana
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, phw, piña, 40.00);
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, phw, jamon, 100.00);


--pizza tocino
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, ptocino, tocino, 150.00);


--pizza italiana
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, pital, champ, 50.00);
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, pital, aceitunas, 30.00);
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, pital, res, 100.00);
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, pital, pimientos, 30.00);
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, pital, cebolla, 30.00);


--agua
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, agua, agua, 1.00);
--limonada
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, limonada, limonada, 1.00);
--naranjada
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, naranjada, naranjada, 1.00);
--soda
insert into e7requisito_ingrediente(id, producto_id, ingrediente_id, cantidad) values (seq_req_ingredientes.nextval, soda, soda, 1.00);























