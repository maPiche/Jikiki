const http = require('http')
const port = 8888
var url = require("url");
var fs = require("fs");
var path = require("path");
const { Pool, Client } = require('pg')
const pool = new Pool({
  connectionString: "postgres://xoepjays:8hX9Fc9PBByRfN4OI0Kde2GWAZUGPTFj@baasu.db.elephantsql.com:5432/xoepjays"
})
var body=[];



const requestHandler = (request, response) => {
    //console.log(request.url);

    var uri = url.parse(request.url).pathname
    , filename = path.join(process.cwd(), uri);


    if(request.method === 'POST'){
        body=[];
        request.on('data', (chunk) => 
        {
            body.push(chunk);
            
        }).on('end', () => 
        {
            //query le serveur pour affichier tous les items
            if(request.url==='/displayAllItems'){
                pool.query('select offers.itemid, items.item_name, unitprice, village from offers, items, clients where offers.itemid=items.item_id and offers.clientid=clients.id order by offers.itemid', (err, res) => { 
                    let result = res;  
                    //console.log(res.rows)             
                    response.writeHead(200, {"Context-Type" : "application/json"});
                    response.write(JSON.stringify({result}));
                    response.end();
                    if(err){
                        console.log(err);
                        let result="";
                        response.writeHead(200, {"Context-Type" : "application/json"});
                        response.write(JSON.stringify({result: result}));
                        response.end();
                    }
                })         
            }
            //Pour les requets simples 
            if(request.url==='/displayclients')
            {         
                var table=request.url.split("/display")[1];             
                console.log(table)
                pool.query('SELECT * from '+table, (err, res) => { 
                    let result = res;  
                    //console.log(res.rows)             
                    response.writeHead(200, {"Context-Type" : "application/json"});
                    response.write(JSON.stringify({result}));
                    response.end();
                    if(err){
                        console.log(err);
                        let result="";
                        response.writeHead(200, {"Context-Type" : "application/json"});
                        response.write(JSON.stringify({result: result}));
                        response.end();
                    }
                })                  
            }
            if(request.url==='/displayoffers')
            {         
                var table=request.url.split("/display")[1];             
                console.log(table)
                pool.query('SELECT * from '+table+' order by itemid', (err, res) => { 
                    let result = res;  
                    //console.log(res.rows)             
                    response.writeHead(200, {"Context-Type" : "application/json"});
                    response.write(JSON.stringify({result}));
                    response.end();
                    if(err){
                        console.log(err);
                        let result="";
                        response.writeHead(200, {"Context-Type" : "application/json"});
                        response.write(JSON.stringify({result: result}));
                        response.end();
                    }
                })                  
            }

            if(request.url==='/displayanimals'){
            	var table=request.url.split("/display")[1];
                console.log(table)
                pool.query('select title,item_name,utility,sexe,unitprice,village from (select * from '+ table+', items,offers,clients where '+table+'.id=item_id and item_id=offers.itemid and offers.clientid=clients.id) as r1', (err, res) => { 
                    let result = res;              
                    response.writeHead(200, {"Context-Type" : "application/json"});
                    response.write(JSON.stringify({result}));
                    response.end();
                    if(err){
                        console.log(err);
                        let result="";
                        response.writeHead(200, {"Context-Type" : "application/json"});
                        response.write(JSON.stringify({result: result}));
                        response.end();
                    }
                })       
            }


            if(request.url==='/displaypotions'){
            	var table=request.url.split("/display")[1];
                console.log(table)
                pool.query('select title,item_name,effect,unitprice,village from (select * from '+ table+', items,offers,clients where '+table+'.id=item_id and item_id=offers.itemid and offers.clientid=clients.id) as r1', (err, res) => { 
                    let result = res;              
                    response.writeHead(200, {"Context-Type" : "application/json"});
                    response.write(JSON.stringify({result}));
                    response.end();
                    if(err){
                        console.log(err);
                        let result="";
                        response.writeHead(200, {"Context-Type" : "application/json"});
                        response.write(JSON.stringify({result: result}));
                        response.end();
                    }
                })       
            }

            if(request.url==='/displayarmors' || request.url==='/displayweapons'){
            	var table=request.url.split("/display")[1];
                console.log(table)
                pool.query('select title,item_name,material,unitprice,village from (select * from '+ table+', items,offers,clients where '+table+'.id=item_id and item_id=offers.itemid and offers.clientid=clients.id) as r1', (err, res) => { 
                    let result = res;              
                    response.writeHead(200, {"Context-Type" : "application/json"});
                    response.write(JSON.stringify({result}));
                    response.end();
                    if(err){
                        console.log(err);
                        let result="";
                        response.writeHead(200, {"Context-Type" : "application/json"});
                        response.write(JSON.stringify({result: result}));
                        response.end();
                    }
                })         
            }



            //soccupe de query le server pour remplie les select villages.
            if(request.url==='/displayVillages'){
                pool.query('select name from villages', (err, res) => { 
                    let result = res.rows;              
                    response.writeHead(200, {"Context-Type" : "application/json"});
                    response.write(JSON.stringify({result}));
                    response.end();
                    if(err){
                        console.log(err);
                        let result="";
                        response.writeHead(200, {"Context-Type" : "application/json"});
                        response.write(JSON.stringify({result: result}));
                        response.end();
                    }
                })         
            }

            //soccupe de query le server pour la distance entre les villes
            if(request.url==='/distanceCalc'){
                body = decodeURI(body.toString());
                body=body.split("&");
                var village1 = body[0].replace("village1=","");
                var village2 = body[1].replace("village2=","");
                //on a des + for some reasons dans les strings...
                village1= village1.replace("+"," ");
                village2=village2.replace("+", " ");
                var queryDistance = "select sqrt(power(abs((select coordx from villages where name='"+village1+
                "')-(select coordx from villages where name='"+village2+
                "')),2)+power(abs((select coordy from villages where name='"+village1+"')-(select coordy from villages where name='"+village2+"')),2))";
                pool.query(queryDistance, (err, res) => { 
                    let result = res.rows;              
                    response.writeHead(200, {"Context-Type" : "application/json"});
                    response.write(JSON.stringify({result}));
                    response.end();
                    if(err){
                        console.log(err);
                        let result="";
                        response.writeHead(200, {"Context-Type" : "application/json"});
                        response.write(JSON.stringify({result: result}));
                        response.end();
                    }
                })         
            }
           

            

        });

}

else{
    fs.exists(filename, function(exists) {
        if(!exists) 
        {
            response.writeHead(404, {"Content-Type": "text/plain"});
            response.write("404 Not Found\n");
            response.end();
            return;
        }

        if (fs.statSync(filename).isDirectory()) filename += '/index.html';

        fs.readFile(filename, "binary", function(err, file) {
            if(err) 
            {        
                response.writeHead(500, {"Content-Type": "text/plain"});
                response.write(err + "\n");
                response.end();
                return;
            }

            response.writeHead(200);
            response.write(file, "binary");
            response.end();
        });
    });
}

}

const server = http.createServer(requestHandler)

server.listen(port, (err) => {
  if (err) {
    return console.log('something bad happened', err)
}

console.log(`server is listening on ${port}`)
});