import Vue from 'vue'
import VueRouter from 'vue-router'
import Layout from '../views/Layout.vue'
import Cookies from "js-cookie";

Vue.use(VueRouter)

const routes = [
  //  ====== 登录  =====
  {
    path: '/login',
    name: 'Login',
    component: () => import('@/views/login/Login.vue'),
  },
  //  ====== 主页  =====
  {
    path: '/',
    name: 'Layout',
    component: Layout,
    redirect: '/home',
    children: [  // 子路由
      {
        path: 'home',
        name: 'Home',
        component: () => import('@/views/home/HomeView.vue'),
      },
      //  ====  Admin  ====
      { path: 'adminList', name: 'AdminList', component: () => import('@/views/admin/List.vue'), },
      { path: 'addAdmin', name: 'AddAdmin', component: () => import('@/views/admin/Add.vue'), },
      { path: 'editAdmin', name: 'EditAdmin', component: () => import('@/views/admin/Edit.vue'), },
    ]
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

router.beforeEach((to, from, next) => {
  if (to.path === '/login') next()
  const admin = Cookies.get("admin")
  if (!admin && to.path !== '/login') return next("/login")  // 强制退回到登录页面
  next()
})

export default router
