var fs = require("fs");
const hostname = 'localhost';
var port = 1337;
var express = require("express");
var request = require('request');
var bodyParser = require('body-parser');
//var decoder = require('./decoder');
var app = express();


app.use(express.static(__dirname + "/public")); //use static files in ROOT/public folder


app.use(bodyParser.json())


const decoder_divider = 6000

var paramList = ['temp','humid']

const num_params=paramList.length;

/*
function Decoder(bytes,num_params) {

	var decoded={};

	for (i=0; i<num_params;i++) {
		j=i*2
		rawValue=bytes[j]+bytes[j+1]*256;
		thisnum = sflt162f(rawValue) * decoder_divider;
		thisnum_rounded=Math.round(thisnum * 1e2)/1e2;
		decoded[paramList[i]] = thisnum_rounded;
	}
	return decoded;
}
*/


function Decoder(bytes, port) {
	  // Decode an uplink message from a buffer
	//   // (array) of bytes to an object of fields.
     var decoded = {};
       
         // temperature 
          
            rawTemp = bytes[0] + bytes[1] * 256;
              
            decoded.degreesC = sflt162f(rawTemp) * 100;
                  
            // humidity 
            rawHumid = bytes[2] + bytes[3] * 256;
            decoded.humidity = sflt162f(rawHumid) * 100;
                        
            return decoded;
           }


function gps_decoder(b,port) {

         var lat = (b[0] | b[1]<<8 | b[2]<<16 | (b[2] & 0x80 ? 0xFF<<24 : 0)) / 10000;
	 var lon = (b[3] | b[4]<<8 | b[5]<<16 | (b[5] & 0x80 ? 0xFF<<24 : 0)) / 10000;
	 var alt = (b[6] | b[7]<<8 | (b[7] & 0x80 ? 0xFF<<16 : 0));
	 var hdop = b[8] / 100;
	 return {
		      latitude: lat,
		      longitude: lon,
		      altitude: alt,
		      hdop: hdop
		  };

}


function sflt162f(rawSflt16)
	{
	rawSflt16 &= 0xFFFF;
	 
		// special case minus zero:
	 	if (rawSflt16 == 0x8000)
	 			return -0.0;

	var sSign = ((rawSflt16 & 0x8000) != 0) ? -1 : 1;

		var exp1 = (rawSflt16 >> 11) & 0xF;
	var mant1 = (rawSflt16 & 0x7FF) / 2048.0;
	var f_unscaled = sSign * mant1 * Math.pow(2, exp1 - 15);
	 
		return f_unscaled;
	}



const base_url='https://edgecollective.farmos.net/farm/sensor/listener/'

const public_key='d064713c899f40eab78bb0e899ff58ac'
const private_key='4e2a489f053c5d762560402225933e9a'

app.post("/", function(req,response){
	response.status(200).send(req.body);

	//console.log(req.body);


	var bytes = req.body.data;

        if (req.body.data!=null) {

	var b = new Buffer(bytes,'base64');

	console.log(b);

	console.log(gps_decoder(b,2));

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



