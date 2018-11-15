var express = require('express');
var app = express();
var fs = require("fs");

var querys = require("/home/ec2-user/aelucoopbackend/db/querys/mysql_query.js");

app.use(express.json());

app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});


app.post('/frontend/v1/insertdata', function(req, res, next){
var id_postulante="243";
console.log(req.body.nombrevia);
console.log(req.body.hijos);
////////////////Insertar dependientes///////////////////////////
var hijoitem="";
var arraydependientes=[];

      for (var i = 0; i < req.body.hijos.length; i++) {
            console.log(req.body.hijos[i].nombres);
            hijoitem={ "nombres":req.body.hijos[i].nombres, "apellido_paterno":req.body.hijos[i].apellido_paterno,"apellido_materno":req.body.hijos[i].apellido_materno,"fechanac":req.body.hijos[i].fechanac,"parentesco":"hijo"};
            arraydependientes.push(hijoitem);
      };
//console.log(arraydependientes);
var infodependientes={
"id_postulante" : id_postulante,
"dependientes": arraydependientes
};
console.log(infodependientes);
/*querys.insert_dependiente(infodependientes,function (resinsocuneg){
    console.log('Informacion resultante de la insercion de dependiente: ', resinsocuneg);
});*/

/////////////Fin de insercion de dependientes//////////////////////

console.log(req.body.nombre+" "+req.body.cargopublico+" "+req.body.nombrevia);

res.end("resultado:OK");
});

var server = app.listen(8084, function () {

  var host = server.address().address
  var port = server.address().port

  console.log("Example app listening at http://%s:%s", host, port)

})
