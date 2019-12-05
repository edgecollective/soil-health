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


const decoder_divider = 6000

var paramList = ['temp','humid']

const num_params=paramList.length;


const base_url='https://edgecollective.farmos.net/farm/sensor/listener/'

const public_key='d064713c899f40eab78bb0e899ff58ac'
const private_key='4e2a489f053c5d762560402225933e9a'

app.post("/", function(req,response){
	response.status(200).send(req.body);

	//console.log(req.body);


	var bytes = req.body.data;

        if (req.body.data!=null) {

	console.log(req.body)

	var b = new Buffer(bytes,'base64');

	console.log(b);

	var json = decoder.decode(b, [decoder.unixtime, decoder.latLng], ['time', 'coords']);
	console.log(json);
	console.log(json.coords[0]);

	var rssi = -32;

	fs.appendFile('log.csv',rssi+','+json.coords[0]+','+json.coords[1]+'\n',function(err) {
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



