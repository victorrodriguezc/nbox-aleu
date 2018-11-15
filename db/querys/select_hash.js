var mysql = require('mysql');
var logger = require("/home/ec2-user/aelucoopbackend/db/log/logger.js");
var dbconfig = require('/home/ec2-user/aelucoopbackend/db/config_db/config_db.js');

exports.select_hash = function(input, callback){

	var con = mysql.createConnection({
		host: dbconfig.host,
		user: dbconfig.user,
		password: dbconfig.password,
		database: dbconfig.database
	});
	
	con.connect(function(err) {
		if (err) throw err;
	});

	logger.log('info', 'Se va a realizar un select a la tabla tb_datos_personales');
	
	con.query("SELECT dni FROM tb_datos_personales where hash = ?", [input], function (err, result, fields) {
		logger.log('info', 'Se realizo correctamente el query');
		return callback(err, result);
	});

	con.end();

};
