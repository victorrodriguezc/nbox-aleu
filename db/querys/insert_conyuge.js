var mysql = require('mysql');
var logger = require("/home/ec2-user/aelucoopbackend/db/log/logger.js");
var dbconfig = require('/home/ec2-user/aelucoopbackend/db/config_db/config_db.js');

exports.insert_conyuge = function(input, callback){

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

logger.log('info', 'Se realizara la insercion en la tabla tb_conyuge con la siguiente data: ' + input);

 var sql = "INSERT INTO tb_conyuge (id_postulante, nombres, apellido_paterno, apellido_materno, dni, fecha_nacimiento, ocupacion, profesion, id_sector_economico) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
 con.query(sql, [input.id_postulante, input.nombres, input.apellido_paterno, input.apellido_materno, input.dni, input.fecha_nacimiento, input.ocupacion, input.profesion, input.id_sector_economico], function (err, result) {
	logger.log('info', 'Se inserto correctamente el query: ' + sql);
	return callback(err, result);
 });
 
 con.end();
 
}; 
