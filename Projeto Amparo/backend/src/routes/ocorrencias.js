/** Referencias */
let express = require('express');
let router = express.Router();
let controller = require('../controllers/OcorrenciasController');
// const auth = require("../../config/AuthJwt")();
// const autorization_middleware = require("../../config/AutorizationMiddleware")
/** 
 * Rotas Vinculadas aos seus repectivos metodos no controller
 */
router.post("/",controller.SalvarOcorrencia);
// router.put("/:id",controller.AtualizarInstituicao);
// router.get("/all/:id",controller.ListarInstitucoes);
// router.get("/:id",controller.BuscarInstituicao);

module.exports = router;