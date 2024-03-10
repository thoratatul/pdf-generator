global.router = express.Router();
const routesPath = `${__dirname}`;

const extensionRemover = (file) => {
  return file.split(".").slice(0, -1).join(".");
};

fs.readdirSync(routesPath).filter((file) => {
  const routesFile = extensionRemover(file);
  if (routesFile != "index") {
    printLog("info", uuidv4(), "routes", "listener", {
      message: `loaded route ${routesFile}`,
    });
    return router.use(`/${routesFile}`, require(`./${routesFile}`));
  } else return;
});

router.use("*", (_, res) => {
  res.status(404).send({
    success: false,
    code: "URL_NOT_FOUND",
    message: "Mentioned api does not exists",
  });
});

module.exports = router;
