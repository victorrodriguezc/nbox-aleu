var mysql = require('mysql');
var logger = require("/home/ec2-user/aelucoopbackend/db/log/logger.js");
var dbconfig = require('/home/ec2-user/aelucoopbackend/db/config_db/config_db.js');

exports.insert_datos_personales = function(input, callback){

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

	logger.log('info', 'Se realizara la insercion en la tabla tb_datos_personales con la siguiente data: ' + input);

	var sql = "UPDATE tb_datos_personales set dni = ?, nombres = ?, apellido_paterno = ?, apellido_materno = ?, fecha_nacimiento = ?, sexo = ?, estado_civil = ?, correo_electronico = ?, celular = ?, fecha = date(now()), id_estado = 1 where id_postulante = ?";
	con.query(sql, [input.dni, input.nombres, input.apellido_paterno, input.apellido_materno, input.fecha_nacimiento, input.sexo, input.estado_civil, input.correo_electronico, input.celular, input.id_postulante], function (err, result) {
		logger.log('info', 'Se inserto correctamente el query: ' + sql);
		return callback(err, result);
	});
 
	con.end();
 
}; 

