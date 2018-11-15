var express = require('express');
var app = express();
var fs = require("fs");

var logger = require("/home/ec2-user/aelucoopbackend/db/log/logger.js");

var querys = require("/home/ec2-user/aelucoopbackend/db/querys/mysql_query.js");

app.use(express.json());

app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});

app.get('/catalog/v1/getdepartamento', function(req, res, next){
querys.select_departamento(function (resdep){
//console.log('Informacion resultante departamento: ', resdep);
res.setHeader('Content-Type', 'application/json');
res.send(JSON.stringify(resdep));    // echo the result back
});
});

app.get('/catalog/v1/getprovincia/:iddpto', function(req, res, next){
querys.select_provincia(req.params.iddpto,function (resprov){
//console.log('Informacion resultante provincia: ', resprov);
res.setHeader('Content-Type', 'application/json');
res.send(JSON.stringify(resprov));
});
});

app.get('/catalog/v1/getdistrito/:idprov', function(req, res, next){
querys.select_distrito(req.params.idprov,function (resdist){
//console.log('Informacion resultante provincia: ', resprov);
res.setHeader('Content-Type', 'application/json');
res.send(JSON.stringify(resdist));
});
});

app.get('/catalog/v1/getsector', function(req, res, next){
querys.select_sector(function (ressec){
//console.log('Informacion resultante departamento: ', resdep);
res.setHeader('Content-Type', 'application/json');
res.send(JSON.stringify(ressec));    // echo the result back
});
});

app.get('/catalog/v1/getactividad/:idsector', function(req, res, next){
querys.select_actividad(req.params.idsector,function (resact){
//console.log('Informacion resultante provincia: ', resprov);
res.setHeader('Content-Type', 'application/json');
res.send(JSON.stringify(resact));
});
});

app.get('/catalog/v1/getsueldobruto', function(req, res, next){
querys.select_sueldo_bruto(function (ressb){
//console.log('Informacion resultante departamento: ', resdep);
res.setHeader('Content-Type', 'application/json');
res.send(JSON.stringify(ressb));    // echo the result back
});
});

app.get('/catalog/v1/gettiemposervicio', function(req, res, next){
querys.select_tiempo_servicio(function (rests){
//console.log('Informacion resultante departamento: ', resdep);
res.setHeader('Content-Type', 'application/json');
res.send(JSON.stringify(rests));    // echo the result back
});
});

app.get('/catalog/v1/getingresosmensuales', function(req, res, next){
querys.select_ingresos_mensuales_ind(function (resim){
//console.log('Informacion resultante departamento: ', resdep);
res.setHeader('Content-Type', 'application/json');
res.send(JSON.stringify(resim));    // echo the result back
});
});

app.get('/catalog/v1/getventasmensuales', function(req, res, next){
querys.select_ingresos_mensuales_neg(function (resimneg){
//console.log('Informacion resultante departamento: ', resdep);
res.setHeader('Content-Type', 'application/json');
res.send(JSON.stringify(resimneg));    // echo the result back
});
});

app.get('/catalog/v1/getpartners', function(req, res, next){
querys.select_institucion(function (resprtn){
//console.log('Informacion resultante departamento: ', resdep);
res.setHeader('Content-Type', 'application/json');
res.send(JSON.stringify(resprtn));    // echo the result back
});
});

app.get('/catalog/v1/getvias', function(req, res, next){
querys.select_tipo_via(function (resvias){
//console.log('Informacion resultante departamento: ', resdep);
res.setHeader('Content-Type', 'application/json');
res.send(JSON.stringify(resvias));    // echo the result back
});
});

app.get('/catalog/v1/gettipovivienda', function(req, res, next){
querys.select_tipo_vivienda(function (restpv){
//console.log('Informacion resultante departamento: ', resdep);
res.setHeader('Content-Type', 'application/json');
res.send(JSON.stringify(restpv));    // echo the result back
});
});

var server = app.listen(8083, function () {

  var host = server.address().address
  var port = server.address().port

  console.log("Example app listening at http://%s:%s", host, port)
  logger.log('info', 'Se inicio el servicio APIs Front End en el puerto:'+port);

})
