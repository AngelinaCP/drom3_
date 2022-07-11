const express = require("express");
const PORT = process.env.PORT || 3000;
const app = express();
const cors = require("cors");
const postRouter = require('./routes/post.route')
// const carouselRouter = require('./routes/carousel.route')
const db = require('./db')
app.use(cors());
app.use(express.json())

db.authenticate() 
	.then(() => console.log('DB connected successfully'))
	.catch(err => console.log("Error "  + err));
 
// app.use('/', require('./routes/post.route'));

app.use( '/', postRouter)
// app.use('/', carouselRouter)

app.listen(PORT, function() {
    console.log("Server started successfully");
});


