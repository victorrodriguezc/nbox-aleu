// import select
var seldatper = require("/home/ec2-user/aelucoopbackend/db/querys/select_datos_personales.js");
var selsuelbru = require("/home/ec2-user/aelucoopbackend/db/querys/select_sueldo_bruto.js");
var seltiserv = require("/home/ec2-user/aelucoopbackend/db/querys/select_tiempo_servicio.js");
var seldepa = require("/home/ec2-user/aelucoopbackend/db/querys/select_departamento.js");
var selprov = require("/home/ec2-user/aelucoopbackend/db/querys/select_provincia.js");
var seldist = require("/home/ec2-user/aelucoopbackend/db/querys/select_distrito.js");
var selsect = require("/home/ec2-user/aelucoopbackend/db/querys/select_sector.js");
var selact = require("/home/ec2-user/aelucoopbackend/db/querys/select_actividad.js");
var selingmenind = require("/home/ec2-user/aelucoopbackend/db/querys/select_ingresos_mensuales_ind.js");
var selingmenneg = require("/home/ec2-user/aelucoopbackend/db/querys/select_ingresos_mensuales_neg.js");
var seltvia = require("/home/ec2-user/aelucoopbackend/db/querys/select_tipo_via.js");
var seltvivie = require("/home/ec2-user/aelucoopbackend/db/querys/select_tipo_vivienda.js");
var selinst = require("/home/ec2-user/aelucoopbackend/db/querys/select_institucion.js");
var seldatperid = require("/home/ec2-user/aelucoopbackend/db/querys/select_datos_personales_id.js");
var selhash = require("/home/ec2-user/aelucoopbackend/db/querys/select_hash.js");

//import insert
var insdatper = require("/home/ec2-user/aelucoopbackend/db/querys/insert_datos_personales.js");
var insdom = require("/home/ec2-user/aelucoopbackend/db/querys/insert_domicilio.js");
var insocudep = require("/home/ec2-user/aelucoopbackend/db/querys/insert_ocupacion_dependiente.js");
var inscony = require("/home/ec2-user/aelucoopbackend/db/querys/insert_conyuge.js");
var insdep = require("/home/ec2-user/aelucoopbackend/db/querys/insert_dependiente.js");
var insocuneg = require("/home/ec2-user/aelucoopbackend/db/querys/insert_ocupacion_negocio.js");
var insocuind = require("/home/ec2-user/aelucoopbackend/db/querys/insert_ocupacion_independiente.js");
var insocuama = require("/home/ec2-user/aelucoopbackend/db/querys/insert_ocupacion_ama_casa.js");
var insocuest = require("/home/ec2-user/aelucoopbackend/db/querys/insert_ocupacion_estudiante.js");
var insjubdes = require("/home/ec2-user/aelucoopbackend/db/querys/insert_ocupacion_jubilado_desempleado.js");
var insposins = require("/home/ec2-user/aelucoopbackend/db/querys/insert_postulante_institucion.js");

//import update
var updhash = require("/home/ec2-user/aelucoopbackend/db/querys/update_hash.js");

//select functions
exports.select_datos_personales = seldatper.select_datos_personales;
exports.select_sueldo_bruto = selsuelbru.select_sueldo_bruto;
exports.select_tiempo_servicio = seltiserv.select_tiempo_servicio;
exports.select_departamento = seldepa.select_departamento;
exports.select_provincia = selprov.select_provincia;
exports.select_distrito = seldist.select_distrito;
exports.select_sector = selsect.select_sector;
exports.select_actividad = selact.select_actividad;
exports.select_ingresos_mensuales_ind = selingmenind.select_ingresos_mensuales_ind;
exports.select_tipo_via = seltvia.select_tipo_via;
exports.select_tipo_vivienda = seltvivie.select_tipo_vivienda;
exports.select_institucion = selinst.select_institucion;
exports.select_ingresos_mensuales_neg = selingmenneg.select_ingresos_mensuales_neg;
exports.select_datos_personales_id = seldatperid.select_datos_personales_id;
exports.select_hash = selhash.select_hash;

//insert functions
exports.insert_datos_personales = insdatper.insert_datos_personales;
exports.insert_domicilio = insdom.insert_domicilio;
exports.insert_ocupacion_dependiente = insocudep.insert_ocupacion_dependiente;
exports.insert_conyuge = inscony.insert_conyuge;
exports.insert_dependiente = insdep.insert_dependiente;
exports.insert_ocupacion_negocio = insocuneg.insert_ocupacion_negocio;
exports.insert_ocupacion_independiente = insocuind.insert_ocupacion_independiente;
exports.insert_ocupacion_ama_casa = insocuama.insert_ocupacion_ama_casa;
exports.insert_ocupacion_estudiante = insocuest.insert_ocupacion_estudiante;
exports.insert_ocupacion_jubilado_desempleado = insjubdes.insert_ocupacion_jubilado_desempleado;
exports.insert_postulante_institucion = insposins.insert_postulante_institucion;

//update functions
exports.update_hash = updhash.update_hash;
