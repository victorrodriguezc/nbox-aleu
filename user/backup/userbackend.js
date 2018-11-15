var http = require('http');

http.createServer(function(request, response){
  response.writeHead(200, {'Content-type':'text/plain'});
  response.write('Hello Node JS Server Response\n');
  response.end( );

}).listen(3501);
