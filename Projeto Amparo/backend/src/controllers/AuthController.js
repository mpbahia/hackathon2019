/** Referencias */
let jwt_simple = require('jwt-simple')
let config = require('../../config/JwtConfig')
const encMd5 = require('md5');
const sequelize = require('../../config/Databases');


exports.post = (req,res,next)=>{ 


}

exports.test = (req,res,next)=>{
    res.send("ok")
}