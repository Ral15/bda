CREATE TABLE e7sucursal (
  id         INT PRIMARY KEY,
  nombre     VARCHAR2(35) NOT NULL,
  ubicacion  VARCHAR2(35) NOT NULL,
  telefono   VARCHAR2(35) NOT NULL,
  horario    VARCHAR2(35) NOT NULL
);

CREATE TABLE e7menu (
  id          INT PRIMARY KEY,
  sucursal_id INT REFERENCES e7sucursal(id)
);

CREATE TABLE e7producto (
  id           INT PRIMARY KEY,
  menu_id      INT REFERENCES e7menu(id),
  nombre       VARCHAR2(35) NOT NULL,
  descripcion  VARCHAR2(100) NOT NULL,
  precio       NUMBER(19,2) NOT NULL
);

CREATE TABLE e7puesto (
  id              INT PRIMARY KEY,
  nombre_puesto   VARCHAR2(35) NOT NULL,
  sueldo          NUMBER(19,2) NOT NULL
);

CREATE TABLE e7empleado (
  id           INT PRIMARY KEY,
  sucursal_id  INT REFERENCES e7sucursal(id),
  puesto_id    INT REFERENCES e7puesto(id),
  nombre       VARCHAR2(35) NOT NULL,
  apellido     VARCHAR2(35) NOT NULL,
  telefono     VARCHAR2(10) NOT NULL
);

CREATE TABLE e7nomina (
  id              INT PRIMARY KEY,
  empleado_id     INT REFERENCES e7empleado(id),
  monto           NUMBER(19,2) NOT NULL,
  fecha_creacion  DATE DEFAULT (sysdate)
);


CREATE TABLE e7cliente (
  id              INT PRIMARY KEY,
  sucursal_id     INT REFERENCES e7sucursal(id),
  nombre          VARCHAR2(35) NOT NULL,
  telefono        VARCHAR2(17) NOT NULL,
  fecha_creacion  DATE DEFAULT (sysdate)
);

CREATE TABLE e7venta (
  id            INT PRIMARY KEY,
  sucursal_id   INT REFERENCES e7sucursal(id),
  empleado_id   INT REFERENCES e7empleado(id),
  cliente_id    INT REFERENCES e7cliente(id),
  monto         NUMBER(19,2) NOT NULL,
  fecha_venta   DATE DEFAULT (sysdate)
);

CREATE TABLE e7orden (
  id              INT PRIMARY KEY,
  producto_id     INT REFERENCES e7producto(id),
  venta_id        INT REFERENCES e7venta(id),
  fecha_creacion  DATE DEFAULT (sysdate)
);

CREATE TABLE e7gasto (
  id              INT PRIMARY KEY,
  sucursal_id     INT REFERENCES e7sucursal(id),
  tipo_gasto      CHAR(1) NOT NULL,
  gasto_id		    INT NOT NULL,
  fecha_creacion  DATE DEFAULT (sysdate)
);


CREATE TABLE e7inventario (
  id            INT PRIMARY KEY,
  sucursal_id   INT REFERENCES e7sucursal(id),
  cantidad      INT NOT NULL,
  item_id       INT NOT NULL,
  tipo_item     CHAR(1) NOT NULL
);

CREATE TABLE e7proveedor (
  id            	INT PRIMARY KEY,
  sucursal_id   	INT REFERENCES e7sucursal(id),
  nombre        	VARCHAR2(35) NOT NULL
);

CREATE TABLE e7ingrediente (
  id            INT PRIMARY KEY,
  nombre        VARCHAR2(35) NOT NULL,
  proveedor_id  INT REFERENCES e7proveedor(id),
  precio        INT NOT NULL
);


CREATE TABLE e7requisito_ingrediente (
  id              INT PRIMARY KEY,
  producto_id     INT REFERENCES e7producto(id),
  ingrediente_id  INT REFERENCES e7ingrediente(id),
  cantidad        NUMBER(10) NOT NULL
);

CREATE TABLE e7merma (
  id           INT PRIMARY KEY,
  producto_id  INT REFERENCES e7producto(id),
  descripcion  VARCHAR2(100) NOT NULL
);


CREATE TABLE e7compra (
  id               INT PRIMARY KEY,
  proveedor_id     INT REFERENCES e7proveedor(id),
  ingrediente_id   INT REFERENCES e7ingrediente(id),
  monto            NUMBER(19,2) NOT NULL,
  cantidad         INT NOT NULL,
  fecha_compra     DATE DEFAULT (sysdate)
);