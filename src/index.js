// server.js
// load the things we need
var express = require('express')
require('dotenv').load()
var app = express()

// set the view engine to ejs
app.set('view engine', 'ejs')

// use res.render to load up an ejs view file

// index page 
app.get('/', function(req, res) {
    const collection = db.collection('menu');
  // Find some documents
  collection.find({}).toArray(function(err, docs) {
    assert.equal(err, null);
    console.log("Found the following records");
    console.log(docs)
    //callback(docs);
    res.render('pages/index', {
        'title' : 'awesome',
        'content': 'Test  das ist ein cooler Paragraph - asd  asd dasda &uuml;',
        'menuEntries': [
            { name: 'Home', url: '/' },
            { name: 'About', url: '/about' }
        ]
    })
  });
    
})

// about page 
app.get('/about', function(req, res) {
    res.render('pages/about')
});

app.listen(process.env.PORT)
console.log(`${process.env.PORT} is the magic port`)