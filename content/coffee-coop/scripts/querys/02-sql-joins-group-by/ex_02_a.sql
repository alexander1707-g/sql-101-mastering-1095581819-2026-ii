SELECT 
  T1.document_number AS document,
  T1.first_name AS first_name,
  T1.last_name AS last_name,
  T2.farm_name AS farm
FROM farm.farmers T1 
LEFT JOIN farm.farms T2 ON T1.farmer_id = T2.farmer_id 
WHERE T1.municipality_code = '54518';

/**

  document  |    first_name     |     last_name      |       farm
------------+-------------------+--------------------+------------------
 1061690671 | Guillermo Pedro   | Arias RodrÃ­guez    | La Selva
 712758473  | Wilson            | LÃ³pez Villamizar   | El Silencio
 134410171  | Orlando           | Salazar BermÃºdez   | El Diamante
 870240973  | Jairo             | Molina PabÃ³n       | El Recuerdo
 727945493  | Gloria            | MarÃ­n Rivera       | La Esperanza
 549054771  | MarÃ­a             | Burbano Duarte     | El Nogal
 549054771  | MarÃ­a             | Burbano Duarte     | La Divisa
 622105662  | Alejandra         | Molina Torres      | La Carolina
 622105662  | Alejandra         | Molina Torres      | La Cristalina
 622105662  | Alejandra         | Molina Torres      | Villa Rosa
 437443011  | JuliÃ¡n            | PeÃ±a Betancur      | Los Arrayanes
 356207226  | Luisa             | Caicedo Restrepo   | El Brillante
 356207226  | Luisa             | Caicedo Restrepo   | La Cascada
 578947645  | Mario             | Uribe CuÃ©llar      | El Porvenir
 578947645  | Mario             | Uribe CuÃ©llar      | La Primavera
 24999630   | Esperanza         | Romero Betancur    | El Oasis
 24999630   | Esperanza         | Romero Betancur    | La Florida
 914044314  | AncÃ­zar Cristian  | PolanÃ­a Delgado    | Los Arrayanes

**/