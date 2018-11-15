var insert_financiero_log = require("/home/ec2-user/aelucoopbackend/db/insert_financiero_log.js");
var insadjunto = require("/home/ec2-user/aelucoopbackend/admin/backend_script/queries/insert_adjuntos.js");
var insobserv = require("/home/ec2-user/aelucoopbackend/admin/backend_script/queries/insert_observaciones.js");
var insocudep = require("/home/ec2-user/aelucoopbackend/admin/backend_script/queries/insert_ocupacion_dependiente.js");
var insocuest = require("/home/ec2-user/aelucoopbackend/admin/backend_script/queries/insert_ocupacion_estudiante.js");
var insocuind = require("/home/ec2-user/aelucoopbackend/admin/backend_script/queries/insert_ocupacion_independiente.js");
var insocujub = require("/home/ec2-user/aelucoopbackend/admin/backend_script/queries/insert_ocupacion_jubilado_desempleado.js");
var insocuneg = require("/home/ec2-user/aelucoopbackend/admin/backend_script/queries/insert_ocupacion_negocio.js");
var insocuama = require("/home/ec2-user/aelucoopbackend/admin/backend_script/queries/insert_ocupacion_ama_casa.js");
var insfinancu = require("/home/ec2-user/aelucoopbackend/admin/backend_script/queries/insert_financiero_cuenta.js");
var insfinanta = require("/home/ec2-user/aelucoopbackend/admin/backend_script/queries/insert_financiero_tarjeta.js");
var insconyug = require("/home/ec2-user/aelucoopbackend/admin/backend_script/queries/insert_conyuge.js");
var insdepend = require("/home/ec2-user/aelucoopbackend/admin/backend_script/queries/insert_dependiente.js");
var inspatroc = require("/home/ec2-user/aelucoopbackend/admin/backend_script/queries/insert_patrocinante.js");


var logger = require("/home/ec2-user/aelucoopbackend/db/log/logger.js");

logger.log('info', 'Se va a ejecutar la funcion');

//var inputins = {"id_postulante" : "240", "ruc" : "2030101030103", "id_ingresos_mensuales" : "2"};

//var inputins = {"id_postulante" : "240", "id_usuario" : "3", "tipo_observacion" : "LAFT", "observacion" : "No me cae bien"};

var inputins = {"id_postulante" : "240", "ocupacion" : "Trabajador", "profesion" : "Carpintero", "id_sector_economico" : "1", "centro_trabajo" : "Rollos S.A.", "id_actividad" : "3", "id_tiempo_servicio" : "1", "cargo" : "Trabajador", "id_sueldo_bruto" : "2"};



//var inputins = {"id_postulante" : "240", "banco" : "BCP" , "tipo_cuenta" : "Ahorros" , "linea_credito" : "S/5000", "lineo_credito_utilizada" : "S/3000"}


insocudep.insert_ocupacion_dependiente(inputins, function (result){
	console.log('Informacion resultante: ', result);
});

