CREATE VIEW NOMINA_GLOBAL
AS
  SELECT
    E7SUCURSAL.NOMBRE    AS SUCURSAL,
    E7GASTO.GASTO_ID AS ID,
    E7GASTO.FECHA_CREACION AS FECHA,
    E7NOMINA.MONTO
  FROM E7GASTO@CDMX, E7NOMINA@CDMX, E7SUCURSAL@CDMX
  WHERE E7GASTO.TIPO_GASTO = 'N'
        AND E7NOMINA.ID = E7GASTO.GASTO_ID
  UNION
  SELECT
    E7SUCURSAL.NOMBRE    AS SUCURSAL,
    E7GASTO.GASTO_ID AS ID,
    E7GASTO.FECHA_CREACION AS FECHA,
    E7NOMINA.MONTO
  FROM E7GASTO@P_QRO, E7NOMINA@P_QRO, E7SUCURSAL@P_QRO
  WHERE E7GASTO.TIPO_GASTO = 'N'
        AND E7NOMINA.ID = E7GASTO.GASTO_ID
        AND E7SUCURSAL.ID = E7GASTO.SUCURSAL_ID AND E7SUCURSAL.ID = E7GASTO.SUCURSAL_ID
  UNION
  SELECT
    E7SUCURSAL.NOMBRE    AS SUCURSAL,
    E7GASTO.GASTO_ID AS ID,
    E7GASTO.FECHA_CREACION AS FECHA,
    E7NOMINA.MONTO
  FROM E7GASTO@SLP, E7NOMINA@SLP, E7SUCURSAL@SLP
  WHERE E7GASTO.TIPO_GASTO = 'N'
        AND E7NOMINA.ID = E7GASTO.GASTO_ID
        AND E7SUCURSAL.ID = E7GASTO.SUCURSAL_ID;

