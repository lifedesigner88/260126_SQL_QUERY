SELECT 
    owners.name AS OWNER,
    dogs.name AS DOG
FROM owners 
    LEFT JOIN dogs USING (owner_id);


SELECT 
    dogs.name AS DOG,
    owners.name AS OWNER
FROM dogs 
    LEFT JOIN owners USING (owner_id);


