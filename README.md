# Bases de Datos avanzadas
In order to sucessfully create the project, the following scripts must be loaded in the corresponding order:

### 1. Project structure

#### 1.1 Load tables
* table_management_/tables.sql

#### 1.2 Load sequences
* secuences/sequences.sql

### 2. Initial data for each instance
#### 2.1 CDMX
* data_set/sucursal_cdmx.sql

#### 2.2 QRO
* data_set/sucursal_qro.sql

#### 2.3 SLP
* data_set/sucursal_qro.sql

### 3. Load ventas data depending on the "sucursal" you want
#### 3.1 CDMX
* data_set/ventas_cdmx.sql

#### 3.2 QRO
* data_set/ventas_qro.sql

#### 3.3 SLP
* data_set/ventas_slp.sql

### 4. Load compras script for 3 of the sucursales
* data_set/compras.sql

### 5. Load ventas script for 3 of the sucursales, change s_id depending of the sucursal

#### CDMX = 1

#### QRO = 2

#### SLP = 3

* data_set/ventas.sql


### 6. Load global views

* views/cliente_global.sql
* views/empleado_global.sql
* views/inventario_ingredientes_global.sql
* views/inventario_productos_global.sql
* views/ventas_clientes.sql
* views/ventas_globales.sql

### 7. Load procedures and triggers
* procedures/actualizar_gastos.sql
* procedures/comprar_proveedores.slq
* procedures/dar_alta_empleado.sql
* procedures/pagar_empleado.sql

### 8. Load transactions
* procedures/transferir_empleado.sql
* procedures/transferir_ingredientes.sql
