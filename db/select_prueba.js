var mysql = require('mysql');
var dbconfig = require('./config_db.js');

exports.prueba_select = function(callback){

	var con = mysql.createConnection({
	  host: dbconfig.host,
	  user: dbconfig.user,
	  password: dbconfig.password,
	  database: dbconfig.database
	});
	
	con.connect(function(err) {
	  if (err) throw err;
	});

	con.query("SELECT * FROM tb_prueba", function (err, result, fields) {
		if (err) throw err;
		return callback(result);
	});

	con.end();

};
