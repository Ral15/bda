CREATE OR REPLACE PROCEDURE PAGAREMPLEADO(
  id_empleado IN NUMBER,
  id_sucursal IN NUMBER
)
IS puesto NUMBER;
  salario NUMBER;
  BEGIN
    SELECT PUESTO_ID
    INTO puesto
    FROM E7EMPLEADO
    WHERE E7EMPLEADO.ID = id_empleado;
    SELECT SUELDO
    INTO salario
    FROM E7PUESTO
    WHERE E7PUESTO.ID = puesto;
    INSERT INTO E7NOMINA (ID, EMPLEADO_ID, MONTO, FECHA_CREACION)
    VALUES (SEQ_NOMINA.nextval, id_empleado, salario, sysdate);
    INSERT INTO E7GASTO (ID, SUCURSAL_ID, TIPO_GASTO, GASTO_ID, FECHA_CREACION)
    VALUES (SEQ_GASTO.nextval, id_sucursal, 'N', SEQ_NOMINA.currval, sysdate);
    COMMIT;
  END PAGAREMPLEADO;
