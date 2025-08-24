
CREATE DATABASE assessment_db;
USE assessment_db;

CREATE TABLE country (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100) NOT NULL,       
    country_name_eng VARCHAR(100) NOT NULL,   
    country_code CHAR(3) NOT NULL             
);

 CREATE TABLE city (
    id INT PRIMARY KEY,
    city_name VARCHAR(100) NOT NULL,
    lat DECIMAL(9,6),
    `long` DECIMAL(9,6),
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES country(country_id)
);

CREATE TABLE customer (
    id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city_id INT,
    customer_address VARCHAR(200),
    next_call_date DATE,
    ts_inserted DATETIME,
    FOREIGN KEY (city_id) REFERENCES city(id)
);
INSERT INTO country (country_id, country_name, country_name_eng, country_code) VALUES
(1, 'Deutschland', 'Germany', 'DEU'),
(2, 'Srbija', 'Serbia', 'SRB'),
(3, 'Hrvatska', 'Croatia', 'HRV'),
(4, 'United States of America', 'United States of America', 'USA'),
(5, 'Polska', 'Poland', 'POL'),
(6, 'España', 'Spain', 'ESP'),
(7, 'Rossiya', 'Russia', 'RUS');

INSERT INTO city (id, city_name, lat, `long`, country_id) VALUES
(1, 'Berlin', 52.520008, 13.404954, 1),
(2, 'Belgrade', 44.787197, 20.457273, 2),
(3, 'Zagreb', 45.815399, 15.966568, 3),
(4, 'New York', 40.730610, -73.935242, 4),
(5, 'Los Angeles', 34.052235, -118.243683, 4),
(6, 'Warsaw', 52.237049, 21.017532, 5);

INSERT INTO customer (id, customer_name, city_id, customer_address, next_call_date, ts_inserted) VALUES
(1, 'Jewelry Store', 4, 'Long Street 120', '2020-01-21', '2020-01-09 14:01:20'),
(2, 'Bakery', 1, 'Kurfürstendamm 25', '2020-02-21', '2020-01-09 17:52:15'),
(3, 'Café', 1, 'Tauentzienstraße 44', '2020-01-21', '2020-01-10 08:02:49'),
(4, 'Restaurant', 3, 'Ulica lipa 15', '2020-01-21', '2020-01-10 09:20:21');

SELECT 
    co.country_name_eng AS country,
    ci.city_name,
    cu.customer_name
FROM country co
LEFT JOIN city ci ON co.country_id = ci.country_id
LEFT JOIN customer cu ON ci.id = cu.city_id
ORDER BY co.country_name_eng;

SELECT 
    co.country_name_eng AS country,
    ci.city_name,
    cu.customer_name
FROM country co
INNER JOIN city ci ON co.country_id = ci.country_id
LEFT JOIN customer cu ON ci.id = cu.city_id
ORDER BY co.country_name_eng, ci.city_name;










