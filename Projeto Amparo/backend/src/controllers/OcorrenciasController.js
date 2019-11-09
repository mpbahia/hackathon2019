const sequelize = require('../../config/Databases');
const model = require('../models/OcorrenciasModel')();

exports.SalvarOcorrencia = async (req,res,next)=>{
    try{
      let response = await model.create(req.body)
        res.status(203).json({
            success:true,
            error:"",
            message:"Ocorrencia cadastrada com sucesso.",
            data:""
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

