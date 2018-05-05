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

var lastRequest="";
var compteur=0;




app.post('/displayAllItems', function (req, res) {
	lastRequest='select offers.itemid, items.item_name, unitprice, village from offers, items, clients where offers.itemid=items.item_id and offers.clientid=clients.id'
	pool.query(lastRequest, (err, response) => { 
		res.send(response)}) 
});

app.post('/displayVillages', function (req, res) {
	pool.query('select name from villages', (err, response) => { 
		res.send(response)}); 
});

app.post('/displayclients', function (req, res) {
	lastRequest='select * from clients';
	pool.query(lastRequest, (err, response) => { 
		res.send(response)});           
});

app.post('/displayoffers', function (req, res) {
	lastRequest='SELECT * from offers';
	pool.query(lastRequest, (err, response) => { 
		res.send(response)})                     
});


var animals="select title as offer, item_name as item, utility, sexe, unitprice, village "
			+"from clients, (select clientid, title, unitprice, itemsWithName.* "
						+"from offers, (select item_id, item_name, utility, sexe "
										+"from animals, items "
										+"where animals.id=items.item_id) itemsWithName "
						+"where offers.itemid=itemsWithName.item_id) itemsWithNameAndClient "
			+"where clients.id=clientid"

app.post('/displayanimals', function (req, res) {
	lastRequest=animals
	pool.query(lastRequest, (err, response) => { 
		res.send(response)})       
});


var potions=  "select title as offer, item_name as item, effect, unitprice, village "
			+"from clients, (select clientid, title, unitprice, itemsWithName.* "
						+"from offers, (select item_id, item_name, effect "
										+"from potions, items "
										+"where potions.id=items.item_id) itemsWithName "
						+"where offers.itemid=itemsWithName.item_id) itemsWithNameAndClient "
			+"where clients.id=clientid"

app.post('/displaypotions', function (req, res) {
	lastRequest='select title,item_name,effect,unitprice,village from (select * from potions, items,offers,clients where potions.id=item_id and item_id=offers.itemid and offers.clientid=clients.id) as r1'
	pool.query(lastRequest, (err, response) => { 
		res.send(response)})              
});

var armors=  "select title as offer, item_name as item, type, material, unitprice, village "
			+"from clients, (select clientid, title, unitprice, itemsWithName.* "
						+"from offers, (select item_id, item_name, type, material "
										+"from armors, items "
										+"where armors.id=items.item_id) itemsWithName "
						+"where offers.itemid=itemsWithName.item_id) itemsWithNameAndClient "
			+"where clients.id=clientid"

app.post('/displayarmors', function (req, res) {
	lastRequest=armors
	pool.query(lastRequest, (err, response) => { 
		res.send(response)})                
});


var weapons="select title as offer, item_name as item, material, unitprice, village "
			+"from clients, (select clientid, title, unitprice, itemsWithName.* "
						+"from offers, (select item_id, item_name, material "
										+"from weapons, items "
										+"where weapons.id=items.item_id) itemsWithName "
						+"where offers.itemid=itemsWithName.item_id) itemsWithNameAndClient "
			+"where clients.id=clientid"

app.post('/displayweapons', function (req, res) {
	lastRequest=weapons
	pool.query(lastRequest, (err, response) => { 
		res.send(response)})                
});

app.post('/displayitemsedoras', function (req, res) {
	lastRequest="select items.item_name, unitprice, village from offers, items, clients where offers.itemid=items.item_id and offers.clientid=clients.id and village='Edoras'"
	pool.query(lastRequest, (err, response) => { 
		res.send(response)})                
});
var healingPots="select item_name,effect, unitprice,quantity from("
	+"select potions.id, r1.item_name, effect from"
	+"(select items.item_id, items.item_name from offers, items, clients"
		+" where offers.itemid=items.item_id and"
		+" offers.clientid=clients.id and"
		+" clients.village='Theramore' and offers.available=TRUE) as r1, potions"
	+" where potions.id=r1.item_id and effect='Healing'"
+")as r2, offers where offers.itemid=r2.id"

app.post('/displayhealingpots', function (req, res) {
	lastRequest=healingPots;
	pool.query(lastRequest, (err, response) => { 
		res.send(response)})                
});

var cheapestMace="With maceOffers as (select itemid, item_name, title, unitprice, clientid "
									+"from offers, items "
									+"where items.item_id=offers.itemid and items.item_name='Mace' and available=TRUE) "
+"select item_name as item, material, title as offer, unitprice, offersWithClients.name as seller, village, coordx, coordy "
+"from villages, (select * "
				+"from clients, (select item_name, title, unitprice, clientid, material "
								+"from weapons, (select * from maceOffers where unitprice = (select min(unitprice) from maceOffers)) cheapestOffers "
								+"where weapons.id=cheapestOffers.itemid) offersWithMaterial "
				+"where clients.id=clientid) offersWithClients "
+"where villages.name=village"

app.post('/displaycheapestmace', function (req, res) {
	lastRequest=cheapestMace;
	pool.query(lastRequest, (err, response) => { 
		res.send(response)})                
});

var outOfStocks="with offersOutOfStock as (select offerid, availableOffers.itemid, availableOffers.clientid "
										 +"from buy, (select * from offers where available=TRUE) availableOffers "
										 +"where buy.offerid = availableOffers.id "
										 +"group by offerid, availableOffers.quantity, availableOffers.itemid, availableOffers.clientid "
										 +"having sum(buy.quantity) = availableOffers.quantity) "
+"select offerid, item_name as item, offersWithNameAndSeller.name as seller, village, coordx, coordy "
+"from villages, (select * "
				+"from clients, (select offerid, item_name, clientid "
								+"from items, offersOutOfStock "
								+"where offersOutOfStock.itemid = items.item_id) offersWithName "
				+"where clients.id = clientid) offersWithNameAndSeller "
+"where villages.name = village"

app.post('/displayoutofstock', function (req, res) {
	lastRequest=outOfStocks;
	pool.query(lastRequest, (err, response) => { 
		res.send(response)})                
});


app.post('/customRequest', function (req, res) {
	lastRequest=req.body.input
	pool.query(lastRequest, (err, response) => { 
		res.send(response)})                
});





var bestSeller ="with itemSells as" 
+"("
+"select sum(buy.quantity) as qte, itemid, avg(buy.price / buy.quantity) as avg_Buy_Price, avg(offers.unitprice) avg_Offer_Price" 
+" from buy, offers where buy.offerid=offers.id" 
+" group by (itemid)"
+")"
+" select item_name as item, avg_Buy_Price, avg_Offer_Price, clientId as seller_id, clientBestSellers.name as seller, village, coordx, coordy "
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
	lastRequest=bestSeller;
	pool.query(lastRequest, (err, response) => {
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
+" where rn = 1"


app.post('/displaycheaparmor', function (req, res) {
	lastRequest=cheapArmor
	pool.query(lastRequest, (err, response) => {
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



app.post('/callOrder', function(req,res){
	var key=req.body.input;
	
	if(compteur%2==0){
		pool.query(lastRequest+" ORDER BY "+key, (err, response) => {
			compteur++;
			res.send(response)}) 
	}else{
		pool.query(lastRequest+" ORDER BY "+key+" desc;", (err, response) => {
			compteur++;
			res.send(response)}) 
	}
	

})


app.listen(8080, () => console.log('Now listening to 8080'));

