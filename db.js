const Pool = require("pg").Pool;

const pool = new Pool({
  user: "postgres",
  password: "Coldplay",
  host: "localhost",
  port: 5432,
  database: "drom3"
});

module.exports = pool;
