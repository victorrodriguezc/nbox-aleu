var updpatro = require("/home/ec2-user/aelucoopbackend/db/querys/update_patrocinante.js");

var value = {
"id_postulante" : "234",
"actualizacion": [
    { "campo":"nombres", "valor":"Julio Cesar"},
	{ "campo":"apellido_paterno", "valor":"Campos"},
	{ "campo":"apellido_materno", "valor":"Hashirama"},
]
}

updpatro.update_patrocinante(value,function (resdist){
	console.log('Informacion resultante update patrocinante: ', resdist);

});