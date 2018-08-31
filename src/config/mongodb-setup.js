var MongoClient = require('mongodb').MongoClient
var url = `mongodb://${process.env.MDB_USER}:${process.env.MDB_PASS}@ds219832.mlab.com:19832/heroku_90t1mdnn`

var db

MongoClient.connect(url, { useNewUrlParser: true}, function(err, db) {
  if (err) throw err
  console.log("Database created!")
  
})

exports.default = db