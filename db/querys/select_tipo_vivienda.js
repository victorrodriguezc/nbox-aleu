var mysql = require('mysql');
var logger = require("/home/ec2-user/aelucoopbackend/db/log/logger.js");
var dbconfig = require('/home/ec2-user/aelucoopbackend/db/config_db/config_db.js');

exports.select_tipo_vivienda = function(callback){

	var con = mysql.createConnection({
		host: dbconfig.host,
		user: dbconfig.user,
		password: dbconfig.password,
		database: dbconfig.database
	});
	
	con.connect(function(err) {
		if (err) throw err;
	});
	
	logger.log('info', 'Se va a realizar un select a la tabla tb_tipo_vivienda');

	con.query("SELECT * FROM tb_tipo_vivienda", function (err, result, fields) {
		logger.log('info', 'Se realizo correctamente el query');
		return callback(err, result);
	});

	con.end();

};
