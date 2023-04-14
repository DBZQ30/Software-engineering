<template>
  <div>
    <!-- 头部区域 -->
    <div style="height: 60px; line-height: 60px; background-color: white; margin-bottom: 2px; display: flex">
      <div style="width: 800px">
        <span style="margin-left: 25px; font-size: 24px">海外藏中国文物知识管理与服务平台-海外文物知识服务子系统</span>
      </div>
      <div style="width: 300px">
        <span style="margin-left: 25px; font-size: 24px">二团二组</span>
      </div>
<!--      <div style="flex: 1; text-align: right; padding-right: 20px">-->
<!--        <el-dropdown size="medium">-->
<!--          <span class="el-dropdown-link" style="cursor: pointer">-->
<!--            {{ user.username }}<i class="el-icon-arrow-down el-icon&#45;&#45;right"></i>-->
<!--          </span>-->
<!--          <el-dropdown-menu slot="dropdown" style="margin-top: -5px">-->
<!--            <el-dropdown-item><div style="width: 50px; text-align: center;" @click="logout">退出</div></el-dropdown-item>-->
<!--          </el-dropdown-menu>-->
<!--        </el-dropdown>-->
<!--      </div>-->
     </div>

<!--    &lt;!&ndash; 侧边栏和主体 &ndash;&gt;-->
<!--    <div style="display: flex">-->
<!--      &lt;!&ndash; 侧边栏导航 &ndash;&gt;-->
<!--      <div style="width: 200px; min-height: calc(100vh - 62px); overflow: hidden; margin-right: 2px; background-color: white">-->
<!--        <el-menu :default-active="$route.path" router class="el-menu-demo" style="margin-bottom: 10px">-->
<!--          <el-menu-item index="/">-->
<!--            <i class="el-icon-eleme"></i>-->
<!--            <span>首页</span>-->
<!--          </el-menu-item>-->
<!--          <el-submenu index="user">-->
<!--            <template slot="title">-->
<!--              <i class="el-icon-question"></i>-->
<!--              <span>用户管理</span>-->
<!--            </template>-->
<!--            <el-menu-item index="/userList">用户列表</el-menu-item>-->
<!--          </el-submenu>-->
<!--        </el-menu>-->
<!--      </div>-->

      <!-- 主体数据 -->
      <!-- width: 0; 可以限制容器的宽度，不被子元素无限撑开-->
<!--      <div style="flex: 1; width: 0; background-color: white; padding: 10px">-->
<!--        <router-view />-->
<!--      </div>-->
  </div>
</template>

<script>
// import Cookies from 'js-cookie'
//
// export default {
//   name: "Layout.vue",
//   data() {
//     return {
//       admin: Cookies.get('admin') ? JSON.parse(Cookies.get('admin')) : {}
//     }
//   },
//   methods: {
//     logout() {
//       // 清除浏览器用户数据
//       Cookies.remove('admin')
//       this.$router.push('/login')
//     }
//   }
// }
</script>

<style scoped>

</style>