var express = require("express");
var router = express.Router();

var medidaController = require("../controllers/medidaController");

router.get("/ultimas/:idmapa", function (req, res) {
    medidaController.buscarUltimasMedidas(req, res);
});

router.get("/tempo-real/:idmapa", function (req, res) {
    medidaController.buscarMedidasEmTempoReal(req, res);
})

router.get("/ultimas/:idarma", function (req, res) {
    medidaController.buscarUltimasMedidas2(req, res);
});

router.get("/tempo-real/:idarma", function (req, res) {
    medidaController.buscarMedidasEmTempoReal2(req, res);
})

router.get("/ultimas/:idoperador", function (req, res) {
    medidaController.buscarUltimasMedidas3(req, res);
});

router.get("/tempo-real/:idoperador", function (req, res) {
    medidaController.buscarMedidasEmTempoReal3(req, res);
})

module.exports = router;