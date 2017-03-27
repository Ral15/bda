CREATE OR REPLACE PROCEDURE TRANSFERIRINGREDIENTE
  (
    id_sucursal_destino IN NUMBER,
    item_idd             IN NUMBER,
    cantidad_quiero     IN NUMBER
  ) IS
  cantidad_del_otro   NUMBER;
  BEGIN
    -- CDMX
    IF id_sucursal_destino = 1 THEN
      --sacar cantidad del item
      select cantidad into cantidad_del_otro 
      from e7inventario@cdmx
      where e7inventario.item_id@cdmx = item_idd;

      -- si no tiene suficiente cantidad para darme
      IF cantidad_del_otro <= cantidad_quiero THEN
        RAISE_APPLICATION_ERROR(-20000, 'no tengo suficiente para darte!');
      ELSE
        -- restar cantidad de inventario destino
        update e7inventario@cdmx 
        set cantidad@cdmx = cantidad@cdmx - cantidad_quiero
        where e7inventario.item_id@cdmx = item_idd;

        -- sumar cantidad a inventario origen
        update e7inventario
        set cantidad = cantidad + cantidad_quiero
        where item_id = item_idd;
        COMMIT;
      END IF;
    -- -- QRO
    ELSIF id_sucursal_destino = 2 THEN
      --sacar cantidad del item
      select cantidad into cantidad_del_otro 
      from e7inventario@p_qro
      where e7inventario.item_id@p_qro = item_idd;

      -- si no tiene suficiente cantidad para darme
      IF cantidad_del_otro <= cantidad_quiero THEN
        RAISE_APPLICATION_ERROR(-20000, 'no tengo suficiente para darte!');
      ELSE
        -- restar cantidad de inventario destino
        update e7inventario@p_qro 
        set cantidad@p_qro = cantidad@p_qro - cantidad_quiero
        where e7inventario.item_id@p_qro = item_idd;

        -- sumar cantidad a inventario origen
        update e7inventario
        set cantidad = cantidad + cantidad_quiero
        where item_id = item_idd;

        COMMIT;
      END IF;
    -- -- slp
    ELSIF id_sucursal_destino = 3 THEN
      --sacar cantidad del item
      select cantidad into cantidad_del_otro 
      from e7inventario@slp
      where e7inventario.item_id@slp = item_idd;

      -- si no tiene suficiente cantidad para darme
      IF cantidad_del_otro <= cantidad_quiero THEN
        RAISE_APPLICATION_ERROR(-20000, 'no tengo suficiente para darte!');
      ELSE
        -- restar cantidad de inventario destino
        update e7inventario@slp 
        set cantidad@slp = cantidad@slp - cantidad_quiero
        where e7inventario.item_id@slp = item_idd;

        -- sumar cantidad a inventario origen
        update e7inventario
        set cantidad = cantidad + cantidad_quiero
        where item_id = item_idd;

        COMMIT;
      END IF;
    ELSE
      RAISE_APPLICATION_ERROR(-20000, 'parametros invalidos, verificar');
    END IF;
END TRANSFERIRINGREDIENTE;
