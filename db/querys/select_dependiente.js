var mysql = require('mysql');
var logger = require("/home/ec2-user/aelucoopbackend/db/log/logger.js");
var dbconfig = require('/home/ec2-user/aelucoopbackend/db/config_db/config_db.js');

exports.select_dependiente = function(callback){

	var con = mysql.createConnection({
	  host: dbconfig.host,
	  user: dbconfig.user,
	  password: dbconfig.password,
	  database: dbconfig.database
	});
	
	con.connect(function(err) {
	  if (err) throw err;
	});

	con.query("SELECT * FROM tb_dependiente", function (err, result, fields) {
		logger.log('info', 'Se realizo correctamente el query');
		return callback(err, result);
	});

	con.end();

};