
const db = require('../db')

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

