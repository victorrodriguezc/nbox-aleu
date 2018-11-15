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


////////////////Insertar dependientes///////////////////////////
////////////////Insertar entidad postulante///////////////////////////
var partneritem="";
var arraypartners=[];

      for (var i = 0; i < req.body.institucionpartner.length; i++) {

            partneritem={ "id_institucion":req.body.institucionpartner[i]};
            arraypartners.push(partneritem);
      };

var infopartners={
"id_postulante" : id_postulante,
"institucion": arraypartners
};
console.log(infopartners);
/*querys.insert_postulante_institucion(infopartners,function (resinsopart){
    console.log('Informacion resultante de la insercion de partners: ', resinsopart);
});
*/
/////////////Fin de insercion de entidades//////////////////////

/////////////Fin de insercion de dependientes//////////////////////

console.log(req.body.nombre+" "+req.body.cargopublico+" "+req.body.nombrevia);

res.end("resultado:OK");
});

var server = app.listen(8084, function () {

  var host = server.address().address
  var port = server.address().port

  console.log("Example app listening at http://%s:%s", host, port)

})
