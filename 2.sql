use stuartdb1;
SELECT * 
FROM vehicles
JOIN inventory ON vehicles.vin = inventory.vin
WHERE dealership_id = 2;

