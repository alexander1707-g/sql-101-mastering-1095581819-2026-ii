SELECT 
  T1.farm_name AS farm,
  T1.rural_district AS rural_district,
  T3.municipality_name AS municipality,
  T2.first_name AS first_name,
  T2.last_name AS last_name
FROM farm.farms T1 
INNER JOIN farm.farmers T2 ON T1.farmer_id = T2.farmer_id
INNER JOIN geo.municipalities T3 ON T1.municipality_code = T3.municipality_code
WHERE T3.municipality_code = '54518'
ORDER BY T2.last_name;


/**

       farm       |    rural_district    | municipality |     first_name     |      last_name
------------------+----------------------+--------------+--------------------+---------------------
 El JardÃ­n        | El Escorial          | Pamplona     | Manuel             | Agudelo JimÃ©nez
 La Selva         | PeÃ±as                | Pamplona     | Manuel             | Agudelo JimÃ©nez
 El Diamante      | El Alizal            | Pamplona     | Marleny            | Agudelo Sandoval
 El Encanto       | FontibÃ³n             | Pamplona     | RocÃ­o              | Ãlvarez CÃ¡rdenas
 Bellavista       | Alto Grande          | Pamplona     | RocÃ­o              | Ãlvarez CÃ¡rdenas
 La CabaÃ±a        | Lengua               | Pamplona     | MÃ³nica             | Ãlvarez Carrillo
 Monteverde       | Lengua               | Pamplona     | MÃ³nica             | Ãlvarez Carrillo
 El ArrayÃ¡n       | Navarro              | Pamplona     | Marleny            | Ãlvarez Correa
 El Mango         | La Legua             | Pamplona     | Alberto            | Ãlvarez Villamizar
 Monteverde       | La Legua             | Pamplona     | Myriam Yuliana     | Arango NarvÃ¡ez
 El Recuerdo      | La Legua             | Pamplona     | AncÃ­zar            | Arango Silva
 El Rosal         | Navarro              | Pamplona     | Edilma Gabriela    | Arias Ãlvarez
 Monteverde       | El Palchal           | Pamplona     | Edilma Gabriela    | Arias Ãlvarez
 Las Delicias     | Sabagua              | Pamplona     | Camilo             | Arias Mora
 La Quebrada      | Navarro              | Pamplona     | Viviana            | Arias RamÃ­rez
 La Selva         | Sabaneta Baja        | Pamplona     | Guillermo Pedro    | Arias RodrÃ­guez
 San Luis         | Sabaneta Alta        | Pamplona     | Isabella           | Barrera Cabrera
 La Siberia       | El Alizal            | Pamplona     | Mariana            | Barrera Correa
 El Brillante     | La Legua             | Pamplona     | Miguel             | Barrera Osorio
 La Floresta      | San JosÃ© De Tonchala | Pamplona     | Ãngela             | Barrera PeÃ±a
 El Oasis         | El Alizal            | Pamplona     | Ramiro             | Barrera Villamizar
 Agua Bonita      | Monteadentro         | Pamplona     | Manuela            | Bastidas Medina
 Monteverde       | Alto Grande          | Pamplona     | Antonio            | Bastidas RodrÃ­guez

**/