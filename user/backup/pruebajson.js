var var1="jose luis taborda lopez";
var res = var1.split(" ");
var numero=5;
var salida;

var datapersonal=  {
"id_postulante" : "234",
"campo2": res[3]
};


switch(numero) {
    case 1:
        salida="es 1";
        break;
    case 5:
        salida="es 5";
        break;
    default:
        salida="ni 1 ni 5";
}


console.log(salida);
