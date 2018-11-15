var express = require('express');
var path = require('path');
var app = express();
var fs = require("fs");
var bodyparser = require('body-parser');
var seldepa = require("/home/ec2-user/aelucoopbackend/db/querys/select_departamento.js");
var selprov = require("/home/ec2-user/aelucoopbackend/db/querys/select_provincia.js");
var seldist = require("/home/ec2-user/aelucoopbackend/db/querys/select_distrito.js");
//var mongoose = require('mongoose');
//app.use(express.static("./app"));
app.set('port', 8084);
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');
app.use(express.static(path.join(__dirname, 'public')));
//app.use(express.json()); // to support JSON-encoded bodies
//app.use(express.urlencoded()); // to support URL-encoded bodies

app.use(bodyparser.json()); // support json encoded bodies
app.use(bodyparser.urlencoded({ extended: true })); // support encoded bodies

app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});


//const bodyParser = require('body-parser');
//app.use(bodyParser);

app.use(function(req, res, next) {
    var data='';
    req.setEncoding('utf8');
    req.on('data', function(chunk) {
       data += chunk;
    });

    req.on('end', function() {
        req.body = data;
        next();
    });
});

app.get('api/v1/getdepartamento', function(req, res, next){
seldepa.select_departamento(function (resdep){
console.log('Informacion resultante departamento: ', resdep);
res.setHeader('Content-Type', 'application/json');
res.send(resdep);    // echo the result back
});
});

app.post('/api/v1/adduser', function (req, res) {
        //user = req.body.apellido;
        data = JSON.parse(req.body);
        console.log('The body request is:' + req.body);
        console.log('The body parsed request is:' + data.apellido);
        var sql = mysql.format("SELECT * FROM tb_prueba where apellido = '" + data.apellido + "'");
        pool.query(sql, function (error, results, fields) {
            if (error) {
                res.send(error);
            }
            res.send(results);
            //pool.end();
        });
});

app.listen(app.get('port'));
console.log('Server Runnign on port localhost:' + app.get('port'));
