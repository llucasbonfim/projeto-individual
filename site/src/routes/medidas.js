var express = require("express");
var router = express.Router();

var medidaController = require("../controllers/medidaController");

router.get("/ultimas/:idmapa", function (req, res) {
    medidaController.buscarUltimasMedidas(req, res);
});

router.get("/tempo-real/:idmapa", function (req, res) {
    medidaController.buscarMedidasEmTempoReal(req, res);
})


router.get("/ultimas2/:idarma", function (req, res) {
    medidaController.buscarUltimasMedidas2(req, res);
});

router.get("/tempo-real2/:idarma", function (req, res) {
    medidaController.buscarMedidasEmTempoReal2(req, res);
})


router.get("/ultimas3/:idoperador", function (req, res) {
    medidaController.buscarUltimasMedidas3(req, res);
});

router.get("/tempo-real3/:idoperador", function (req, res) {
    medidaController.buscarMedidasEmTempoReal3(req, res);
})

module.exports = router;