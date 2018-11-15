var winston = require('winston');
require('winston-daily-rotate-file'); 

var transport = new (winston.transports.DailyRotateFile)({
    filename: 'application-%DATE%.log',
	dirname: '/home/ec2-user/aelucoopbackend/db/log/',
    datePattern: 'YYYY-MM-DD',
    zippedArchive: true,
    maxSize: '20m',
    maxFiles: '14d'
  });
  
transport.on('rotate', function(oldFilename, newFilename) {
    // do something fun
  });

var logger = winston.createLogger({
    format: winston.format.combine(
        winston.format.timestamp(),
        winston.format.printf(info => {
            return `${info.timestamp} ${info.level}: ${info.message}`;
        })
    ),
    transports: [transport]
});

module.exports=logger;

