const Sequelize = require('sequelize');
const sequelize = require('../../config/Databases');

const Model = Sequelize.Model;

class TipoOcorrencia extends Model{}

module.exports = () => {
    TipoOcorrencia.init({
    id_tipo_ocorrencia:{
        type:Sequelize.BIGINT,
        primaryKey:true,
        autoIncrement:true,
        allowNull:false
    },
    descricao:{
        type:Sequelize.STRING(200),
        allowNull:true
    }
},{
    sequelize,
    modelName:"tipo_ocorrencia",
    freezeTableName:true,
    timestamps:false,
    force:false
})
TipoOcorrencia.sync();
 return TipoOcorrencia
}