// load config vars
require('dotenv').load()

// load the things we need
var express = require('express')
var app = express()
var mysql = require('./config/mysql')
// models
import Menu from './models/menu'
import Page from './models/pages'

app.use(express.static('assets'))
// set the view engine to ejs
app.set('view engine', 'ejs')

// about page 
app.get('/about', async (req, res) => {
    var menuEntries = await Menu.getAllMenuEntries(mysql);
    res.render('pages/about')
});

// about page 
app.get('/*', async(req, res) => {
    var menuEntries = await Menu.getAllMenuEntries(mysql);
    // implement 404
    
    var pageId;
    (req.query.page == undefined)? (pageId = 1) : (pageId = req.query.page)

    var entry = menuEntries.find((elem) => {
        return (elem.url == req.path)? true : false
    })
    if(!entry) {
        res.render('pages/index', {
        'title' : '404 Requested File not found',
        'content': `The url you wanted to reach doesn't exist`,
        'menuEntries': menuEntries
        })

    } else {
        var page = new Page(mysql)
        

        if(await page.init(pageId)) {
            res.render('pages/index', {
                'title' : page.name,
                'content': 'Lorem Ipsum',
                'menuEntries': menuEntries
            })
        }
    }
});


app.listen(process.env.PORT)
console.log(`${process.env.PORT} is the magic port`)