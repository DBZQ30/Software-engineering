import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

const routes = [
    //  ====== 登录  =====
  // {
	//   path:'/',
	//   name:'login',
  //     component: () => import('@/views/Login/loginRegister.vue'),
  // }.
    //  ====== 主页  =====
    {
        path: '/',
        name: 'Layout',
        component: () => import('@/views/Layout.vue'),
    },
    {
        path: "*",
        component:() => import('@/views/404.vue')
    }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
