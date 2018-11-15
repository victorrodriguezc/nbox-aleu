var mysql = require('mysql');
var logger = require("/home/ec2-user/aelucoopbackend/db/log/logger.js");
var dbconfig = require('/home/ec2-user/aelucoopbackend/db/config_db/config_db.js');

exports.insert_postulante_institucion = function(input, callback){

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

	logger.log('info', 'Se realizara la insercion en la tabla tb_postulante_institucion con la siguiente data: ' + input);

	var sql = "INSERT INTO tb_postulante_institucion (id_postulante,id_institucion) VALUES ?";
	var values = [];
 
	for(var i=0; i< input.institucion.length; i++)
		values.push([input.id_postulante,input.institucion[i].id_institucion]);

 
	con.query(sql, [values], function (err, result) {
		logger.log('info', 'Se inserto correctamente el query: ' + sql);
		return callback(err, result);
	});
 
	con.end();
 
}; 
