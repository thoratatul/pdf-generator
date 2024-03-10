const { format } = require("date-fns");

const logDate = () => {
  return format(new Date(), "yyyy-MM-dd HH:mm:ss:SSS");
};

module.exports = { logDate };
