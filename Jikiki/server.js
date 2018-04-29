var fs = require("fs");
var path = require("path");
const { Pool, Client } = require('pg')
const pool = new Pool({
  connectionString: "postgres://xoepjays:8hX9Fc9PBByRfN4OI0Kde2GWAZUGPTFj@baasu.db.elephantsql.com:5432/xoepjays"
})

const express = require('express')
const bodyParser = require('body-parser');
const app = express()

app.use(express.static(__dirname + '/public'));
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json('application/json'));

app.get('/', function (req, res) {
    res.sendFile(path.join(__dirname+'/index.html'))
    
})



app.post('/displayAllItems', function (req, res) {
    pool.query('select offers.itemid, items.item_name, unitprice, village from offers, items, clients where offers.itemid=items.item_id and offers.clientid=clients.id order by offers.itemid', (err, response) => { 
        res.send(response)}) 
});

app.post('/displayVillages', function (req, res) {
    pool.query('select name from villages', (err, response) => { 
        res.send(response)}); 
});

app.post('/displayclients', function (req, res) {
   pool.query('select * from clients', (err, response) => { 
       res.send(response)});           
});

app.post('/displayoffers', function (req, res) {
   pool.query('SELECT * from offers order by itemid', (err, response) => { 
    res.send(response)})                     
});

app.post('/displayanimals', function (req, res) {
    pool.query('select title,item_name,utility,sexe,unitprice,village from (select * from animals, items,offers,clients where animals.id=item_id and item_id=offers.itemid and offers.clientid=clients.id) as r1', (err, response) => { 
        res.send(response)})       
});

app.post('/displaypotions', function (req, res) {
    pool.query('select title,item_name,effect,unitprice,village from (select * from potions, items,offers,clients where potions.id=item_id and item_id=offers.itemid and offers.clientid=clients.id) as r1', (err, response) => { 
        res.send(response)})              
});


app.post('/displayarmors', function (req, res) {
    pool.query('select title,item_name,material,unitprice,village from (select * from armors, items,offers,clients where armors.id=item_id and item_id=offers.itemid and offers.clientid=clients.id) as r1', (err, response) => { 
        res.send(response)})                
});

app.post('/displayweapons', function (req, res) {
    pool.query('select title,item_name,material,unitprice,village from (select * from weapons, items,offers,clients where weapons.id=item_id and item_id=offers.itemid and offers.clientid=clients.id) as r1', (err, response) => { 
        res.send(response)})                
});

app.post('/distanceCalc', function (req, res) {
    var body = req.body;
    var village1=body.village1;
    var village2=body.village2; 
    var queryDistance = 
    "select sqrt(power(abs((select coordx from villages where name='"+village1+
    "')-(select coordx from villages where name='"+village2+
    "')),2)+power(abs((select coordy from villages where name='"+village1
    +"')-(select coordy from villages where name='"+village2+"')),2))";
    pool.query(queryDistance, (err, response) => { 
        res.send(response);
    })                    
});


app.listen(8888, () => console.log('Now listening to 8888'));

