const sequelize = require('../../config/Databases');
const model = require('../models/TipoOcorrenciaModel')();

exports.GetTiposOcorrencia = async (req,res,next)=>{
    try{
      let response = await model.findAll()
        console.log(response)
        res.status(200).json({
            success:true,
            error:"",
            message:"",
            data:response
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

