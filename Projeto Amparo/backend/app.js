/**Arquivo de configurações servidor*/
const server = require('./config/Server');
const db = require('./config/Databases');
const socket_server = require('./src/socket-server/socket');



server.listen(3001,()=>{
    console.log("Servidor OK")
})

