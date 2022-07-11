
const db = require('../db')

// const Sequelize = require('sequelize')
// const db = new Sequelize('drom3', 'postgres', 'admin', {
// 	host: 'localhost', 
// 	dialect: 'postgres', 
// 	operatorsAliases: false,

// 	pool: {
// 		max: 5, 
// 		min: 0, 
// 		acquire: 30000,
// 		idle: 10000
// 	}
// });

// db.authenticate()
// 	.then(() => console.log('DB connected successfully'))
// 	.catch(err => console.log("Error "  + err));



class carouselController {
	async getAllSpecPosts(req, res) {
		const allCars = await db.query("SELECT spec_card, city, marka, model, engine, year, price, transmission, drive_unit, body_type, color, mileage, \
										json_agg(photo.*) as PHOTO \
										FROM cars JOIN photo ON photo.car_id = cars.id \
										GROUP BY 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12")
		res.json(allCars.rows)
	  } catch (err) {
		console.error(err.message);
	}
}

module.exports = new carouselController

// app.get("/carousel", async (req, res) => {
//     $outer = {"container":"{\"foo\":\"bar\"}"}
//     try {
//       const allTodos = await pool.query("SELECT * FROM carousel");
//       res.json(allTodos.rows);
//     } catch (err) {
//       console.error(err.message);
//     }
//   });

