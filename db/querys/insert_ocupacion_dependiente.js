var mysql = require('mysql');
var logger = require("/home/ec2-user/aelucoopbackend/db/log/logger.js");
var dbconfig = require('/home/ec2-user/aelucoopbackend/db/config_db/config_db.js');

exports.insert_ocupacion_dependiente = function(input, callback){

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

	logger.log('info', 'Se realizara la insercion en la tabla tb_ocupacion_dependiente con la siguiente data: ' + input);

	var sql = "INSERT INTO tb_ocupacion_dependiente (id_postulante, ocupacion, profesion, id_sector_economico, centro_trabajo, id_actividad, id_tiempo_servicio, cargo, id_sueldo_bruto) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
	con.query(sql, [input.id_postulante, input.ocupacion, input.profesion, input.id_sector_economico, input.centro_trabajo, input.id_actividad, input.id_tiempo_servicio, input.cargo, input.id_sueldo_bruto], function (err, result) {
		logger.log('info', 'Se inserto correctamente el query: ' + sql);
		return callback(err, result);
	});
 
	con.end();
 
}; 
