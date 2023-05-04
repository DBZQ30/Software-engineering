<template>
  <div class="swiper-demo">
    <div class="swiper-container">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
          <a href="/timeline">
            <img src="../assets/main1.jpg" width="1380" height="730">
          </a>
        </div>
        <div class="swiper-slide">
          <a href="/relic">
            <img src="../assets/main1.jpg" width="1380" height="730">
          </a>

        </div>
      </div>
      <!-- 如果需要分页器 -->
      <div class="swiper-pagination"></div>

      <!-- 如果需要导航按钮 -->
      <div class="swiper-button-prev"></div>
      <div class="swiper-button-next"></div>

    </div>
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
.swiper-container {
  width: 100%;
  height: 100%;
}

</style>