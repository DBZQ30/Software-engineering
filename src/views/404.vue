<template>
  <div class = "bad">
    <div style="text-align: center">
      <div style="margin-top: 150px; font-size: 100px; ">404</div>
      <div style="font-size: 50px">未找到页面</div>
      <div><el-button type="text" style="margin-top: 20px; font-size: 20px" @click="$router.push('/')">返回主页</el-button></div>
    </div>
  </div>

</template>

<style scoped="scoped">
.bad{
  background: url("~@/assets/404.png") no-repeat;
  background-position: center;
  height:100%;
  width:100%;
  background-size:cover;
  position: fixed;
}
</style>