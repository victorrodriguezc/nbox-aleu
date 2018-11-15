var mysql = require('mysql');
var logger = require("/home/ec2-user/aelucoopbackend/db/log/logger.js");
var dbconfig = require('./config_db.js');

exports.insert_observaciones = function(input, callback){

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

	logger.log('info', 'Se realizara la insercion en la tabla tb_observaciones con la siguiente data: ' + input);

	var sql = "INSERT INTO tb_observaciones (id_observacion, id_postulante, usuario, tipo_observacion, observacion) VALUES (?, ?, ?, ?, ?)";
	con.query(sql, [input.id_observacion, input.id_postulante, input.usuario, input.tipo_observacion, input.observacion], function (err, result) {
		logger.log('info', 'Se inserto correctamente el query: ' + sql);
		return callback(err, result);
	});
 
	con.end();
 
}; 