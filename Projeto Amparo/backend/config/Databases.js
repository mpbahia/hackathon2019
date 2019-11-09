/**
 * Instancia sequelizer
 */
const Sequelize  = require('sequelize');
/**
 * Configuracoes de banco de dados
 */
const config_sequelize = new Sequelize('project_hackathon','root','',{
    host:"localhost",
    dialect:'mysql'
})


module.exports = config_sequelize;