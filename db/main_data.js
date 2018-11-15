var select_datos_personales_id = require("/home/ec2-user/aelucoopbackend/db/querys/select_datos_personales_id.js");
var select_hash = require("/home/ec2-user/aelucoopbackend/db/querys/select_hash.js");
var logger = require("/home/ec2-user/aelucoopbackend/db/log/logger.js");

var input = '44784346';
//var inputins = {"id_postulante" : "240", "banco" : "BCP" , "tipo_cuenta" : "Ahorros" , "linea_credito" : "S/5000", "lineo_credito_utilizada" : "S/3000"}

select_datos_personales_id.select_datos_personales_id(input, function (result){
	console.log('Informacion resultante: ',result,',',result);
});

var inputhash = '7dfa91d42ddf19f6';

select_hash.select_hash(inputhash, function (result){
	console.log('Informacion resultante: ', result);
});
