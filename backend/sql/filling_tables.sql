INSERT INTO cars (spec_card, city, marka, model, engine, year, price, transmission, 
				  drive_unit, body_type, color, mileage)
		VALUES ('false', 'Барнаул', 'Hyundai', 'Avante', 'бензин, 1.6л', '2011г', '1000000', 'передний', 'седан',
				'automatic transmission', 'белый', '180000');
INSERT INTO cars (spec_card, city, marka, model, engine, year, price, transmission, 
				  drive_unit, body_type, color, mileage)
		VALUES ('false', 'Казань', 'Hyundai', 'Avante', 'бензин, 1.6л', '2015г', '1500000', 'передний', 'седан',
				'automatic transmission', 'красный', '180000');				
INSERT INTO photo (url, alt, car_id) VALUES ('https://avoreshin.github.io/json-api/Images/id1/1.jpeg', 'photo', 1);
INSERT INTO photo (url, alt, car_id) VALUES ('https://avoreshin.github.io/json-api/Images/id1/2.jpeg', 'photo', 1);									
	
SELECT * FROM cars UNION SELECT url, alt from photo join cars on car_id = cars.id where photo.car_id = cars.id;	
	
SELECT * from cars join photo on car_id = cars.id where photo.car_id = cars.id;

select row_to_json(photo_alias) from (select photo_id, url, alt from photo) photo_alias

select array_agg(row_to_json(photo_alias)) from (select * from photo) photo_alias

select * from cars, photo