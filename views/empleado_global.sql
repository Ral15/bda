CREATE VIEW EMPLEADO_GLOBAL
  AS
SELECT E7SUCURSAL.NOMBRE AS SUCURSAL, E7PUESTO.NOMBRE_PUESTO, E7EMPLEADO.NOMBRE, E7EMPLEADO.APELLIDO, E7EMPLEADO.TELEFONO
  FROM E7EMPLEADO@CDMX, E7SUCURSAL@CDMX, E7PUESTO@CDMX
WHERE E7EMPLEADO.SUCURSAL_ID = E7SUCURSAL.ID
AND E7EMPLEADO.PUESTO_ID = E7PUESTO.ID
UNION
SELECT E7SUCURSAL.NOMBRE AS SUCURSAL, E7PUESTO.NOMBRE_PUESTO, E7EMPLEADO.NOMBRE, E7EMPLEADO.APELLIDO, E7EMPLEADO.TELEFONO
FROM E7EMPLEADO@P_QRO, E7SUCURSAL@P_QRO, E7PUESTO@P_QRO
WHERE E7EMPLEADO.SUCURSAL_ID = E7SUCURSAL.ID
      AND E7EMPLEADO.PUESTO_ID = E7PUESTO.ID
UNION
SELECT E7SUCURSAL.NOMBRE AS SUCURSAL, E7PUESTO.NOMBRE_PUESTO, E7EMPLEADO.NOMBRE, E7EMPLEADO.APELLIDO, E7EMPLEADO.TELEFONO
FROM E7EMPLEADO@SLP, E7SUCURSAL@SLP, E7PUESTO@SLP
WHERE E7EMPLEADO.SUCURSAL_ID = E7SUCURSAL.ID
      AND E7EMPLEADO.PUESTO_ID = E7PUESTO.ID;
