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

//////////Obteniendo id de postulante//////////////////

querys.select_datos_personales_id(req.body.dni,function (resdni){
//console.log('Informacion resultante provincia: ', resprov);
//id_postulante=resdni[0].id_postulante;
id_postulante=String(resdni).trim();
console.log('Informacion ID postulante:',id_postulante);
/////////////////////////Insertar datos personales/////////////////////////
var datapersonal=  {
              "id_postulante" : id_postulante,
              "dni" : req.body.dni,
              "nombres" : req.body.nombres,
              "apellido_paterno" : req.body.apellido_paterno,
              "apellido_materno" : req.body.apellido_materno,
              "fecha_nacimiento" : req.body.fnacimiento,
              "sexo" : "Masculino",
              "estado_civil" : "Casado",
              "correo_electronico" : req.body.email,
              "celular" : req.body.telefono
};

querys.insert_datos_personales(datapersonal,function (resinsocuest){
  console.log('Informacion resultante de la actualizacion de datos personales ', resinsocuest);
});

/////////////Fin de insercion de datos personales////////////////////////////

/////////////////////////Insertar informacion domicilio/////////////////////////
var infodomicilio= {
              "id_postulante" : id_postulante,
              "tipo_via" : req.body.tipovia,
              "nombre_via" : req.body.nombrevia,
              "num" : req.body.numerovia,
              "mz" : req.body.manzana,
              "lote" : req.body.lote,
              "int_dpto" : req.body.intdpto,
              "id_dep" : req.body.departamento,
              "id_prov" : req.body.provincia,
              "id_dist" : req.body.distrito,
              "urbanizacion" : req.body.urbanizacion,
              "telefono" : req.body.telefonocasa,
              "casa" : req.body.tipocasa
};
querys.insert_domicilio(infodomicilio,function (resinsdom){
    console.log('Informacion resultante de la insercion de domicilio: ', resinsdom);
});

/////////////Fin de informacion domicilio//////////////////////
//validar que llegue conyuge
if (req.body.dniconyugue){
var infoconyuge = {
              "id_postulante" : id_postulante,
              "nombres" : req.body.nombreconyugue,
              "apellido_paterno" : req.body.apellido_paternoc,
              "apellido_materno" : req.body.apellido_maternoc,
              "dni":req.body.dniconyugue,
              "fecha_nacimiento" : req.body.fnacimientoc,
              "ocupacion" : req.body.ocupacionc,
              "profesion" : req.body.profesionc,
              "id_sector_economico" : req.body.sectoreconomicoc
};
querys.insert_conyuge(infoconyuge,function (resinscony){
    console.log('Informacion resultante de la insercion de conyuge: ', resinscony);
});
}
else console.log('No se envío información de conyuge');

////////////////Insertar dependientes///////////////////////////
if(req.body.hijos){
var hijoitem="";
var arraydependientes=[];

console.log(req.body.hijos);

      for (var i = 0; i < req.body.hijos.length; i++) {

            hijoitem={ "nombres":req.body.hijos[i].nombres, "apellido_paterno":req.body.hijos[i].apellido_paterno,"apellido_materno":req.body.hijos[i].apellido_materno,"fechanac":req.body.hijos[i].fechanac,"parentesco":"hijo"};
            arraydependientes.push(hijoitem);
      };

var infodependientes={
"id_postulante" : id_postulante,
"dependientes": arraydependientes
};

querys.insert_dependiente(infodependientes,function (resinsocuneg){
    console.log('Informacion resultante de la insercion de dependiente: ', resinsocuneg);
});
}
else  console.log('No se envío información de dependientes');
/////////////Fin de insercion de dependientes//////////////////////

//////////////Arreglos de dedicacion////////////////////////////////
var ocupaciondependiente;
var ocupacionindependiente;
var ocupacionnegocio;
var ocupacionestudiante;
var ocupacionamacasa;
for (var i = 0; i < req.body.dedicacion.length; i++) {

  switch(req.body.dedicacion[i]) {
      case 0://trabajador dependiente
          ocupaciondependiente= {
                          "id_postulante" : id_postulante,
                          "ocupacion" : req.body.ocupacion,
                          "profesion" : req.body.profesion,
                          "id_sector_economico" : req.body.sectoreconomico,
                          "centro_trabajo" : req.body.centrodetrabajo,
                          "id_actividad" : req.body.actividad,
                          "id_tiempo_servicio" : req.body.tiempodeservicio,
                          "cargo" : req.body.cargo,
                          "id_sueldo_bruto" : req.body.sueldobruto
                          };
                    /*    "direccion" : "",
                          "num" : "",
                          "urbanizacion" : "",
                          "id_dep" : "",
                          "id_prov" : "",
                          "id_dist" : "",
                          "telefono" : ""
                    */
          querys.insert_ocupacion_dependiente(ocupaciondependiente,function (resinsocudep){
              console.log('Informacion resultante de la insercion de ocupacion dependiente: ', resinsocudep);
          });
          break;
      case 1://trabajador independiente
          ocupacionindependiente ={
          "id_postulante" : id_postulante,
          "ruc" : req.body.rucindependiente,
          "id_ingresos_mensuales" : req.body.ingresosrucindependiente
          };
          querys.insert_ocupacion_independiente(ocupacionindependiente,function (resinsdom){
              console.log('Informacion resultante de la insercion de ocupacion independiente: ', resinsdom);
          });
          break;
      case 2://persona con negocio propio
          ocupacionnegocio = {
          "id_postulante" : id_postulante,
          "ruc" : req.body.rucnegocio,
          "id_ingresos_mensuales" : req.body.ventasrucnegocio
          };
          querys.insert_ocupacion_negocio(ocupacionnegocio,function (resinsocuest){
              console.log('Informacion resultante de la insercion de ocupacion negocio: ', resinsocuest);
          });
          break;
      case 3://estudiante
          ocupacionestudiante ={
          "id_postulante" : id_postulante,
          "centro_estudio" : req.body.institucioneducativa
          };
          querys.insert_ocupacion_estudiante(ocupacionestudiante,function (resinscony){
              console.log('Informacion resultante de la insercion de ocupacion estudiante: ', resinscony);
          });
          break;
      case 4://ama de casa
          ocupacionamacasa ={
          "id_postulante" : id_postulante
          };
          querys.insert_ocupacion_ama_casa(ocupacionamacasa,function (resinsocudep){
              console.log('Informacion resultante de la insercion de ocupacion ama de casa: ', resinsocudep);
          });
          break;
      case 5://jubilado
          ocupacionjubiladodesempleado={
          "id_postulante" : id_postulante
          };
          querys.insert_ocupacion_jubilado_desempleado(ocupacionjubiladodesempleado,function (resinsocuneg){
              console.log('Informacion resultante de la insercion de ocupacion jubilado desemp: ', resinsocuneg);
          });
          break;
      default:
          console.log("No hay dedicacion disponible");
      }


}
/////////////////////////Fin Arreglos de dedicacion////////////////////////////////////////////////////

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

querys.insert_postulante_institucion(infopartners,function (resinsopart){
    console.log('Informacion resultante de la insercion de partners: ', resinsopart);
});
////////////////////////////////////////////////////////////////
////////////////Marcar Hash como usado///////////////////////////
var usedhashinfo={
"id_postulante" : id_postulante,
"hash": "USED"
};

querys.update_hash(usedhashinfo,function (resnewhash){
    console.log('Informacion resultante de la insercion de partners: ', resnewhash);
});
/////////////Fin de marcado de hash//////////////////////

//console.log(req.body.nombre+" "+req.body.cargopublico+" "+req.body.nombrevia);

res.end("resultado:OK");

});

});


//////////////Metodo de comprobacion de hash///////////////////////////////
app.get('/frontend/v1/validatehash/:hashvalue', function(req, res, next){
querys.select_hash(req.params.hashvalue,function (reshash){
//console.log('Informacion resultante provincia: ', resprov);
res.setHeader('Content-Type', 'application/json');
res.send(JSON.stringify(reshash));
});
});

///////////////////////////////////////////////////////////


var server = app.listen(8084, function () {

  var host = server.address().address
  var port = server.address().port

  console.log("Example app listening at http://%s:%s", host, port)

})
