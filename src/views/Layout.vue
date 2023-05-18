<template>
  <div class="swiper-demo">
    <div class="swiper-container">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
          <router-link :to="{path: '/timeline'}">
            <img src="../assets/time_line.png" class="fronter">
          </router-link>
        </div>
        <div class="swiper-slide">
          <router-link :to="{path: '/relic'}">
            <img src="../assets/relic_detail.png" class="fronter">
          </router-link>
        </div>
      </div>
      <!-- 如果需要分页器 -->
      <div class="swiper-pagination"></div>

      <!-- 如果需要导航按钮 -->
      <div class="swiper-button-prev"></div>
      <div class="swiper-button-next"></div>

    </div>
    <div class="dibu">欢迎来到海外文物知识服务子系统</div>
  </div>
</template>

<script>
import Swiper from "swiper";
import 'swiper/css/swiper.min.css'
export default {
  data() {
    return {
    };
  },
  mounted() {
    new Swiper ('.swiper-container', {
      // direction: 'vertical', // 垂直切换选项
      loop: true, // 循环模式选项

      // 如果需要分页器
      pagination: {
        el: '.swiper-pagination',
      },

      // 如果需要前进后退按钮
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },

      // 如果需要滚动条
      scrollbar: {
        el: '.swiper-scrollbar',
      },
    })
  }
};
</script>

<style>

body {
  height: 100%;
  background-color: dimgray;
}
.swiper-container {
  height: 100%;
  width: 100%;
  position: relative;
  overflow: hidden;
}
.fronter {
  width: 100%;
  height: 100%;
  object-fit: fill;
}
.dibu {
  background-color: dimgray;
  text-align: center;
  font-size: 40px;
  font-style: normal;
}
</style>