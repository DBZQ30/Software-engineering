import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

const routes = [
  // ====== 登录  =====
  {
    path:'/',
    name:'login',
    component: () => import('@/views/Login/loginRegister.vue'),
  },

  //  ====== 主页  =====
  {
    path: '/layout',
    name: 'layout',
    component: () => import('@/views/Layout.vue'),

  },
  {
    path: '/timeline',
    name: 'timeline',
    component: () => import('@/views/home/timeline.vue'),
  },
  {
    path: '/relic',
    name: 'relic',
    component: () => import('@/views/Relic/Relic.vue')
  },
  {
    path: '/relic-detail/:id',
    name: 'relicDetail',
    component: () => import('@/views/Relic/components/RelicDetail')
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
