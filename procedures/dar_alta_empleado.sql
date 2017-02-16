CREATE OR REPLACE PROCEDURE DARALTAEMPLEADO
(
id_puesto   IN NUMBER,
e_nombre      IN VARCHAR2,
e_apellido    IN VARCHAR2,
e_telefono    IN VARCHAR2
) AS
BEGIN
INSERT INTO E7EMPLEADO (ID, SUCURSAL_ID, PUESTO_ID, NOMBRE, APELLIDO, TELEFONO)
VALUES (SEQ_EMPLEADO.nextval, 3, id_puesto, e_nombre, e_apellido, e_telefono);
COMMIT;
END DARALTAEMPLEADO;