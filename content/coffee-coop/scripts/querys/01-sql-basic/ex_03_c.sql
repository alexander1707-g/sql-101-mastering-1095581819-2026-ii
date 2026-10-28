SELECT 
    T1.certification_name AS certification,
    T1.issuing_body AS issuer,
    T1.premium_per_kg AS premium_per_kg
FROM farm.certifications T1 
    WHERE premium_per_kg >= 350;


/**

 certification |              issuer               | premium_per_kg
---------------+-----------------------------------+----------------
 Fairtrade     | Fairtrade International           |         400.00
 Orgánico      | Ente certificador orgánico        |         800.00
 Nespresso AAA | Nespresso / Rainforest Alliance   |         350.00
 Bird Friendly | Smithsonian Migratory Bird Center |         500.00
(4 filas)

**/