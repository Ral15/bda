--sucursal
insert into e7sucursal (id, nombre, ubicacion, telefono, horario)
values (seq_sucursal.nextval, 'Sucursal Big Cesar Pizzas CDMX', ' Calle Hermosillo No. 26', '55 5564 1973', '10:30AM-10:30PM');

insert into e7sucursal (id, nombre, ubicacion, telefono, horario)
values (seq_sucursal.nextval, 'Sucursal Big Cesar Pizzas Querétaro', 'Av. Pie de la Cuesta #512', '442 246 3141', '10:30AM-10:30PM');

insert into e7sucursal (id, nombre, ubicacion, telefono, horario)
values (seq_sucursal.nextval, 'Sucursal Big Cesar Pizzas SLP', 'Doctor Salvador Nava Martínez 435', '444 818 6233', '10:30AM-10:30PM');


--puesto
insert into e7puesto (id, nombre_puesto, sueldo) values (seq_puesto.nextval, 'Gerente', 10000.00);
insert into e7puesto (id, nombre_puesto, sueldo) values (seq_puesto.nextval, 'Ventas', 8000.00);
insert into e7puesto (id, nombre_puesto, sueldo) values (seq_puesto.nextval, 'Limpieza', 5000.00);
insert into e7puesto (id, nombre_puesto, sueldo) values (seq_puesto.nextval, 'Cocina', 8000.00);



--empleado
insert into e7empleado (id, sucursal_id, puesto_id, nombre, apellido, telefono) values (seq_empleado.nextval, 1, null, 'Anthony', 'Ryan', '62-(669)186-5457');
insert into e7empleado (id, sucursal_id, puesto_id, nombre, apellido, telefono) values (seq_empleado.nextval, 1, null, 'Debra', 'Morrison', '1-(341)797-3338');
insert into e7empleado (id, sucursal_id, puesto_id, nombre, apellido, telefono) values (seq_empleado.nextval, 1, null, 'Keith', 'Lane', '48-(438)125-7177');
insert into e7empleado (id, sucursal_id, puesto_id, nombre, apellido, telefono) values (seq_empleado.nextval, 1, null, 'Jacqueline', 'Murray', '7-(232)519-1945');
insert into e7empleado (id, sucursal_id, puesto_id, nombre, apellido, telefono) values (seq_empleado.nextval, 1, null, 'Steven', 'Harrison', '63-(234)354-0920');
insert into e7empleado (id, sucursal_id, puesto_id, nombre, apellido, telefono) values (seq_empleado.nextval, 1, null, 'Justin', 'Rogers', '593-(896)253-1609');
insert into e7empleado (id, sucursal_id, puesto_id, nombre, apellido, telefono) values (seq_empleado.nextval, 1, null, 'Christopher', 'Allen', '62-(185)270-0916');
insert into e7empleado (id, sucursal_id, puesto_id, nombre, apellido, telefono) values (seq_empleado.nextval, 1, null, 'Justin', 'Russell', '62-(281)529-9555');
insert into e7empleado (id, sucursal_id, puesto_id, nombre, apellido, telefono) values (seq_empleado.nextval, 1, null, 'Keith', 'Franklin', '385-(273)762-7293');
insert into e7empleado (id, sucursal_id, puesto_id, nombre, apellido, telefono) values (seq_empleado.nextval, 1, null, 'Gary', 'Henderson', '62-(869)749-6678');





--cliente
insert into e7cliente (id, nombre, telefono, sucursal_id) values (null, 'Irene', '351-(931)927-8576', null);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (null, 'Lois', '62-(498)826-8026', null);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (null, 'Diane', '86-(536)278-9899', null);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (null, 'Walter', '234-(816)715-9860', null);
insert into e7cliente (id, nombre, telefono, sucursal_id) values (null, 'Angela', '84-(119)824-4038', null);