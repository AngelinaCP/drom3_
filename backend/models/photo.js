const Sequelize = require('sequelize');
const db = require('../db');


const photo = db.define('photo', {

	id: {
		type: Sequelize.INTEGER,
		primaryKey: true
	},
	url: {
		type: Sequelize.STRING,
	},
	alt: {
		type: Sequelize.STRING,
	},
	car_id: {
		type: Sequelize.INTEGER,
	}
})



module.exports = photo;