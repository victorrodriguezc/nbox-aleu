var mysql = require('mysql');
var logger = require("/home/ec2-user/aelucoopbackend/db/log/logger.js");
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
	var query = "SELECT id_opcion FROM tb_tipo_via";
	con.query(query, function (err, result, fields) {
		if (err) {
		logger.log('error', 'Ocurrio el siguiente error: ' + err.message);
		return callback({"code":"500", "message":err.message});
		};
		logger.log('info', 'Se realizo correctamente el query: ' + query);
		return callback({"code":"200", "message":result});
				
	});

	con.end();

};
