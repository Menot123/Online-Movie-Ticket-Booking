var mysql = require('mysql2/promise');
var dbConfig = {
  host: process.env.DB_HOST || 'localhost',
  user: process.env.DB_USER || 'root',
  database: process.env.DB_NAME || 'l2dbt_cinema'
};

async function query(sql, params) {
  var con = await mysql.createConnection(dbConfig);
  console.log(con.connect)
  const [results, ] = await con.execute(sql, params);

  return results;
}

module.exports = {
  query
}
