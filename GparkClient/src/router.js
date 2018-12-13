import Vue from 'vue'
import Router from 'vue-router'
Vue.use(Router)
import HelloContainer from "./components/HelloWorld.vue"
//1:引入自定义组件 
import index from './components/index.vue'
import games from './components/games'
import contact from './components/contact'
import about from './components/about'
import news from './components/news'
import single from './components/single'

//2:配置访问自定义组件路径
//   {path访问路径 component  组件名称}
export default new Router({
  routes: [
    {path:'/',component:HelloContainer},
    {path:'/index',component:index},
    {path:'/games',component:games},
    {path:'/about',component:about},
    {path:'/news',component:news},
    {path:'/single',component:single}

  ]
})


