const sequelize = require('../../config/Databases');

exports.GetInstituicoes = async (req,res,next)=>{
    try{
      let response = await sequelize.query(`select i.id_instituicao,i.nome from instituicoes i join regiao r on i.id_regiao = r.id_regiao WHERE CIDADE = "${req.body.cidade}" AND BAIRRO = "${req.body.bairro}"`)
      
        res.status(200).json({
            success:true,
            error:"",
            message:"",
            data:response[0]
        })
    }catch(e){
        res.status(500).json({
            success:false,
            error:e.message,
            message:"",
            data:""
        })
    }
}

