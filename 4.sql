use stuartdb1;
SELECT dealerships.*
FROM dealerships
JOIN vehicles ON dealerships.dealership_id = vehicles.dealership_id
WHERE vehicles.VIN = 'WBA3B3C51DF532823';
