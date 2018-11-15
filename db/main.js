var insert_prueba = require("./insert_prueba.js");
var select_prueba = require("./select_prueba.js");
var input = {id: "5", nombre: "Alejandro", apellido: "Aguilar"};


insert_prueba.prueba_insert(input,function (state){
	console.log('Estado de la insercion: ', state);
});

select_prueba.prueba_select(function (result){
	console.log('Informacion resultante: ', result);

});
