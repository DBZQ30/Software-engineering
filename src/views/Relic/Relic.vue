<template>
  <div>
    <el-row :gutter="24" type="flex" justify="start">
      <el-col :span="4">
        <el-input v-model="selectedID" placeholder="Search by ID"></el-input>
      </el-col>

      <el-col :span="4">
        <el-input v-model="selectedDated" placeholder="Search by Dated"></el-input>
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
      <div class="pic">
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
      selectedDated: '',
      selectedID: '',
      showList: [],
      relic: [],

  };
  },


  mounted() {
    axios.get('http://101.43.245.160:8081//artifact/all').then(response=>{
      console.log(response.data.data)
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

      if (this.selectedDated == '' && this.selectedID == '') {
        this.showList = JSON.parse(JSON.stringify(this.relic))
        return
      }
      this.showList = this.relic.filter(item => {
        if(this.selectedDated == '') return item.id === this.selectedID
        if(this.selectedID == '') return item.dated === this.selectedDated
        return item.id === this.selectedID && item.dated === this.selectedDated
      })
    },
    reset() {
      this.selectedDated = ''
      this.selectedID = ''
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
  margin-top: 5px;
  background-color: dimgray;

}

.pic {
  display: flex;
  justify-content: center;
  align-items: center;
}

.index-board-item h2 {
  font-size: 18px;
  font-weight: bold;
  color: #000;
  margin-bottom: 15px;

}

.index-board-button {
  margin-top: 25px;
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