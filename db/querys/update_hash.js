var mysql = require('mysql');
var logger = require("/home/ec2-user/aelucoopbackend/db/log/logger.js");
var dbconfig = require('/home/ec2-user/aelucoopbackend/db/config_db/config_db.js');

exports.update_hash = function(input, callback){

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

	logger.log('info', 'Se realizara una actualizacion en la tabla tb_datos_personales con la siguiente data: ' + input);

	var sql = "UPDATE tb_datos_personales set hash = '" + input.hash + "' where id_postulante = " + input.id_postulante;
	console.log(sql);
	con.query(sql, function (err, result) {
		logger.log('info', 'Se actualizo correctamente el query: ' + sql);
		return callback(err, result);
	});

	con.end();

};
