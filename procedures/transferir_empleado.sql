CREATE OR REPLACE PROCEDURE TRANSFERIREMPLEADO
  (
    e_nombre            IN VARCHAR2,
    e_apellido          IN VARCHAR2,
    id_sucursal_origen  IN NUMBER,
    id_sucursal_destino IN NUMBER
  ) IS
  e_puesto   NUMBER;
  e_telefono VARCHAR2(30);

  BEGIN
    SELECT PUESTO_ID
    INTO e_puesto
    FROM E7EMPLEADO
    WHERE E7EMPLEADO.NOMBRE = e_nombre
          AND E7EMPLEADO.APELLIDO = e_apellido;
    SELECT TELEFONO
    INTO e_telefono
    FROM E7EMPLEADO
    WHERE E7EMPLEADO.NOMBRE = e_nombre
          AND E7EMPLEADO.APELLIDO = e_apellido;
    IF (id_sucursal_destino = 1)
    THEN
      A512318.DARALTAEMPLEADO@CDMX(e_puesto, e_nombre, e_apellido, e_telefono);
    ELSIF (id_sucursal_destino = 2)
      THEN
        A1171503.DARALTAEMPLEADO@P_QRO(e_puesto, e_nombre, e_apellido, e_telefono);
    ELSE
      A1206630.DARALTAEMPLEADO@SLP(e_puesto, e_nombre, e_apellido, e_telefono);
    END IF;

    DARBAJAEMPLEADO(e_nombre, e_apellido);
    COMMIT;
  END TRANSFERIREMPLEADO;
