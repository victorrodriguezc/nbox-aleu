var mysql = require('mysql');
var logger = require("/home/ec2-user/aelucoopbackend/db/log/logger.js");
var dbconfig = require('/home/ec2-user/aelucoopbackend/db/config_db/config_db.js');

exports.update_patrocinante = function(input, callback){

var response = 0;

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

 var columns = "";
 
 for(var i=0; i< input.actualizacion.length; i++)
	columns = columns + input.actualizacion[i].campo + " = '" + input.actualizacion[i].valor + "' ,";

 var text_update = columns.substring(0, columns.length - 1);
 
 var sql = "UPDATE tb_patrocinante set " + text_update + "where id_postulante = " + input.id_postulante;

 con.query(sql, function (err, result) {
	logger.log('info', 'Se actualizo correctamente el query: ' + sql);
	return callback(err, result);
 });
 
 con.end();
 
}; 

