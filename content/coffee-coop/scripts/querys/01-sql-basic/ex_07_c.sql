SELECT 
  T1.farm_name AS farm,
  T1.rural_district AS rural_district,
  T1.total_area_ha AS area_ha,
  T1.altitude_masl AS altitute_masl,
  T1.longitude AS longitude
FROM farm.farms T1 
  WHERE T1.municipality_code = '54518'
  AND (T1.latitude IS NULL OR T1.longitude IS NULL)
ORDER BY T1.rural_district ASC, T1.total_area_ha DESC;



/**

       farm       |    rural_district    | area_ha | altitute_masl | longitude
------------------+----------------------+---------+---------------+-----------
 La Floresta      | Alcaparral           |    4.55 |          1866 |
 Los Pinos        | Alcaparral           |    1.67 |          1771 |
 Miraflores       | Alcaparral           |    1.29 |          1636 |
 Bella Vista Alta | Alto Grande          |    1.95 |          1328 |
 Bellavista       | Alto Grande          |    1.80 |          1704 |
 El Recuerdo      | Alto Grande          |    1.47 |          1875 |
 Las Brisas       | Alto Grande          |    1.40 |          1977 |
 El Vergel        | Cabecera Municipal   |    5.14 |          1437 |
 El Triunfo       | Cabecera Municipal   |    4.15 |          1574 |
 Los Arrayanes    | Cabecera Municipal   |    3.66 |          1452 |
 La Holanda       | Cabecera Municipal   |    3.24 |          1206 |
 El EdÃ©n          | Cabecera Municipal   |    2.89 |          1603 |
 La Cumbre        | Cabecera Municipal   |    0.78 |          1438 |
 Cafetal Viejo    | Caima                |    5.29 |          2229 |
 La Cascada       | Caima                |    2.49 |          2300 |
 El HiguerÃ³n      | Caima                |    2.45 |          1868 |
 Las Delicias     | Caima                |    1.01 |          1308 |
 Las Margaritas   | Caima                |    0.91 |          2072 |
 El Guayabo       | Caima                |    0.78 |          1456 |
 Santa BÃ¡rbara    | Caima                |    0.51 |          1519 |
 Villa Rosa       | Cunuba               |    9.82 |          1515 |
 Bellavista       | Cunuba               |    7.72 |          2107 |
 La Palma         | Cunuba               |    4.99 |          1597 |
 Santa Clara      | Cunuba               |    1.70 |          2051 |
 La Palma         | Cunuba               |    1.60 |          1773 |
 La Gaitana       | Cunuba               |    1.12 |          1659 |
 La CabaÃ±a        | Cunuba               |    0.99 |          1376 |
 La Siberia       | El Alizal            |    3.96 |          1950 |
 Los Laureles     | El Alizal            |    3.24 |          1371 |
 El Oasis         | El Alizal            |    2.52 |          1692 |
 Villa Rosa       | El Alizal            |    1.81 |          2108 |
 Altamira         | El Alizal            |    1.62 |          1451 |
 El Diamante      | El Alizal            |    1.13 |          1520 |
 Villa Hermosa    | El Escorial          |    1.78 |          1948 |
 Las Palmas       | El Escorial          |    1.56 |          1106 |
 El Triunfo       | El Escorial          |    0.75 |          1715 |
 La Palma         | El Escorial          |    0.72 |          1636 |
 La Reserva       | El Escorial          |    0.49 |          1133 |
 Los Arrayanes    | El Palchal           |   14.82 |          1490 |
 La Granja        | El Palchal           |    2.83 |          2140 |
 La Aurora        | El Palchal           |    2.74 |          1684 |
 La Esperanza     | El Palchal           |    1.64 |          1345 |
 El Mirador       | El Palchal           |    1.17 |          1276 |
 El ParaÃ­so       | El Palchal           |    1.01 |           998 |
 Las Margaritas   | El Palchal           |    0.70 |          1686 |
 La Milagrosa     | El Palchal           |    0.55 |          1461 |
 Los Naranjos     | El Rosal             |   14.08 |          2052 |
 Villa Hermosa    | El Rosal             |    3.79 |          1952 |
 La Esperanza     | El Rosal             |    2.34 |          1399 |
 Bella Vista Alta | El Rosal             |    1.03 |          1652 |
 San Rafael       | El Totumo            |    4.50 |          1670 |
 El Guayabo       | El Totumo            |    3.68 |          1859 |
 El Nogal         | El Totumo            |    2.49 |          1539 |
 La Quebrada      | El Totumo            |    0.68 |          1885 |
 El Porvenir      | FontibÃ³n             |    4.75 |          1418 |
 El Guamo         | FontibÃ³n             |    4.35 |          1731 |
 El Mirador       | FontibÃ³n             |    4.33 |          1492 |
 El Guamo         | FontibÃ³n             |    1.62 |          1408 |
 Las Margaritas   | FontibÃ³n             |    1.20 |          1740 |
 El Encanto       | FontibÃ³n             |    0.75 |          1639 |
 El Danubio       | GarcÃ­a               |    7.83 |          2160 |
 Las Margaritas   | GarcÃ­a               |    4.64 |          1157 |
 El Encanto       | GarcÃ­a               |    2.31 |          1924 |
 La Reserva       | GarcÃ­a               |    2.05 |          1841 |
 La Isabela       | GarcÃ­a               |    1.36 |          2275 |
 Tierra Linda     | Iscaligua            |    5.16 |          1721 |
 El Cedro         | Iscaligua            |    4.70 |          1900 |
 San JosÃ©         | Iscaligua            |    4.55 |          1548 |
 Mi Ranchito      | Iscaligua            |    3.24 |          1620 |
 El MesÃ³n         | Iscaligua            |    2.80 |          1840 |
 El Silencio      | Iscaligua            |    1.68 |          1670 |
 San Antonio      | Iscaligua            |    1.67 |          1635 |
 La Palma         | Iscaligua            |    1.63 |          1447 |
 El Silencio      | Jurado               |    2.21 |          1975 |
 San Antonio      | Jurado               |    1.64 |          1422 |
 La Milagrosa     | Jurado               |    0.92 |          1976 |
 La Loma          | Jurado               |    0.42 |          1795 |
 El Mango         | La â”ŒPa               |    3.86 |          1733 |
 El Horizonte     | La â”ŒPa               |    3.19 |          1652 |
 La CabaÃ±a        | La â”ŒPa               |    1.41 |          1894 |
 El HiguerÃ³n      | La â”ŒPa               |    1.07 |          1430 |
 El Brillante     | La Legua             |    9.59 |          1974 |
 El Cedro         | La Legua             |    4.06 |          1716 |
 El Mango         | La Legua             |    3.31 |          1403 |
 San Antonio      | La Legua             |    3.09 |          1832 |
 La UniÃ³n         | La Legua             |    2.74 |          1826 |
 Santa Clara      | La Legua             |    2.62 |          2300 |
 Tierra Linda     | La Legua             |    2.13 |          1641 |
 Cafetal Viejo    | La Legua             |    0.42 |          2109 |
 Tierra Linda     | Lengua               |    4.17 |          1864 |
 La CabaÃ±a        | Lengua               |    1.03 |          1428 |
 La Cascada       | Lengua               |    0.82 |          1177 |
 La Carolina      | Llano Castro         |    3.40 |          1474 |
 Las Mercedes     | Llano Castro         |    2.73 |          1942 |
 El Refugio       | Monteadentro         |    4.89 |          2242 |
 La Esperanza     | Monteadentro         |    4.21 |          1858 |
 La Isabela       | Monteadentro         |    3.06 |          1883 |
 La Siberia       | Monteadentro         |    2.80 |          1684 |
 La Quebrada      | Monteadentro         |    1.97 |          1597 |
 El Diamante      | Monteadentro         |    1.16 |          1670 |
 El Placer        | Monteadentro         |    0.95 |          1809 |
 Las Mercedes     | Navarro              |    2.12 |          1694 |
 El ParaÃ­so       | Navarro              |    1.67 |          2164 |
 Los Arrayanes    | Navarro              |    1.42 |          1101 |
 El Brillante     | Navarro              |    0.96 |          1493 |
 El Tesoro        | PeÃ±as                |    4.62 |          1398 |
 Villa Rosa       | PeÃ±as                |    3.69 |          1427 |
 La Argentina     | PeÃ±as                |    3.33 |          1804 |
 La Floresta      | PeÃ±as                |    3.00 |          1527 |
 El Brillante     | PeÃ±as                |    2.06 |          1274 |
 La Esperanza     | PeÃ±as                |    2.05 |          1679 |
 Bellavista       | PeÃ±as                |    1.76 |          1512 |
 El Refugio       | PeÃ±as                |    1.72 |          1976 |
 La Selva         | PeÃ±as                |    1.59 |          1953 |
 La Florida       | PeÃ±as                |    1.16 |          1657 |
 Los Laureles     | PeÃ±as                |    0.97 |          1549 |
 La Pradera       | Sabagua              |    1.45 |          1870 |
 La Loma          | Sabagua              |    1.15 |          1414 |
 La CabaÃ±a        | Sabagua              |    0.69 |          1710 |
 El Retiro        | Sabaneta Alta        |    4.13 |          1823 |
 San Luis         | Sabaneta Alta        |    1.06 |          1584 |
 San Luis         | Sabaneta Alta        |    0.80 |          1623 |
 Bella Vista Alta | Sabaneta Baja        |   12.71 |          1350 |
 Bella Vista Alta | Sabaneta Baja        |    2.09 |          1570 |
 El Refugio       | Sabaneta Baja        |    1.93 |          2195 |
 La Argentina     | Sabaneta Baja        |    1.64 |          1822 |
 Las OrquÃ­deas    | Sabaneta Baja        |    0.78 |          2152 |
 La Siberia       | Sabaneta Baja        |    0.71 |          1619 |
 El Guayabo       | San Francisco        |    3.20 |          1718 |
 Las Mercedes     | San Francisco        |    1.05 |          1573 |
 La Fortuna       | San Francisco        |    0.67 |          1478 |
 Bellavista       | San JosÃ© De Tonchala |   17.08 |          1260 |
 La Floresta      | San JosÃ© De Tonchala |    7.07 |          1662 |
 La Primavera     | San JosÃ© De Tonchala |    3.41 |          1732 |
 Cafetal Viejo    | San JosÃ© De Tonchala |    2.44 |          1469 |
 San Rafael       | San JosÃ© De Tonchala |    1.02 |          2065 |
 Los Laureles     | San JosÃ© De Tonchala |    0.84 |          2148 |
 El Encanto       | San JosÃ© De Tonchala |    0.80 |          1484 |
 El Horizonte     | San JosÃ© De Tonchala |    0.79 |          1415 |
 La Gloria        | San JosÃ© De Tonchala |    0.41 |          1199 |
 Los Guaduales    | Santa Matilde        |    2.51 |          1475 |
 San JosÃ©         | Santa Matilde        |    1.64 |          1553 |
 El Manantial     | Santa Matilde        |    1.54 |          1697 |
 San Rafael       | Tampanqueba          |    4.78 |          1411 |
 El Nogal         | Tampanqueba          |    4.50 |          1627 |
 La Palma         | Tampanqueba          |    4.32 |          1596 |
 San Luis         | Tampanqueba          |    2.86 |          1724 |
 El Bosque        | Tampanqueba          |    2.71 |          1527 |
 Tierra Linda     | Tampanqueba          |    2.25 |          1808 |
 Monteverde       | Tampanqueba          |    1.72 |          1588 |
 San JosÃ©         | Tampanqueba          |    0.68 |          1987 |
 El Danubio       | Tampanqueba          |    0.56 |          1160 |
 El Guayabo       | Tampanqueba          |    0.53 |          1168 |
(153 filas)

**/