var mysql = require('mysql');
var logger = require("/home/ec2-user/aelucoopbackend/db/log/logger.js");
var dbconfig = require('/home/ec2-user/aelucoopbackend/db/config_db/config_db.js');

exports.insert_domicilio = function(input, callback){

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

	logger.log('info', 'Se realizara la insercion en la tabla tb_domicilio con la siguiente data: ' + input);

	var sql = "INSERT INTO tb_domicilio (id_postulante, tipo_via, nombre_via, num, mz, lote, int_dpto, id_dep, id_prov, id_dist, urbanizacion, telefono, casa) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	con.query(sql, [input.id_postulante, input.tipo_via, input.nombre_via, input.num, input.mz, input.lote, input.int_dpto, input.id_dep, input.id_prov, input.id_dist, input.urbanizacion, input.telefono, input.casa], function (err, result) {
		logger.log('info', 'Se inserto correctamente el query: ' + sql);
		return callback(err, result);
	});
 
	con.end();
 
}; 

