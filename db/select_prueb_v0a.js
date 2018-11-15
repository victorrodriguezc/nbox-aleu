var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "Jan@1234!",
  database: "db_aelu"
});

con.connect(function(err) {
  if (err) throw err;
});

con.query("SELECT * FROM tb_prueba", function (err, result, fields) {
    if (err) throw err;
    for (var i in result) {
        console.log('Nombre: ', result[i].nombre, 'Apellido: ', result[i].apellido);
    }
});

con.end();
