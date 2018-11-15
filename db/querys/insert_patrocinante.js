var mysql = require('mysql');
var logger = require("/home/ec2-user/aelucoopbackend/db/log/logger.js");
var dbconfig = require('./config_db.js');

exports.insert_patrocinante = function(input, callback){

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

	logger.log('info', 'Se realizara la insercion en la tabla tb_patrocinante con la siguiente data: ' + input);

	var sql = "INSERT INTO tb_patrocinante (id_patrocinante, id_postulante, dni, nombres, apellido_paterno, apellido_materno, celular) VALUES (?, ?, ?, ?, ?, ?, ?)";
	con.query(sql, [input.id_patrocinante, input.id_postulante, input.dni, input.nombres, input.apellido_paterno, input.apellido_materno, input.celular], function (err, result) {
		logger.log('info', 'Se inserto correctamente el query: ' + sql);
		return callback(err, result);
	});
 
	con.end();
 
}; 