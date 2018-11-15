var seldepa = require("/home/ec2-user/aelucoopbackend/db/querys/select_departamento.js");
var selprov = require("/home/ec2-user/aelucoopbackend/db/querys/select_provincia.js");
var seldist = require("/home/ec2-user/aelucoopbackend/db/querys/select_distrito.js");

//seldepa.select_departamento(function (resdep){
//	console.log('Informacion resultante departamento: ', resdep);

//});

selprov.select_provincia(function (resprov){
	console.log('Informacion resultante provincia: ', resprov);

});

//q
//seldist.select_distrito(function (resdis){
//	console.log('Informacion resultante distrito: ', resdis);

//});
