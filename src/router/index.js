import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

const routes = [
  // ====== 登录  =====
  // {
  //   path:'/',
  //   name:'login',
  //   component: () => import('@/views/Login/loginRegister.vue'),
  // },

  // const data = {
  //   "m2": [
  //     {"id": "51", "title": "“Arms of Liberty” punch bowl", "dated": "c. 1770", "artist": "", "role": "Artist", "department": "European Art", "medium": "Porcelain", "country": "China", "description": "Holiday Traditions, Chas. Drawing Room, 'Wilkes Bowl', decorated in colors and gold a pair of medallions on each side, each forming a satyrical coat of arms, Cat Card Dims H.4-1/4 x Dia. 10 in.", "comments": "This punch bowl's pseudo-armorial was satirically drawn to poke fun at English political figures of the late 1760s for their opposition to John Wilkes (1727-97). A proponent of civil liberties and American independence, Wilkes was elected several times to the House of Commons, but repeatedly expelled for attacking King George III and his loyalists.  Acquired in 1914, this bowl was the first Chinese Export porcelain object to enter the Institute's permanent collection.", "web_url": "https://collections.artsmia.org/art/51", "img_url": "https://6.api.artsmia.org/51.jpg", "submit_time": "2023-04-11 13:08:48"},
  //     {"id": "66", "title": "Bottle", "dated": "16th-17th century", "artist": "", "role": "Artist", "department": "Chinese, South and Southeast Asian Art", "medium": "Porcelain with black mirror glaze", "country": "China", "description": "Bottle, black mirror glaze Kangxi period 1662-1722.", "comments": "", "web_url": "https://collections.artsmia.org/art/66", "img_url": "https://6.api.artsmia.org/66.jpg", "submit_time": "2023-04-11 13:09:07"},
  //     {"id": "67", "title": "Plate", "dated": "Kangxi period (1662-1722)", "artist": "", "role": "Artist", "department": "Asian Art", "medium": "Porcelain, famille verte", "country": "China", "description": "Plate, famille verte; K'ang Hsi period", "comments": "Unlike the monochrome tradition, this finely executed plate represents a less restrained aspect of Qing ceramic taste. Nevertheless, a technical virtuosity is apparent in the overglaze enamels which create a richly varied design of butterflies and flowers on a green stipple ground. A work such as this, eggshell thin and of flawless brushwork, is the reward of 2,500 years of constant effort by the Chinese to create faultless ceramics. It is natural that such exquisite objects often functioned as purely decorative pieces.", "web_url": "https://collections.artsmia.org/art/67", "img_url": "https://6.api.artsmia.org/67.jpg", "submit_time": "2023-04-11 13:09:08"},
  //   ]

  //  ====== 主页  =====
  {
    path: '/',
    name: 'layout',
    component: () => import('@/views/Layout.vue'),

  },
  {path: '/timeline', name: 'timeline', component: () => import('@/views/home/timeline.vue'),},
  {path: '/relic', name: 'relic', component: () => import('@/views/Relic/Relic.vue'),},
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
