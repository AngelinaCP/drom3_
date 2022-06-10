const Sequelize = require('sequelize');
const db = require('../db');


module.exports = (sequelize) => {
	const Gig = db.define('cars', {
	id: {
		type: Sequelize.INTEGER,
		 primaryKey: true
	},
	spec_card: {
		type: Sequelize.BOOLEAN
	},
	city: {
		type: Sequelize.STRING
	},
	marka: {
		type: Sequelize.STRING
	},
	model: {
		type: Sequelize.STRING
	},
	engine: {
		type: Sequelize.STRING
	},
	year: {
		type: Sequelize.STRING
	},
	price: {
		type: Sequelize.STRING
	},
	transmission: {
		type: Sequelize.STRING
	},
	drive_unit: {
		type: Sequelize.STRING
	},
	body_type: {
		type: Sequelize.STRING
	},
	color: {
		type: Sequelize.STRING
	},
	mileage: {
		type: Sequelize.STRING
	}
});
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

	Gig.hasone(photo);
	photo.belongsTo(Gig);


module.exports = Gig;