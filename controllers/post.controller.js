const db = require('../db')

class postController {
	async getAllPosts(req, res) {
		try {
			const allCars = await db.query("SELECT * FROM cars;");
			const photos =  await db.query("select array_agg(row_to_json(photo)) as photo from (select * from photo) as photo");
			const obj1 = allCars.rows;
			const obj2 =  photos.rows;
	
			const obj4 = Object.assign(obj1, obj2)
			/* const obj3 = {
				obj1, obj2
			} */
			// res.json(allCars.rows.concat(photos.rows) )
			// res.json([allCars.rows, photos.rows])
			res.json(obj4);
			// const newObj = object1.json.concat(allCars.json);
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
