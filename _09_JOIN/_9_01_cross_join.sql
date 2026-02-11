SELECT 
    dogs.name AS DOG,
    owners.name AS OWNER,
    breeds.name AS TYPE
FROM dogs 
    JOIN owners USING (owner_id)
    JOIN breeds USING (breed_id);


