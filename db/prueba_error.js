var mysql = require('mysql');
var dbconfig = require('/home/ec2-user/aelucoopbackend/db/config_db/config_db.js');

exports.select_tipo_via = function(callback){

	var con = mysql.createConnection({
	  host: dbconfig.host,
	  user: dbconfig.user,
	  password: dbconfig.password,
	  database: dbconfig.database
	});
	
	con.connect(function(err) {
	  if (err) throw err;
	});

	con.query("SELECT id, type FROM tb_tipo_via", function (err, result, fields) {
		if (err) {
		console.log("Error encontrado: " + err);
		console.log("Resultado encontrado: " + result);
		return callback(err);	
		};
		
		return callback(result);
	});

	con.end();

};
