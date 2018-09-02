// load config vars
require('dotenv').load()

// load the things we need
var express = require('express')
var app = express()
var mysql = require('./config/mysql')
// models
import Menu from './models/menu'

app.use(express.static('assets'))
// set the view engine to ejs
app.set('view engine', 'ejs')

// index page 
app.get('/', async (req, res) => {
    
    var menuEntries = await Menu.getAllMenuEntries(mysql);
    console.log(menuEntries)
    res.render('pages/index', {
        'title' : 'Awesome!',
        'content': 'Lorem Ipsum',
        'menuEntries': menuEntries
    })
})

// about page 
app.get('/about', function(req, res) {
    res.render('pages/about')
});

app.listen(process.env.PORT)
console.log(`${process.env.PORT} is the magic port`)