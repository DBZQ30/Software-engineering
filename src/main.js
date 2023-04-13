import Vue from 'vue'
import axios from 'axios'
import App from './App.vue'
import router from './router'
import '../public/reset.css'
import '@/assets/global.css'
Vue.prototype.$axios = axios

Vue.config.productionTip = false
import ElementUI from 'element-ui';
import SlideVerify from 'vue-monoplasty-slide-verify';

Vue.use(SlideVerify);
Vue.config.productionTip = false
Vue.use(ElementUI, { size: 'small' });  // medium  small mini

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
