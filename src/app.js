var http = require('http');
var user = require('./user.js');

http.createServer(function(req, res){
  user.get("Wilson", function(id){
    res.writeHead(200, {'Content-Type': 'text/plain'});

    res.end('Hello' + id);
  });

}).listen(1555, '127.0.0.1');
