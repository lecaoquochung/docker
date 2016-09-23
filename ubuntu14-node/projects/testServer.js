var express = require('express');

var app = express();

app.get('/', function(req, res){
	res.send('Test Server');
});

app.listen(8000, function(){
	console.log('Server started on port 8000');
});
