const Router = require('express')
const router = new Router
const postController = require('../controllers/post.controller')

router.get('/post', postController.getAllPosts)
router.get('/newPost', postController.createPost)

module.exports = router
