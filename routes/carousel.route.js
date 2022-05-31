const Router = require('express')
const router = new Router
const carouselController = require('../controllers/carousel.controller')

router.get('/carousel', carouselController.getAllSpecPosts)

module.exports = router

