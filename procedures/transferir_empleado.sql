CREATE OR REPLACE PROCEDURE TRANSFERIREMPLEADO
  (
    id_empleado         IN NUMBER,
    id_sucursal_origen  IN NUMBER,
    id_sucursal_destino IN NUMBER
  ) IS
  id_puesto  NUMBER;
  e_nombre   VARCHAR2(30);
  e_apellido VARCHAR2(30);
  e_telefono VARCHAR2(30);

  BEGIN
    SELECT PUESTO_ID
    INTO id_puesto
    FROM E7EMPLEADO
    WHERE E7EMPLEADO.ID = id_empleado
          AND E7EMPLEADO.SUCURSAL_ID = id_sucursal_origen;
    SELECT NOMBRE
    INTO e_nombre
    FROM E7EMPLEADO
    WHERE E7EMPLEADO.ID = id_empleado
          AND E7EMPLEADO.SUCURSAL_ID = id_sucursal_origen;
    SELECT APELLIDO
    INTO e_apellido
    FROM E7EMPLEADO
    WHERE E7EMPLEADO.ID = id_empleado
          AND E7EMPLEADO.SUCURSAL_ID = id_sucursal_origen;
    SELECT TELEFONO
    INTO e_telefono
    FROM E7EMPLEADO
    WHERE E7EMPLEADO.ID = id_empleado
          AND E7EMPLEADO.SUCURSAL_ID = id_sucursal_origen;
    IF (id_sucursal_destino = 1)
    THEN
      INSERT INTO E7EMPLEADO@CDMX (ID, SUCURSAL_ID, PUESTO_ID, NOMBRE, APELLIDO, TELEFONO)
      VALUES (SEQ_EMPLEADO.nextval, id_sucursal_destino, id_puesto, e_nombre, e_apellido, e_telefono);
    ELSIF (id_sucursal_destino = 2)
      THEN
        INSERT INTO E7EMPLEADO@P_QRO (ID, SUCURSAL_ID, PUESTO_ID, NOMBRE, APELLIDO, TELEFONO)
        VALUES (SEQ_EMPLEADO.nextval, id_sucursal_destino, id_puesto, e_nombre, e_apellido, e_telefono);
    ELSE
      INSERT INTO E7EMPLEADO@SLP (ID, SUCURSAL_ID, PUESTO_ID, NOMBRE, APELLIDO, TELEFONO)
      VALUES (SEQ_EMPLEADO.nextval, id_sucursal_destino, id_puesto, e_nombre, e_apellido, e_telefono);
    END IF;

    DELETE FROM E7EMPLEADO
    WHERE E7EMPLEADO.NOMBRE = e_nombre
    AND E7EMPLEADO.APELLIDO = e_apellido;

    COMMIT;
  END TRANSFERIREMPLEADO;
