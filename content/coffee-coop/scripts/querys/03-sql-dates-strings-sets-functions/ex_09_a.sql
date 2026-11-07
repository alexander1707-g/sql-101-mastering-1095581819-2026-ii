CREATE OR REPLACE FUNCTION buy.fn_count_deliveries(p_point_name VARCHAR, p_date DATE) 
RETURNS INT 
LANGUAGE plpgsql
AS $$

  DECLARE 

    v_total INTEGER;

  BEGIN 

    SELECT COALESCE(COUNT(T2.delivery_id), 0)
    INTO v_total
    FROM buy.collection_points T1 
    INNER JOIN buy.deliveries T2 ON T1.collection_point_id = T2.collection_point_id
    WHERE T2.delivered_at::DATE = p_date AND LOWER(T1.point_name) = LOWER(p_point_name);

    RETURN v_total;

  END;

$$;


SELECT buy.fn_count_deliveries('Punto de Compra Bochalema 1', '2026-09-30') AS deliveries_count;


/**

 deliveries_count
------------------
                4
(1 fila)

**/