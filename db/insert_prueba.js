var mysql = require('mysql');
var dbconfig = require('./config_db.js');

exports.prueba_insert = function(input, callback){

var response = 0;

var con = mysql.createConnection({
	host: dbconfig.host,
	user: dbconfig.user,
	password: dbconfig.password,
	database: dbconfig.database
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});

 var sql = "INSERT INTO tb_prueba (id, nombre, apellido) VALUES (?, ?, ?)";
 con.query(sql, [input.id, input.nombre, input.apellido], function (err, result) {
   if (err) throw err;
   console.log("1 record inserted");
   response = 1;
   return callback(response);
 });
 
 con.end();
 
}; 
