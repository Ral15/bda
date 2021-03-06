﻿CREATE VIEW VENTAS_GLOBALES
AS SELECT E7SUCURSAL.NOMBRE AS SUCURSAL, E7EMPLEADO.NOMBRE, E7EMPLEADO.APELLIDO, SUM(E7VENTA.MONTO) AS TOTAL FROM E7VENTA@CDMX, E7EMPLEADO@CDMX, E7SUCURSAL@CDMX
WHERE E7VENTA.EMPLEADO_ID = E7EMPLEADO.ID AND E7VENTA.SUCURSAL_ID = E7SUCURSAL.ID
GROUP BY E7SUCURSAL.NOMBRE, E7EMPLEADO.NOMBRE, E7EMPLEADO.APELLIDO
UNION
SELECT E7SUCURSAL.NOMBRE AS SUCURSAL, E7EMPLEADO.NOMBRE, E7EMPLEADO.APELLIDO, SUM(E7VENTA.MONTO) AS TOTAL FROM E7VENTA@P_QRO, E7EMPLEADO@P_QRO, E7SUCURSAL@P_QRO
WHERE E7VENTA.EMPLEADO_ID = E7EMPLEADO.ID AND E7VENTA.SUCURSAL_ID = E7SUCURSAL.ID
GROUP BY E7SUCURSAL.NOMBRE, E7EMPLEADO.NOMBRE, E7EMPLEADO.APELLIDO
UNION
SELECT E7SUCURSAL.NOMBRE AS SUCURSAL, E7EMPLEADO.NOMBRE, E7EMPLEADO.APELLIDO, SUM(E7VENTA.MONTO) AS TOTAL FROM E7VENTA@SLP, E7EMPLEADO@SLP, E7SUCURSAL@SLP
WHERE E7VENTA.EMPLEADO_ID = E7EMPLEADO.ID AND E7VENTA.SUCURSAL_ID = E7SUCURSAL.ID
GROUP BY E7SUCURSAL.NOMBRE, E7EMPLEADO.NOMBRE, E7EMPLEADO.APELLIDO;
