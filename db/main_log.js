var select_tipo_via_log = require("/home/ec2-user/aelucoopbackend/db/select_tipo_via_log.js");
var insert_financiero_log = require("/home/ec2-user/aelucoopbackend/db/insert_financiero_log.js");
var update_financiero_log = require("/home/ec2-user/aelucoopbackend/db/update_financiero_log.js");
var logger = require("/home/ec2-user/aelucoopbackend/db/log/logger.js");

logger.log('info', 'Se va a ejecutar la funcion');

select_tipo_via_log.select_tipo_via(function (result){
	console.log('Informacion resultante: ', result);
});

//var inputins = {"id_postulante" : "240", "banco" : "BCP" , "tipo_cuenta" : "Ahorros" , "linea_credito" : "S/5000", "lineo_credito_utilizada" : "S/3000"}

//insert_financiero_log.insert_financiero(inputins, function (result){
//	console.log('Informacion resultante: ', result);
//});

var inputupd = {
"id_postulante" : "2501",
"actualizacion" : [
   { "campo":"banco", "valor":"BBVA"},
    { "campo":"tipo_cuenta", "valor":"Corriente"},
]
} 

update_financiero_log.update_financiero(inputupd, function (result){
	console.log('Informacion resultante: ', result);
});
