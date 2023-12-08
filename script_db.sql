DROP DATABASE STUARTDB1;
CREATE DATABASE stuartdb1;
USE stuartdb1;

CREATE TABLE dealerships (
    dealership_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(50),
    phone VARCHAR(12)
);
CREATE TABLE vehicles (
    VIN VARCHAR(17) PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(30),
    mileage INT,
    price DECIMAL(10, 2),
    sold BOOLEAN DEFAULT false
);
CREATE TABLE inventory (
    dealership_id INT,
    VIN VARCHAR(17),
    FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id),
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);
CREATE TABLE sales_contracts (

    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    sale_date DATE,
    sale_amount DECIMAL(10, 2),
    VIN VARCHAR(17),
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);
INSERT INTO dealerships (name, address, phone)
VALUES
    ('Stuart Autos', '115 Potato Street', '555-123-4567'),
    ('Pluralsight Motors', '128 December Avenue', '321-987-6543'),
    ('Git Autos', '2617 Master Branch Boulevard', '888-555-7890');
    
INSERT INTO vehicles (VIN, make, model, year, color, mileage, price, sold)
VALUES
    ('3GNAXHEV5JL172986', 'Chevrolet', 'Equinox', 2021, 'Black', 18000, 28000.00, false),
    ('1N4BL4BV2KC154620', 'Nissan', 'Altima', 2020, 'White', 20000, 22000.00, true),
    ('1G1FB1RX1J0123456', 'Chevrolet', 'Camaro', 2018, 'Yellow', 15000, 30000.00, false),
    ('WAU2FAFR6GA046892', 'Audi', 'A4', 2016, 'Silver', 30000, 25000.00, false),
    ('5YJSA1E26HF180177', 'Tesla', 'Model S', 2022, 'Red', 10000, 60000.00, false),
    ('1G1RD6S54GU102890', 'Chevrolet', 'Volt', 2016, 'Blue', 25000, 20000.00, true),
    ('KM8J2CA41KU923478', 'Hyundai', 'Tucson', 2019, 'Gray', 22000, 23000.00, false),
    ('WBA3B3C51DF532823', 'BMW', '3 Series', 2013, 'Black', 40000, 18000.00, false),
    ('1G1ZD5ST9JF131111', 'Chevrolet', 'Malibu', 2018, 'Silver', 28000, 21000.00, true),
    ('1FADP3L91FL222222', 'Ford', 'Focus', 2015, 'Green', 35000, 15000.00, false);
    
INSERT INTO inventory (dealership_id, VIN)
VALUES
    (1, '3GNAXHEV5JL172986'),  
    (1, '1N4BL4BV2KC154620'),  
    (2, '1G1FB1RX1J0123456'),  
    (2, 'WAU2FAFR6GA046892'),  
    (3, '5YJSA1E26HF180177'),  
    (3, '1G1RD6S54GU102890'),  
    (1, 'KM8J2CA41KU923478'),  
    (2, 'WBA3B3C51DF532823'),  
    (3, '1G1ZD5ST9JF131111'),  
    (1, '1FADP3L91FL222222');  
    
INSERT INTO sales_contracts (customer_name, sale_date, sale_amount, VIN)
VALUES
    ('Amjad Dajma', '2023-01-15', 25000.00, '3GNAXHEV5JL172986'),
    ('Hannah Stuart', '2023-02-20', 35000.00, '1N4BL4BV2KC154620'),
    ('Pluralsight Company', '2023-03-10', 22000.00, '1G1FB1RX1J0123456'),
    ('Raymond Maroun', '2023-04-05', 25000.00, 'WAU2FAFR6GA046892'),
    ('Gabe Davis', '2023-05-18', 60000.00, 'WBA3B3C51DF532823');
    




