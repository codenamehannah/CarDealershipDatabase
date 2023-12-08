use stuartdb1;
SELECT dealerships.*
FROM dealerships
JOIN inventory ON dealerships.dealership_id = inventory.dealership_id
WHERE inventory.VIN = '3GNAXHEV5JL172986';
