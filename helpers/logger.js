const winston = require("winston");
const path = require("path");
const { logDate } = require("./date");

const combinedLog = path.join(__dirname, "./../logs/combined.log");

const winstonLogger = winston.createLogger({
  level: "info",
  format: winston.format.simple(),
  handleExceptions: true,
  prettyPrint: true,
  defaultMeta: {
    service: "atul-assigment",
  },
  transports: [
    new winston.transports.File({ filename: combinedLog }),
    new winston.transports.Console({
      format: winston.format.combine(
        winston.format.colorize(),
        winston.format.simple()
      ),
    }),
  ],
});

exports.printLog = (logType, reqId, logName, funcName, params) => {
  if (logType === "info")
    winstonLogger.info(
      `${logDate()} | ${reqId} | ${logName} | ${funcName} | ${JSON.stringify(
        params
      )}`
    );
  else
    winstonLogger.error(
      `${logDate()} | ${reqId} | ${logName} | ${funcName} | ${JSON.stringify(
        params
      )}`
    );
};
