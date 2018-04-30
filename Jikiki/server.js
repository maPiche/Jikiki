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


var bestSeller ="with itemSells as" 
+"("
    +"select sum(buy.quantity) as qte, itemid, avg(buy.price / buy.quantity) as avg_Buy_Price, avg(offers.unitprice) avg_Offer_Price" 
    +" from buy, offers where buy.offerid=offers.id" 
    +" group by (itemid)"
+")"
+" select item_name, avg_Buy_Price, avg_Offer_Price, clientId as client_id, clientBestSellers.name as client_name, village as village_name, coordx as village_coord_x, coordy as village_coord_y"
+" from (select * "
        +" from (select item_name, clientId, bestSellers.itemid, avg_Buy_Price, avg_Offer_Price "
                +" from (select item_name, itemid, avg_Buy_Price, avg_Offer_Price "
                     +" from items, (select * "
                                   +" from itemSells "
                                   +" where itemSells.qte >= ALL (select itemSells.qte from itemSells)"
                                  +") as bestSellers"
                      +" where items.item_id=bestSellers.itemid) as bestSellers, offers"
                +" where offers.itemid=bestSellers.itemid) as clientBestSellers, clients"
        +" where clients.id=clientBestSellers.clientId) as clientBestSellers, villages"
+" where villages.name=clientBestSellers.village"



app.post('/displaybestseller', function (req, res) {
    pool.query(bestSeller, (err, response) => {
        res.send(response)})                
});

var cheapArmor ="select type, material, unitprice, village, coordx, coordy from("
    +" select armors.type as type, unitprice, armors.material as material, clients.village as village, "
           +"villages.coordx as coordx, villages.coordy as coordy,"
           +" ROW_NUMBER() over(partition by armors.type"
                               +" order by offers.unitprice ASC) as rn"
    +" from armors, offers, clients, villages"
    +" where offers.itemid = armors.id and offers.clientid = clients.id and villages.name = clients.village"
+") as a"
+" where rn = 1 order by village"


app.post('/displaycheaparmor', function (req, res) {
    pool.query(cheapArmor, (err, response) => {
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

