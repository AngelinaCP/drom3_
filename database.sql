CREATE DATABASE drom3 IF NOT EXISTS;

CREATE TABLE carousel  if not exists (photo VARCHAR, marka VARCHAR, 
					   city VARCHAR, price VARCHAR, 
					   model VARCHAR, year VARCHAR, 
					   engine VARCHAR, Mileage VARCHAR);

INSERT INTO carousel(photo, marka, city, price, model, year, engine, Mileage)
VALUES ('https://avoreshin.github.io/json-api/Images/id1/1.jpeg', 'Hyundai', 
		'Челябинск', '850000', 'Avante','2008г', 'бензин, 1.6л', '180000');
		
INSERT INTO carousel(photo, marka, city, price, model, year, engine, Mileage)
VALUES ('https://avoreshin.github.io/json-api/Images/id2/1.jpg', 'BMW', 
		'Челябинск', '850000', '5-Series','2008г', 'бензин, 1.6л', '180000');
		
INSERT INTO carousel(photo, marka, city, price, model, year, engine, Mileage)
VALUES ('https://avoreshin.github.io/json-api/Images/id3/1.jpg', 'Subaru', 
		'Барнаул', '2245000', 'Outback','2015', 'бензин, 1.6л', '180000');

INSERT INTO carousel(photo, marka, city, price, model, year, engine, Mileage)
VALUES ('https://avoreshin.github.io/json-api/Images/id4/1.jpg', 'Audi', 
		'Москва', '10800000', 'Q8','2018' ,'бензин, 1.6л', '180000');
		
INSERT INTO carousel(photo, marka, city, price, model, year, engine, Mileage)
VALUES ('https://avoreshin.github.io/json-api/Images/id5/1.jpg', 'Mercedes-Benz', 
		'Москва', '14990000', 'GLS-Class','2018', 'бензин, 1.6л', '180000');
		
INSERT INTO carousel(photo, marka, city, price, model, year, engine, Mileage)
VALUES ('https://avoreshin.github.io/json-api/Images/id6/1.jpg', 'Infinity', 
		'Москва', '10 450 000', 'QX80','2021', 'бензин, 1.6л', '180000');

INSERT INTO carousel(photo, marka, city, price, model, year, engine, Mileage)
VALUES ('https://avoreshin.github.io/json-api/Images/id7/1.jpg', 'BMW', 
		'Лениногорск', '14 200 000', 'X6','2020', 'бензин, 1.6л', '180000');