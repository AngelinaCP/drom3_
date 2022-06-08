// const Pool = require("pg").Pool;

// const pool = new Pool({
//   user: "postgres",
//   password: "admin",
//   host: "localhost",
//   port: 5432,
//   database: "drom3"
// });

// module.exports = pool;

const Sequelize = require('sequelize')

module.exports = new Sequelize('drom3', 'postgres', 'Coldplay', {
	host: 'localhost', 
	dialect: 'postgres', 
	operatorsAliases: false,

	pool: {
		max: 5, 
		min: 0, 
		acquire: 30000,
		idle: 10000
	}
});


