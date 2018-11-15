var querys = require("/home/ec2-user/aelucoopbackend/db/querys/mysql_query.js");

querys.select_datos_personales(function (resdatper){
	console.log('Informacion resultante datos personales: ', resdatper);
});

querys.select_sueldo_bruto(function (ressuelbru){
	console.log('Informacion resultante sueldo bruto: ', ressuelbru);
});

querys.select_tiempo_servicio(function (restiserv){
	console.log('Informacion resultante tiempo servicio: ', restiserv);
});

querys.select_departamento(function (resdep){
	console.log('Informacion resultante departamento: ', resdep);
});

querys.select_provincia(2,function (resprov){
	console.log('Informacion resultante provincia: ', resprov);
});

querys.select_distrito(1,function (resdist){
	console.log('Informacion resultante distrito: ', resdist);
});

querys.select_sector(function (ressec){
	console.log('Informacion resultante sector: ', ressec);
});

querys.select_actividad(1,function (resact){
	console.log('Informacion resultante actividad: ', resact);
});

querys.select_tiempo_servicio(function (restieser){
	console.log('Informacion resultante actividad: ', restieser);
});

/* var valor = {  
"id_postulante" : "234",
"dni" : "43444334",
"nombres" : "Carlos Daniel",
"apellido_paterno" : "Campos",
"apellido_materno" : "Tabarez",
"fecha_nacimiento" : "1981-10-14",
"sexo" : "Masculino",
"estado_civil" : "Casado",
"correo_electronico" : "carlos@correo.com",
"celular" : "978214377"
}

querys.insert_datos_personales(valor,function (resinsdep){
	console.log('Informacion resultante de la insercion: ', resinsdep);
});
 */
 
querys.select_tipo_via(function (restvia){
	console.log('Informacion resultante actividad: ', restvia);
});

querys.select_tipo_vivienda(function (restvivie){
	console.log('Informacion resultante actividad: ', restvivie);
});
 


