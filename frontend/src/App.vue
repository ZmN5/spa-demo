<template>
  <div id="app">
    <div>{{ msg }}</div>
    <button @click="getMsg">获取信息</button>
  </div>
</template>

<script>
import axios from "axios"
export default {
  name: 'app',
  data () {
    return {
      msg: 'hw'
    }
  },
  methods: {
    getMsg(){
      const api = '/api/msgs'
      axios.get(api).then(resp => {
        this.msg = resp.data
      })
    }
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
