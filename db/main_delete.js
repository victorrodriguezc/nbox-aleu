var delete_ocupacion_ama_casa = require("/home/ec2-user/aelucoopbackend/admin/backend_script/queries/delete_ocupacion_ama_casa.js");
var delete_observaciones = require("/home/ec2-user/aelucoopbackend/admin/backend_script/queries/delete_observaciones.js");
var logger = require("/home/ec2-user/aelucoopbackend/db/log/logger.js");

logger.log('info', 'Se va a ejecutar la funcion');

var inputama = {"id_ama_casa" : "5" , "id_postulante" : "240"};

delete_ocupacion_ama_casa.delete_ocupacion_ama_casa(inputama, function (result){
	console.log('Informacion resultante: ', result);
});

//var inputobs = '3'

//delete_observaciones.delete_observaciones(inputobs, function (result){
//	console.log('Informacion resultante: ', result);
//});
