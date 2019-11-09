import Vue from 'vue'
import VueRouter from 'vue-router'
import Login from '../views/Login'
import Template from '../views/Template'
import Home from '../views/Home/Home'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'login',
    component: Login,
    redirect: "/index"
  },
  {
    path:'/index',
    name:"index",
    component:Template,
    redirect:"/index/home",
    children:[
      {
        path: 'home',
        name: 'home',
        component: Home
      },
    ]
  }
]

const router = new VueRouter({
  routes
})

export default router
