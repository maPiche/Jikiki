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
			/*
	  		body = Buffer.concat(body).toString();
	  		body=body.split("&");
	  		var name = body[0].replace("name=","");
	  		var plat = body[1].replace("platform=","");
	  		//console.log("new body", body);
	  		*/
	  		if(request.url==='/displayClients')
			{

				pool.query('SELECT * from client', (err, res) => { 
  					let result = res.rows; 	
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
			/*
			if(request.url == '/saves')
			{
				//loading from json to minimise requests to stats api
				console.log("loading from buffer");
				var savePath='./saves/'+name+'.json'
	    		var content = fs.readFileSync(savePath);
	    		let result = JSON.parse(content);
	       		response.writeHead(200, {"Context-Type" : "application/json"});
	       		response.write(JSON.stringify(
	       		{
	       			result: result
	      		}));
	       		response.end();
			}
		  		*/
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
