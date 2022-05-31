
const db = require('../db')

class carouselController {
	async getAllSpecPosts(req, res) {
		try {
			const allCars = await db.query("SELECT * FROM cars; SELECT url, alt from photo join cars on car_id = cars.id where photo.car_id = cars.id;");
			res.json(allCars.rows);
		  } catch (err) {
			console.error(err.message);
		  }
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

