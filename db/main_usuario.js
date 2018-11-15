var select_usuario = require("/home/ec2-user/aelucoopbackend/admin/backend_script/queries/select_usuario.js");
var insert_financiero_log = require("/home/ec2-user/aelucoopbackend/db/insert_financiero_log.js");
var update_financiero_log = require("/home/ec2-user/aelucoopbackend/db/update_financiero_log.js");
var logger = require("/home/ec2-user/aelucoopbackend/db/log/logger.js");

logger.log('info', 'Se va a ejecutar la funcion');

var inputsel = {"usuario" : "omelgarejo", "password" : "abcd123"}

select_usuario.select_usuario(inputsel, function (result){
	console.log('Informacion resultante: ', result);
});

//var inputins = {"id_postulante" : "240", "banco" : "BCP" , "tipo_cuenta" : "Ahorros" , "linea_credito" : "S/5000", "lineo_credito_utilizada" : "S/3000"}

//insert_financiero_log.insert_financiero(inputins, function (result){
//	console.log('Informacion resultante: ', result);
//});

//var inputupd = {
//"id_postulante" : "2501",
//"actualizacion" : [
//   { "campo":"banco", "valor":"BBVA"},
//    { "campo":"tipo_cuenta", "valor":"Corriente"},
//]
//} 

//update_financiero_log.update_financiero(inputupd, function (result){
//	console.log('Informacion resultante: ', result);
//});
