require("dotenv-safe").config();
global.express = require("express");
const app = express();
global.fs = require("fs");
const responseSend = app.response.send;
const { v4: uuidv4 } = require("uuid");
const morgan = require("morgan");
const cors = require("cors");
const compression = require("compression");
const helmet = require("helmet");
const swaggerJSDoc = require("swagger-jsdoc");
const swaggerUi = require("swagger-ui-express");
const { logDate } = require("./helpers/date");
const { sequelize } = require("./config/database");
const allowedMethods = ["GET"];
const { printLog } = require("./helpers/logger");
global.printLog = printLog;
global.uuidv4 = uuidv4;

app.use((req, res, next) => {
  req["reqId"] = uuidv4();
  if (!allowedMethods.includes(req.method))
    return res.status(405).send({
      success: false,
      code: "INVALID_METHOD",
      message: "Method not allowed",
    });
  res.removeHeader("X-Powered-By");
  res.removeHeader("Server");
  next();
});

morgan.token("date", () => {
  return logDate();
});
morgan.token("reqId", (req) => {
  return req["reqId"];
});
morgan.token("reqBody", (req) => {
  return JSON.stringify(req.body);
});

app.response.send = function (body) {
  responseSend.call(this, body);
  this.customBody = body;
};

morgan.token("resBody", (_, res) => {
  return JSON.stringify(res.customBody);
});

const accessLogStream = fs.createWriteStream("./logs/access.log", {
  flags: "a",
});

app.use(cors());
app.use(compression());
app.use(helmet());

app.use(
  morgan(
    ":date | :reqId | :remote-addr | :remote-user | :referrer | :user-agent | :method | :url | :status | :reqBody | :resBody | :response-time ms | :res[content-length]",
    {
      stream: accessLogStream,
    }
  )
);

app.get("/healthCheck", (req, res) => {
  res.send({ status: "OK", version: process.env.VERSION });
});

app.use(require("./routes"));

app.listen(process.env.PORT, async () => {
  const reqId = uuidv4();
  printLog("info", reqId, "index", "server", {
    message: `server started on ${process.env.PORT}`,
  });
  await sequelize.authenticate();
  printLog("info", reqId, "index", "database", {
    message: `mysql database connected!`,
  });
});
