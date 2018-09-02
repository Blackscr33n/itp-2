var mysql = require('mysql');

var connection = mysql.createConnection({
  host     : process.env.HOST,
  user     : process.env.DBUSER,
  password : process.env.PASSWORD,
  database : process.env.DB
})


connection.connect(function(err) {
  if(err) console.error(err)
})

module.exports = connection