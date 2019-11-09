const Sequelize = require('sequelize');
const sequelize = require('../../config/Databases');

const Model = Sequelize.Model;

class Ocorrencias extends Model{}

module.exports = () => {
    Ocorrencias.init({
    id_ocorrencia:{
        type:Sequelize.BIGINT,
        primaryKey:true,
        autoIncrement:true,
        allowNull:false
    },
    nome:{
        type:Sequelize.STRING(200),
        allowNull:true
    },
    descricao_ocorrencia:{
        type:Sequelize.TEXT('long'),
        allowNull:false
    },
    anonima:{
        type:Sequelize.TINYINT,
        allowNull:false
    },
    latitude:{
        type:Sequelize.STRING(1000),
        allowNull:true
    },
    logitude:{
        type:Sequelize.STRING(1000),
        allowNull:true
    },
    id_tipo_ocorrencia:{
        type:Sequelize.INTEGER,
        allowNull:true
    },
    dt_criacao:{
        type:Sequelize.DATE,
        allowNull:true
    },
    emergencia:{
        type:Sequelize.TINYINT,
        allowNull:true
    }

},{
    sequelize,
    modelName:"ocorrencia",
    freezeTableName:true,
    timestamps:false,
    force:false
})
Ocorrencias.sync();
 return Ocorrencias
}