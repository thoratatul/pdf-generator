const trimRequest = require("trim-request");
const {
  generateIdCardsSync,
  generateIdCardsAsync,
} = require("./../controller/students");

router.get("/generateIdCardsSync", trimRequest.all, generateIdCardsSync);
router.get("/generateIdCardsAsync", trimRequest.all, generateIdCardsAsync);

module.exports = router;
