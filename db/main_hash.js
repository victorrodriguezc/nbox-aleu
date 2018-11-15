var insert_hash = require("/home/ec2-user/aelucoopbackend/admin/backend_script/queries/insert_hash.js");
var logger = require("/home/ec2-user/aelucoopbackend/db/log/logger.js");

var input = '44784346';
//var inputins = {"id_postulante" : "240", "banco" : "BCP" , "tipo_cuenta" : "Ahorros" , "linea_credito" : "S/5000", "lineo_credito_utilizada" : "S/3000"}

insert_hash.insert_hash(input, function (result){
	console.log('Informacion resultante: ', result);
});


