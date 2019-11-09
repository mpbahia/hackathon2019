//bibliotecas 
let express = require('express');
let body_parser = require('body-parser');
let cors = require('cors');
let fileUpload = require('express-fileupload')

/** Configurações do servidor - Middlewares */
let app = express();

/** Processamento de Contente type
 * application/json e x-www-form-url-encoded
 */
app.use(body_parser.urlencoded({extended:true,limit:"10mb"}))
app.use(body_parser.json())
app.use(fileUpload({
    limits: { fileSize: 50 * 1024 * 1024 },
}));

/**
 * Configuração de CORS 
 */
app.use(cors());

/**
 * Referencia e configuração de rotas 
 */
 const router_prefix = '/api/v1'

 const auth_router = require('../src/routes/auth')
 const ocorrencias_router = require('../src/routes/ocorrencias')
 const instituicoes = require('../src/routes/instituicoes')
 const tipo_ocorrencias = require('../src/routes/tipo_ocorrencia')

 /** Registro das rotas */
 app.use(router_prefix+"/auth",auth_router)
 app.use(router_prefix+"/ocorrencias",ocorrencias_router)
 app.use(router_prefix+"/instituicoes",instituicoes)
 app.use(router_prefix+"/tipos-ocorrencia",tipo_ocorrencias)


 /**
  * Ativar Passport e Middleware de Rotas JWT
 */
 const auth = require("../config/AuthJwt")();
 app.use(auth.initialize())

 /**
  * Pastas estaticas entregues ao cliente
  */
 app.use(express.static("./public"));

 module.exports = app;

