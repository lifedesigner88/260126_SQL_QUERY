SELECT 
    D.name,
    B.name
FROM 
    dogs D
LEFT JOIN
    breeds B USING (breed_id);

SELECT 
    O.name,
    D.name
FROM 
    owners O
JOIN
    dogs D USING (owner_id);

SELECT 
    B.name,
    D.name
FROM 
    breeds B
LEFT JOIN
    dogs D USING (breed_id);


SELECT 
    B.name,
    P.pet_passport_id,
    O.name
FROM 
    dogs B
    LEFT JOIN pet_passports P USING (dog_id)
    LEFT JOIN owners O USING (owner_id);