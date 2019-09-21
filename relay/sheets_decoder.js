var fs = require("fs");
const hostname = 'localhost';
var port = 1337;
var express = require("express");
var request = require('request');
var bodyParser = require('body-parser');
//var decoder = require('./decoder');
var app = express();

var GoogleSpreadsheet = require('google-spreadsheet');
var creds = require('./client_secret.json');
var doc = new GoogleSpreadsheet('1mSiGSLEm2tDszwusTLR6m4202C65lOnShvEhJeErdDE');


app.use(express.static(__dirname + "/public")); //use static files in ROOT/public folder

app.use(bodyParser.json())

const base_url='https://edgecollective.farmos.net/farm/sensor/listener/'

const public_key='e021ddc291fd13a78770b029cbb4d312'
const private_key='8d3487c7e82269eddaf8162a938e7901'


const decoder_divider = 6000

var paramList = ['Volumetric Water Content (%)','Soil Temp (C)','Soil Permittivity','Soil Bulk EC (uS/cm)','Soil Pore Water EC (uS/cm)', 'Battery Voltage (V)']

var sheetParams = ["vol_water","temp","permit","bulk","pore","battery"]

const num_params=paramList.length



// For todays date;
Date.prototype.today = function () { 
    return (((this.getMonth()+1) < 10)?"0":"") + (this.getMonth()+1) + "/" + ((this.getDate() < 10)?"0":"") + this.getDate() +"/"+ this.getFullYear();
}

// For the time now
Date.prototype.timeNow = function () {
     return ((this.getHours() < 10)?"0":"") + this.getHours() +":"+ ((this.getMinutes() < 10)?"0":"") + this.getMinutes() +":"+ ((this.getSeconds() < 10)?"0":"") + this.getSeconds();
}

console.log("length=",num_params)
//var paramList = ['a','b','c','d','e']

//https://learn.adafruit.com/the-things-network-for-feather/payload-decoding

//function Decoder(bytes, port) {
function Decoder(bytes,num_params) {
    // Decode an uplink message from a buffer
    // (array) of bytes to an object of fields.
    var decoded = {};
    
    for (i=0;i<num_params;i++) {
    // temperature 
    j=i*2;
    //console.log("Bytes 0", bytes[0])
    //console.log("Bytes 1", bytes[1])

    rawValue = bytes[j] + bytes[j+1] * 256;
    
    //var keyname = "param"+i.toString()
    //console.log(keyname)

    //decoded.keyname = sflt162f(rawValue) * 500;
    //decoded[keyname] = sflt162f(rawValue) * 500;
    thisnum = sflt162f(rawValue) * decoder_divider;
    thisnum_rounded = Math.round(thisnum * 1e2)/1e2;

    decoded[paramList[i]] = thisnum_rounded
    
    
}
    return decoded;
}

  function Sheet_Decoder(bytes,num_params) {
    // Decode an uplink message from a buffer
    // (array) of bytes to an object of fields.
    var decoded = {};
    
    for (i=0;i<num_params;i++) {
    // temperature 
    j=i*2;
    //console.log("Bytes 0", bytes[0])
    //console.log("Bytes 1", bytes[1])

    rawValue = bytes[j] + bytes[j+1] * 256;
    
    //var keyname = "param"+i.toString()
    //console.log(keyname)

    //decoded.keyname = sflt162f(rawValue) * 500;
    //decoded[keyname] = sflt162f(rawValue) * 500;
    thisnum = sflt162f(rawValue) * decoder_divider;
    thisnum_rounded = Math.round(thisnum * 1e2)/1e2;

    decoded[sheetParams[i]] = thisnum_rounded
    
    
}
    return decoded;
}

  function sflt162f(rawSflt16)
	{
	// rawSflt16 is the 2-byte number decoded from wherever;
	// it's in range 0..0xFFFF
	// bit 15 is the sign bit
	// bits 14..11 are the exponent
	// bits 10..0 are the the mantissa. Unlike IEEE format, 
	// 	the msb is transmitted; this means that numbers
	//	might not be normalized, but makes coding for
	//	underflow easier.
	// As with IEEE format, negative zero is possible, so
	// we special-case that in hopes that JavaScript will
	// also cooperate.
	//
	// The result is a number in the open interval (-1.0, 1.0);
	// 
	
	// throw away high bits for repeatability.
	rawSflt16 &= 0xFFFF;
 
	// special case minus zero:
	if (rawSflt16 == 0x8000)
		return -0.0;
 
	// extract the sign.
	var sSign = ((rawSflt16 & 0x8000) != 0) ? -1 : 1;
	
	// extract the exponent
	var exp1 = (rawSflt16 >> 11) & 0xF;
 
	// extract the "mantissa" (the fractional part)
	var mant1 = (rawSflt16 & 0x7FF) / 2048.0;
 
	// convert back to a floating point number. We hope 
	// that Math.pow(2, k) is handled efficiently by
	// the JS interpreter! If this is time critical code,
	// you can replace by a suitable shift and divide.
	var f_unscaled = sSign * mant1 * Math.pow(2, exp1 - 15);
 
	return f_unscaled;
    }

mybytes = Buffer([0x7f,0x6d,0xd0,0x5d,0x1d,0x6c,0x48,0x75,0xa0,0x76])


/// Test code

//var theDate = new Date(Date.now() * 1000);
//dateString = theDate.toGMTString();
//console.log(dateString)
//console.log(result)


app.post("/", function(req,response){
	response.status(200).send(req.body);
	//console.log(req.body.temp);

	//var post_url=base_url+req.body.public_key+'?private_key='+req.body.private_key;
	var post_url=base_url+public_key+'?private_key='+private_key;

    console.log(post_url);

    //console.log(req.body.object.DecodeDataString)

    var hex = req.body.object.DecodeDataHex.split(',')
    console.log(hex)
    //var tempBytes = new Buffer(hex)
    //var params = decoder.decode(tempBytes,[decoder.temperature,decoder.humidity],['temp','humidity']);

    var mybytes = new Buffer(hex)
    var myobject = Decoder(mybytes,num_params)
    //var myjson = JSON.stringify(myobject)

    console.log(myobject)
   
    // post to Google Sheets
    var sheet_object = Sheet_Decoder(mybytes,num_params)

    var d = new Date();
    var datetime = d.today() + " " + d.timeNow();
   
    sheet_object["timestamp"]=datetime;
    console.log(sheet_object)

    doc.useServiceAccountAuth(creds, function (err) {

        // Get all of the rows from the spreadsheet.
        //doc.getRows(1, function (err, rows) {
         // console.log(rows);
        //});
      
        doc.addRow(1, sheet_object, function(err) {
          if(err) {
            console.log(err);
          }
          else {
              console.log("post to sheets worked.");
          }
        });
      
      });

      


	request.post(
    post_url,
    //{ json: { 'temp': 23.,'moisture':32. } },
    { json: myobject },  
    function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body);
        }
    }
);


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


