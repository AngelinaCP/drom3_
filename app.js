const express = require("express");
const pool = require("./db");
const PORT = 3000;
const app = express();
const cors = require("cors");
app.use(cors());
app.use(express.json())


app.get("/carousel", async (req, res) => {
    $outer = {"container":"{\"foo\":\"bar\"}"}
    try {
      const allTodos = await pool.query("SELECT * FROM carousel");
      res.json(allTodos.rows);
    } catch (err) {
      console.error(err.message);
    }
  });


app.get("/post", async (req, res) => {
    $outer = {"container":"{\"foo\":\"bar\"}"}
    try {
      const allTodos = await pool.query("SELECT * FROM carousel");
      res.json(allTodos.rows);
    } catch (err) {
      console.error(err.message);
    }
  });

// fetch(`https://avoreshin.github.io/json-api/data-json.json`)
//     .then(response => {
//         if (!response.ok) {
//             throw new Error("HTTP error " + response.status);
//         }
//         return response.json();
//     })
//     .then(data => {
//         app.get('/', (req, res) => {
//             res.status(200).json(data);
//         })
//     })
//     .catch(error => console.error("data-json.json loader", error));

// app.get('/', (req, res) => {
//     res.status(200).json(data);
// })

// app.post('/', (req, res) => {
//     const {parcel} = req.body
//     console.log(parcel)
//     if (!parcel) {
//         return res.status(400).send({status: 'failed'})
//     }
//     res.status(200).send({status: 'received'})
// })

app.listen(PORT, function() {
    console.log("Server started successfully");
});
