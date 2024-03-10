const { Sequelize } = require("sequelize");

exports.sequelize = new Sequelize({
  host: "127.0.0.1",
  dialect: "mysql",
  username: "root",
  password: "Pass23@#",
  database: "assignment",
});
