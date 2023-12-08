use stuartdb1;
SELECT * 
FROM sales_contracts
WHERE dealership_id = '3'
AND sale_date BETWEEN 2022-12-01 AND 2023-12-01;