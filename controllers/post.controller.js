const db = require('../db')

class postController {
	async getAllPosts(req, res) {
		try {

			const allCars = await db.query("SELECT spec_card, city, marka, model, engine, year, price, transmission, drive_unit, body_type, color, mileage, \
											json_agg(photo.*) as PHOTO \
											FROM cars JOIN photo ON photo.car_id = cars.id \
											GROUP BY 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12")
			res.json(allCars.rows)
		  } catch (err) {
			console.error(err.message);
		  }
	}

	async createPost(req, res) {
		const {marka, model, mileage, description, price, city, photo, mobile} = req.body
		const newPost = await db.query('INSERT INTO cars(marka, model, mileage, description, \
			price, city) VALUES ($1, $2, $3, $4, $5, $6); INSERT INTO photo(url) VALUES($7); \
			INSERT INTO contacts (mobile) VALUES($8); RETURNING *', +
			[marka, model, mileage, description, price, city, mobile])
			res.json(newPost.rows[0])
	}
}

module.exports = new postController

// app.get("/post", async (req, res) => {
//     $outer = {"container":"{\"foo\":\"bar\"}"}
//     try {
//       const allTodos = await pool.query("SELECT * FROM carousel");
//       res.json(allTodos.rows);
//     } catch (err) {
//       console.error(err.message);
//     }
//   });
