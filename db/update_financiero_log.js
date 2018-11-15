var mysql = require('mysql');
var logger = require("/home/ec2-user/aelucoopbackend/db/log/logger.js");
var dbconfig = require('/home/ec2-user/aelucoopbackend/db/config_db/config_db.js');

exports.update_financiero = function(input, callback){

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

if (Array.isArray(input.actualizacion)){
 for(var i=0; i< input.actualizacion.length; i++)
	columns = columns + input.actualizacion[i].campo + " = '" + input.actualizacion[i].valor + "' ,";
}
else if (!Array.isArray(input.actualizacion)){
 columns = columns + input.actualizacion.campo + " = '" + input.actualizacion.valor + "' ,";
}

 var text_update = columns.substring(0, columns.length - 1);

 var sql = "UPDATE tb_financiero set " + text_update + "where id_postulante = " + input.id_postulante;

 con.query(sql, function (err, result) {
   if (err) {
	   logger.log('error', 'Ocurrio el siguiente error: ' + err.message);
	   return callback({"code":"500", "message":err.message});
	};
   if (result.changedRows == 0){
	   logger.log('error', 'No se actualizo el siguiente query: ' + sql);
	   return callback({"code":"400", "message":"No value updated"});
   }else{
	   logger.log('info', 'Se actualizo correctamente el query: ' + sql);
	   return callback({"code":"200", "message":result.message});
   };
 });

 con.end();

};
