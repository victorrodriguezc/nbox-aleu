var mysql = require('mysql');
var logger = require("/home/ec2-user/aelucoopbackend/db/log/logger.js");
var dbconfig = require('/home/ec2-user/aelucoopbackend/db/config_db/config_db.js');

exports.insert_financiero = function(input, callback){

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

	logger.log('info', 'Se realizara la insercion en la tabla tb_financiero con la siguiente data: ' + input);

	var sql = "INSERT INTO tb_financiero (id_postulante, banco, tipo_cuenta, linea_credito, linea_credito_utilizada) VALUES (?, ?, ?, ?, ?)";
	con.query(sql, [input.id_postulante, input.banco, input.tipo_cuenta, input.linea_credito, input.lineo_credito_utilizada], function (err, result) {
		logger.log('info', 'Se inserto correctamente el query: ' + sql);
		return callback(err, result);
	});
 
	con.end();
 
}; 