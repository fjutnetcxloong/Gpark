import Vue from 'vue'
import App from './App.vue'
import router from './router'

import'mint-ui/lib/style.css'
Vue.config.productionTip = false
import './lib/mui/css/mui.css'
import './lib/mui/css/icons-extra.css'

//引入组件mintui库Header
//-引入指定组件
import MintUI from 'mint-ui'
Vue.use(MintUI)

import axios from 'axios'
axios.default.withCredentials=true
Vue.prototype.axios=axios;
import VueResource from 'vue-resource'
Vue.use(VueResource)

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
