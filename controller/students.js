const { generateIds } = require("./../service/students");

const generateIdCardsSync = async (req, res) => {
  try {
    printLog("info", req.reqId, "studentsController", "generateIdCards", {});
    const { statusCode, ...generateIdCardsResp } = await generateIds(
      req.reqId,
      "sync"
    );
    res.status(statusCode).send(generateIdCardsResp);
  } catch (error) {
    const message = error.message || error.stack;
    printLog("error", req.reqId, "studentsController", "generateIdCards", {
      message,
    });
    res.status(400).send({ success: false, message });
  }
};

const generateIdCardsAsync = async (req, res) => {
  try {
    printLog("info", req.reqId, "studentsController", "generateIdCards", {});
    const { statusCode, ...generateIdCardsResp } = await generateIds(
      req.reqId,
      "async"
    );
    res.status(statusCode).send(generateIdCardsResp);
  } catch (error) {
    const message = error.message || error.stack;
    printLog("error", req.reqId, "studentsController", "generateIdCards", {
      message,
    });
    res.status(400).send({ success: false, message });
  }
};

module.exports = { generateIdCardsSync, generateIdCardsAsync };
