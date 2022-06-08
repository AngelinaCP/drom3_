// const Router = require('express')
// const router = new Router
// const postController = require('../controllers/post.controller')

// router.get('/post', postController.getAllPosts)
// router.get('/newPost', postController.createPost)

// module.exports = router


const express = require('express');
const db = require('../db');
const router = express.Router();
const Gig = require('../models/Gig')

// router.get('/post', (req, res) => res.send('GIGIG'))

router.get('/post', (req, res) =>
	Gig.findAll()
		.then(gigs => {
			// res.json(gigs)
			// router.get('/post', postController.getAllPosts)
		})
		.catch(err => console.log(err)));

module.exports = router