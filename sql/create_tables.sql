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