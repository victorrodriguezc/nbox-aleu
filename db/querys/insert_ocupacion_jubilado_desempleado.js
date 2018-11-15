var mysql = require('mysql');
var logger = require("/home/ec2-user/aelucoopbackend/db/log/logger.js");
var dbconfig = require('/home/ec2-user/aelucoopbackend/db/config_db/config_db.js');

exports.insert_ocupacion_jubilado_desempleado = function(input, callback){

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

	logger.log('info', 'Se realizara la insercion en la tabla tb_ocupacion_jubilado_desempleado con la siguiente data: ' + input);

	var sql = "INSERT INTO tb_ocupacion_jubilado_desempleado (id_postulante) VALUES (?)";
	con.query(sql, [input.id_postulante], function (err, result) {
		logger.log('info', 'Se inserto correctamente el query: ' + sql);
		return callback(err, result);
	});
 
	con.end();
 
}; 
