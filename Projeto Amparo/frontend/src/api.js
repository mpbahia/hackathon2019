import Axios from 'axios'




export default Axios.create({
    baseURL:"http://192.168.1.20:3000/api/v1",
})