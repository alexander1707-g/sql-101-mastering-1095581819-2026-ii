SELECT 
  T1.delivery_id AS delivery,
  T2.farm_name AS farm,
  T3.point_name AS collection_point,
  T1.gross_weight_kg AS gross_weight_kg
FROM buy.deliveries T1 
INNER JOIN farm.farms T2 ON T1.farm_id = T2.farm_id
INNER JOIN buy.collection_points T3 ON T2.municipality_code = T3.municipality_code
WHERE T1.delivery_id LIKE '%20260930%';


/**

      delivery       |       farm       |               collection_point               | gross_weight_kg
---------------------+------------------+----------------------------------------------+-----------------
 DLV-20260930-000001 | El Cafetal       | Punto de Compra CajibÃ­o 3                    |           51.53
 DLV-20260930-000001 | El Cafetal       | Punto de Compra CajibÃ­o 2                    |           51.53
 DLV-20260930-000001 | El Cafetal       | Punto de Compra CajibÃ­o 1                    |           51.53
 DLV-20260930-000007 | La Argentina     | Punto de Compra ApÃ­a 2                       |          404.97
 DLV-20260930-000007 | La Argentina     | Punto de Compra ApÃ­a 1                       |          404.97
 DLV-20260930-000008 | La Aurora        | Punto de Compra El Tambo 2                   |          175.92
 DLV-20260930-000008 | La Aurora        | Punto de Compra El Tambo 1                   |          175.92
 DLV-20260930-000011 | El Tesoro        | Punto de Compra Miranda 1                    |          166.55
 DLV-20260930-000018 | Los Guaduales    | Punto de Compra GuachenÃ© 1                   |          247.11
 DLV-20260930-000019 | Los Arrayanes    | Punto de Compra Hobo 2                       |          106.26
 DLV-20260930-000019 | Los Arrayanes    | Punto de Compra Hobo 1                       |          106.26
 DLV-20260930-000020 | El Nogal         | Punto de Compra Tello 1                      |          115.75
 DLV-20260930-000021 | El Refugio       | Punto de Compra Aranzazu 1                   |          143.29
 DLV-20260930-000024 | Santa Clara      | Punto de Compra Tesalia 3                    |          222.49
 DLV-20260930-000024 | Santa Clara      | Punto de Compra Tesalia 2                    |          222.49
 DLV-20260930-000024 | Santa Clara      | Punto de Compra Tesalia 1                    |          222.49
 DLV-20260930-000028 | El Refugio       | Punto de Compra Acevedo 1                    |          258.00
 DLV-20260930-000032 | La UniÃ³n         | Punto de Compra Palestina 1                  |          213.33
 DLV-20260930-000034 | Tierra Linda     | Punto de Compra Santander De Quilichao 2     |          174.83
 DLV-20260930-000034 | Tierra Linda     | Punto de Compra Santander De Quilichao 1     |          174.83
 DLV-20260930-000040 | Bella Vista Alta | Punto de Compra Flandes 1                    |          321.49

**/