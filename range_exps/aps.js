var fs = require("fs");
const hostname = 'localhost';
var port = 1337;
var express = require("express");
var request = require('request');
var bodyParser = require('body-parser');
var decoder = require('./decoder');
var app = express();
app.use(express.static(__dirname + "/public")); //use static files in ROOT/public folder

app.use(bodyParser.json())

const base_url='https://edgecollective.farmos.net/farm/sensor/listener/'

const public_key='d064713c899f40eab78bb0e899ff58ac'
const private_key='4e2a489f053c5d762560402225933e9a'

app.post("/", function(req,response){
	response.status(200).send(req.body);
	console.log(req.body.data);

	//var post_url=base_url+req.body.public_key+'?private_key='+req.body.private_key;
	//var post_url=base_url+public_key+'?private_key='+private_key;

    //console.log(post_url);

    //console.log(req.body.object.DecodeDataString)

    //var hex = req.body.object.DecodeDataHex.split(',')
    //console.log(hex)
    //var tempBytes = new Buffer(hex)
    //var params = decoder.decode(tempBytes,[decoder.temperature,decoder.humidity],['temp','humidity']);


    //console.log(params)
	//var myvar = String('hello');

	//console.log(myvar);

        if (req.body.data!=null) {
	fs.appendFile('log.csv',req.body.data+'\n',function(err) {
		if (err) {
			console.log('error');
		} else {
			console.log('wrote to log file');
		}
	});
	}
});

app.get("/", function(req, response){ //root dir

    response.status(200).send(req.query.public_key);
    
    console.log(req.query.public_key);
    console.log(req.query.private_key);
    console.log(req.query.temp);
    console.log(req.query.moisture);
    //console.log(Object.keys(req.params).length);
    //console.log(req.baseUrl);
    var post_url=base_url+req.query.public_key+'?private_key='+req.query.private_key;
    console.log(post_url);

request.post(
    post_url,
    { json: { 'temp': req.query.temp,'moisture':req.query.moisture } },
    function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body);
        }
    }
);


});

app.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
//app.listen(port, hostname);



