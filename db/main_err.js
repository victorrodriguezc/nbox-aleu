var select_datos_personales_id = require("/home/ec2-user/aelucoopbackend/db/querys/select_datos_personales_id.js");
var logger = require("/home/ec2-user/aelucoopbackend/db/log/logger.js");

logger.log('info', 'Se va a ejecutar la funcion');

var dni = '44556677';

select_datos_personales_id.select_datos_personales_id(dni, function (result){
	console.log('Informacion resultante: ', result);
});
