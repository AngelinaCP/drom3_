CREATE DATABASE drom3 IF NOT EXISTS;

CREATE TABLE photo(
	id SERIAL PRIMARY KEY,
	url VARCHAR(255),
	alt VARCHAR(255),
	car_id INTEGER,
	FOREIGN KEY (car_id) REFERENCES cars (id)
);

CREATE TABLE contacts(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	mobile VARCHAR(255),
	email VARCHAR(255),
	description text,
	car_id INTEGER,
	FOREIGN KEY (car_id) REFERENCES cars (id)
);

CREATE TABLE cars(
	id SERIAL PRIMARY KEY,
	spec_card BOOLEAN,
	city VARCHAR(255),
	marka VARCHAR(255),
	model VARCHAR(255),
	engine VARCHAR(255),
	year VARCHAR(255),
	-- photo_id INTEGER,
	price VARCHAR(255),
	transmission VARCHAR(255),
	drive_unit VARCHAR(255),
	body_type VARCHAR(255),
	color VARCHAR(255),
	mileage VARCHAR(255)
	-- contact_id INTEGER,
	-- FOREIGN KEY (photo_id) REFERENCES photo (id),
	-- FOREIGN KEY (contact_id) REFERENCES contacts ( id) 
);

CREATE TABLE cars2(
	id SERIAL PRIMARY KEY,
	spec_card BOOLEAN,
	city VARCHAR(255),
	marka VARCHAR(255),
	model VARCHAR(255),
	engine VARCHAR(255),
	year VARCHAR(255),
	photo VARCHAR(255),
	photo json,
	price VARCHAR(255),
	transmission VARCHAR(255),
	drive_unit VARCHAR(255),
	body_type VARCHAR(255),
	color VARCHAR(255),
	mileage VARCHAR(255),
	contact json
);

-- CREATE TABLE cars  if not exists (photo VARCHAR, marka VARCHAR, 
-- 					   city VARCHAR, price VARCHAR, 
-- 					   model VARCHAR, year VARCHAR, 
-- 					   engine VARCHAR, Mileage VARCHAR, transmission VARCHAR);


-- INSERT INTO carousel(photo, marka, city, price, model, year, engine, Mileage, transmission)
-- VALUES ('https://avoreshin.github.io/json-api/Images/id1/1.jpeg', 'Hyundai', 
-- 		'Челябинск', '850000', 'Avante','2008г', 'бензин, 1.6л', '180000', "automatic transmission");
		
-- INSERT INTO carousel(photo, marka, city, price, model, year, engine, Mileage)
-- VALUES ('https://avoreshin.github.io/json-api/Images/id2/1.jpg', 'BMW', 
-- 		'Челябинск', '850000', '5-Series','2008г', 'бензин, 1.6л', '180000');
		
-- INSERT INTO carousel(photo, marka, city, price, model, year, engine, Mileage)
-- VALUES ('https://avoreshin.github.io/json-api/Images/id3/1.jpg', 'Subaru', 
-- 		'Барнаул', '2245000', 'Outback','2015', 'бензин, 1.6л', '180000');

-- INSERT INTO carousel(photo, marka, city, price, model, year, engine, Mileage)
-- VALUES ('https://avoreshin.github.io/json-api/Images/id4/1.jpg', 'Audi', 
-- 		'Москва', '10800000', 'Q8','2018' ,'бензин, 1.6л', '180000');
		
-- INSERT INTO carousel(photo, marka, city, price, model, year, engine, Mileage)
-- VALUES ('https://avoreshin.github.io/json-api/Images/id5/1.jpg', 'Mercedes-Benz', 
-- 		'Москва', '14990000', 'GLS-Class','2018', 'бензин, 1.6л', '180000');
		
-- INSERT INTO carousel(photo, marka, city, price, model, year, engine, Mileage)
-- VALUES ('https://avoreshin.github.io/json-api/Images/id6/1.jpg', 'Infinity', 
-- 		'Москва', '10 450 000', 'QX80','2021', 'бензин, 1.6л', '180000');

-- INSERT INTO carousel(photo, marka, city, price, model, year, engine, Mileage)
-- VALUES ('https://avoreshin.github.io/json-api/Images/id7/1.jpg', 'BMW', 
-- 		'Лениногорск', '14 200 000', 'X6','2020', 'бензин, 1.6л', '180000');


INSERT INTO cars2(spec_card, id, city, marka, model, engine, year, photo, price, transmission, drive_unit, body_type +
	color, Mileage, contact) VALUES ( +
	'{
      "spec_card": false,
      "id": 1,
      "city": "Барнаул",
      "marka": "Hyundai",
      "model": "Avante",
      "engine": "бензин, 1.6л",
      "year": "2011г",
      "photo":  [
        {
          "id": 1,
          "url": "https://avoreshin.github.io/json-api/Images/id1/1.jpeg",
          "alt": "photo"
      },
        {
          "id": 2,
          "url": "https://avoreshin.github.io/json-api/Images/id1/2.jpeg",
          "alt": "photo"
        },
        {
          "id": 3,
          "url": "https://avoreshin.github.io/json-api/Images/id1/3.jpeg",
          "alt": "photo"
        },
        {
          "id": 4,
          "url": "https://avoreshin.github.io/json-api/Images/id1/4.jpeg",
          "alt": "photo"
        },
        {
          "id": 5,
          "url": "https://avoreshin.github.io/json-api/Images/id1/5.jpeg",
          "alt": "photo"
        },
        {
          "id": 6,
          "url": "https://avoreshin.github.io/json-api/Images/id1/6.jpeg",
          "alt": "photo"
        },
        {
          "id": 7,
          "url": "https://avoreshin.github.io/json-api/Images/id1/7.jpeg",
          "alt": "photo"
        },
        {
          "id": 8,
          "url": "https://avoreshin.github.io/json-api/Images/id1/8.jpeg",
          "alt": "photo"
        },
        {
          "id": 9,
          "url": "https://avoreshin.github.io/json-api/Images/id1/9.jpeg",
          "alt": "photo"
        },
        {
          "id": 10,
          "url": "https://avoreshin.github.io/json-api/Images/id1/10.jpeg",
          "alt": "photo"
        },
        {
          "id": 11,
          "url": "https://avoreshin.github.io/json-api/Images/id1/11.jpeg",
          "alt": "photo"
        },
        {
          "id": 12,
          "url": "https://avoreshin.github.io/json-api/Images/id1/12.jpeg",
          "alt": "photo"
        },
        {
          "id": 13,
          "url": "https://avoreshin.github.io/json-api/Images/id1/13.jpeg",
          "alt": "photo"
        },
        {
          "id": 14,
          "url": "https://avoreshin.github.io/json-api/Images/id1/14.jpeg",
          "alt": "photo"
        },
        {
          "id": 15,
          "url": "https://avoreshin.github.io/json-api/Images/id1/15.jpeg",
          "alt": "photo"
        }],
      "price": "1000000",
      "transmission": 	"automatic transmission",
      "drive_unit": "передний",
      "body_type": "седан",
      "color": "белый",
      "Mileage":"180000",
      "contact": {
        "name": "Aleksey",
        "mobile": "+7-888-88-88",
        "email": "alex1956@mail.ru"},
        "description": "Я собственник! Автомобиль полностью обслужен, перебрана ходовая, новые стойки, тормозные диски  , колодки передние и задние, рулевая рейка и т.д. Хорошая комплектация, салон кожа, раздельный климат контроль, датчик света, подогрев сидений, автозеркала , блютуз, флешкарта и т.д."
      }');