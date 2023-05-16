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
        <el-button type="primary" @click="filterData" class="button">Search</el-button>
      </el-col>
      <el-col :span="1">
        <el-button type="primary" @click="reset" class="button">Reset</el-button>
      </el-col>

    </el-row>

    <div
        v-for="(item, index) in showList"
        :key="index"
        class="index-board-item"
    >
      <div>
        <img :src="item.imgUrl" alt="">
      </div>
      <div class="index-board-button">
        <el-button
            type="primary"
            class="button"
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
import axios from 'axios'
import VueAxios from 'vue-axios'

Vue.use(VueAxios, axios)

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
      relic: [],
    };
  },


  mounted() {
    axios.get('http://101.43.245.160:8081//artifact/all').then(response=>{
      console.log(response.data)
      this.relic = response.data.data
      this.showList = response.data.data
    }).catch(error=>{
      console.log(error)
    })
    // this.showList = JSON.parse(JSON.stringify(this.relic))
  },
  methods: {

    filterData() {

      // axios.get('http://101.43.245.160:8081//artifact/all').then(function (response){
      //   console.log(response)
      //   console.log('hello')
      // })

      if (this.selectedCountry == '' && this.selectedDepartment == '') {
        this.showList = JSON.parse(JSON.stringify(this.relic))
        return
      }
      this.showList = this.relic.filter(item => {
        if(this.selectedCountry == '') return item.department === this.selectedDepartment
        if(this.selectedDepartment == '') return item.country === this.selectedCountry
        return item.department === this.selectedDepartment && item.country === this.selectedCountry
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
  margin-right: 17px;
  margin-left: 17px;
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
  background: dimgray;
  color: white;
  display: inline-block;
  padding: 10px 20px;
  margin-top: 2px;
  cursor: pointer;
}
</style>