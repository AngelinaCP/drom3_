CREATE TABLE cars(
	id SERIAL PRIMARY KEY,
	spec_card BOOLEAN,
	city VARCHAR(255),
	marka VARCHAR(255),
	model VARCHAR(255),
	engine VARCHAR(255),
	year VARCHAR(255),
	price VARCHAR(255),
	transmission VARCHAR(255),
	drive_unit VARCHAR(255),
	body_type VARCHAR(255),
	color VARCHAR(255),
	mileage VARCHAR(255)
);

CREATE TABLE photo(
	photo_id SERIAL PRIMARY KEY,
	url VARCHAR(255),
	alt VARCHAR(255),
	car_id INTEGER,
	FOREIGN KEY (car_id) REFERENCES cars (id)
);

CREATE TABLE contacts(
	contact_id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	mobile VARCHAR(255),
	email VARCHAR(255),
	description text,
	car_id INTEGER,
	FOREIGN KEY (car_id) REFERENCES cars (id)
);

INSERT INTO cars (spec_card, city, marka, model, engine, year, price, transmission, 
				  drive_unit, body_type, color, mileage)
		VALUES ('false', 'Барнаул', 'Hyundai', 'Avante', 'бензин, 1.6л', '2011г', '1000000', 'передний', 'седан',
				'automatic transmission', 'белый', '180000');
				
INSERT INTO photo(url, alt, car_id) VALUES ('https://avoreshin.github.io/json-api/Images/id1/1.jpeg',
										   'photo', 1);
INSERT INTO photo(url, alt, car_id) VALUES ('https://avoreshin.github.io/json-api/Images/id1/2.jpeg',
										   'photo', 1)									
	
SELECT * FROM cars UNION SELECT url, alt from photo join cars on car_id = cars.id where photo.car_id = cars.id;	
	
SELECT * from cars join photo on car_id = cars.id where photo.car_id = cars.id;

select row_to_json(photo_alias) from (select photo_id, url, alt from photo) photo_alias

select array_agg(row_to_json(photo_alias)) from (select * from photo) photo_alias

select * from cars, photo
