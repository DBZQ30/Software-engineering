<template>
  <div>
    <el-row :gutter="24" type="flex" justify="start">
      <el-col :span="4">
        <el-input v-model="selectedDepartment" placeholder="Search by department"></el-input>
      </el-col>

      <el-col :span="4">
        <el-input v-model="selectedCountry" placeholder="Search by country"></el-input>
      </el-col>

      <el-col :span="2">
        <el-button type="primary" @click="filterData">Search</el-button>
      </el-col>
      <el-col :span="1">
        <el-button type="primary" @click="reset">Reset</el-button>
      </el-col>

    </el-row>

    <div
        v-for="(item, index) in showList"
        :key="index"
        class="index-board-item"
    >
      <div>
        <img :src="item.img_url" alt="">
      </div>
      <div class="index-board-button">
        <el-button
            type="primary"
        @click="$router.push({ path: `/relic-detail/${item.id}` })">Details</el-button>
      </div>
    </div>
  </div>
</template>

<script>

import Chat from 'vue-beautiful-chat'
import Vue from "vue";
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css';

Vue.use(Chat)
Vue.use(ElementUI)
// department和country
export default {
  name: 'app',
  data() {
    return {
      selectedCountry: '',
      selectedDepartment: '',
      showList: [],
      relic: [
        {
          "id": "157",
          "title": "Vase with the Eight Daoist Immortals",
          "dated": "c. 1300",
          "artist": "",
          "role": "Artist",
          "department": "Asian Art",
          "medium": "Longquan ware Porcelain with celadon glaze over impressed designs",
          "country": "Enginsh",
          "description": "Longquan ware; celadon glaze with 8 unglazed cartouches carved with immortals; floral cartouches above and below each immortal; low foot, narrow mouth",
          "comments": "This ovoid vase has an octagonal cross section and each of the eight sides comprising the vessel is decorated with molded recessed panels depicting one of the Eight Daoist Immortals amidst two floral sprays. The images of the immortals are shown standing on drifting clouds and each carry their identifying attributes.\r\nA wax resist technique was employed in the decoration of this piece. The central panels were painted with wax before glazing to prevent the celadon glaze from adhering to those areas. Upon firing, the unglazed portions of the clay body burned a bright rust color due to iron compounds in the clay.",
          "web_url": "https://collections.artsmia.org/art/157",
          "img_url": "https://6.api.artsmia.org/157.jpg",
          "submit_time": "2023-04-11 13:11:01"
        },
        {
          "id": "158",
          "title": "Vase with the Eight Daoist Immortals",
          "dated": "c. 1300",
          "artist": "",
          "role": "Artist",
          "department": "Asian Art",
          "medium": "Longquan ware Porcelain with celadon glaze over impressed designs",
          "country": "Enginsh",
          "description": "Longquan ware; celadon glaze with 8 unglazed cartouches carved with immortals; floral cartouches above and below each immortal; low foot, narrow mouth",
          "comments": "This ovoid vase has an octagonal cross section and each of the eight sides comprising the vessel is decorated with molded recessed panels depicting one of the Eight Daoist Immortals amidst two floral sprays. The images of the immortals are shown standing on drifting clouds and each carry their identifying attributes.\r\nA wax resist technique was employed in the decoration of this piece. The central panels were painted with wax before glazing to prevent the celadon glaze from adhering to those areas. Upon firing, the unglazed portions of the clay body burned a bright rust color due to iron compounds in the clay.",
          "web_url": "https://collections.artsmia.org/art/155",
          "img_url": "https://6.api.artsmia.org/155.jpg",
          "submit_time": "2023-04-11 13:11:01"
        },
        {
          "id": "159",
          "title": "Vase with the Eight Daoist Immortals",
          "dated": "c. 1300",
          "artist": "",
          "role": "Artist",
          "department": "Asian Art",
          "medium": "Longquan ware Porcelain with celadon glaze over impressed designs",
          "country": "Enginsh",
          "description": "Longquan ware; celadon glaze with 8 unglazed cartouches carved with immortals; floral cartouches above and below each immortal; low foot, narrow mouth",
          "comments": "This ovoid vase has an octagonal cross section and each of the eight sides comprising the vessel is decorated with molded recessed panels depicting one of the Eight Daoist Immortals amidst two floral sprays. The images of the immortals are shown standing on drifting clouds and each carry their identifying attributes.\r\nA wax resist technique was employed in the decoration of this piece. The central panels were painted with wax before glazing to prevent the celadon glaze from adhering to those areas. Upon firing, the unglazed portions of the clay body burned a bright rust color due to iron compounds in the clay.",
          "web_url": "https://collections.artsmia.org/art/155",
          "img_url": "https://6.api.artsmia.org/168.jpg",
          "submit_time": "2023-04-11 13:11:01"
        },
        {
          "id": "160",
          "title": "Vase with the Eight Daoist Immortals",
          "dated": "c. 1300",
          "artist": "",
          "role": "Artist",
          "department": "Asian Art",
          "medium": "Longquan ware Porcelain with celadon glaze over impressed designs",
          "country": "Enginsh",
          "description": "Longquan ware; celadon glaze with 8 unglazed cartouches carved with immortals; floral cartouches above and below each immortal; low foot, narrow mouth",
          "comments": "This ovoid vase has an octagonal cross section and each of the eight sides comprising the vessel is decorated with molded recessed panels depicting one of the Eight Daoist Immortals amidst two floral sprays. The images of the immortals are shown standing on drifting clouds and each carry their identifying attributes.\r\nA wax resist technique was employed in the decoration of this piece. The central panels were painted with wax before glazing to prevent the celadon glaze from adhering to those areas. Upon firing, the unglazed portions of the clay body burned a bright rust color due to iron compounds in the clay.",
          "web_url": "https://collections.artsmia.org/art/155",
          "img_url": "https://6.api.artsmia.org/167.jpg",
          "submit_time": "2023-04-11 13:11:01"
        },
        {
          "id": "161",
          "title": "Vase with the Eight Daoist Immortals",
          "dated": "c. 1300",
          "artist": "",
          "role": "Artist",
          "department": "Asian Art",
          "medium": "Longquan ware Porcelain with celadon glaze over impressed designs",
          "country": "Englinsh",
          "description": "Longquan ware; celadon glaze with 8 unglazed cartouches carved with immortals; floral cartouches above and below each immortal; low foot, narrow mouth",
          "comments": "This ovoid vase has an octagonal cross section and each of the eight sides comprising the vessel is decorated with molded recessed panels depicting one of the Eight Daoist Immortals amidst two floral sprays. The images of the immortals are shown standing on drifting clouds and each carry their identifying attributes.\r\nA wax resist technique was employed in the decoration of this piece. The central panels were painted with wax before glazing to prevent the celadon glaze from adhering to those areas. Upon firing, the unglazed portions of the clay body burned a bright rust color due to iron compounds in the clay.",
          "web_url": "https://collections.artsmia.org/art/155",
          "img_url": "https://6.api.artsmia.org/170.jpg",
          "submit_time": "2023-04-11 13:11:01"
        },
      ]
    };
  },
  mounted() {
    this.showList = JSON.parse(JSON.stringify(this.relic))
  },
  methods: {

    filterData() {
      if (this.selectedCountry == '' && this.selectedDepartment == '') {
        this.showList = JSON.parse(JSON.stringify(this.relic))
        return
      }
      this.showList = this.relic.filter(item => {
        return item.department === this.selectedDepartment || item.country === this.selectedCountry
      })
    },
    reset() {
      this.selectedCountry = ''
      this.selectedDepartment = ''
      this.showList = JSON.parse(JSON.stringify(this.relic))
    }
  }
};
</script>

<style scoped>

.index-board-item {
  float: left;
  width: 249px;
  height: 400px;
  box-shadow: 0 0 1px #4fc08d;
  padding: 20px;
  margin-right: 34px;
  margin-bottom: 80px;
  background-color: dimgray;
}

.index-board-item h2 {
  font-size: 18px;
  font-weight: bold;
  color: #000;
  margin-bottom: 15px;
}

.index-board-button {
  margin-top: 15px;
  margin-left: 80px;
}

.button {
  background: #4fc08d;
  color: #fff;
  display: inline-block;
  padding: 10px 20px;
  cursor: pointer;
}
</style>