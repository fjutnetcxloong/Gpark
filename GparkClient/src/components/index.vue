<template>
    <div class='g-index'>
        <mt-swipe :auto='2000'>
            <mt-swipe-item v-for='item in list' :key='item.pid'>
                <img :src='item.url'>
            </mt-swipe-item>
        </mt-swipe>
        <div class='hotGames'>   
            <h1>热门游戏</h1>
            <div class='game_list'>
            <ul class='aul'>
                <li v-for='item in gameList' :key='item.pid' @click='go()'>
                <p>四偶记</p>
                <img :src='item.url'>
                </li>
            </ul>
            </div>
        </div>
        <div class='service'>
            <h1>服务</h1>
            <div class="mui-content">
                <ul class="mui-table-view mui-grid-view mui-grid-9">
                    <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a>
                        <div class='myDiv'>
                        <span class="mui-icon mui-icon-home"></span>
                        <div class="mui-media-body">Quis tortor</div>
                        </div></a>
                        <p><router-link to='/single'>阅读更多</router-link></p>
                        <div class='myDivs'>dhjsghj dhks jkdh dhj dhskudh dhskuhk dhsia dshuihk</div>
                    </li>
                    <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a>
                        <div class='myDiv'>
                        <span class="mui-icon mui-icon-email"><span class="mui-badge">5</span></span>
                        <div class="mui-media-body">Eret arcu</div>
                        </div></a>
                        <p><router-link to='/single'>阅读更多</router-link></p>
                        <div class='myDivs'>dhjsghj dhks jkdh dhj dhskudh dhskuhk dhsia dshuihk</div>
                    </li>
                    <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a>
                        <div class='myDiv'>
                        <span class="mui-icon mui-icon-location"></span>
                        <div class="mui-media-body">Risus porta</div>
                        </div></a>
                        <p><router-link to='/single'>阅读更多</router-link></p>
                        <div class='myDivs'>dhjsghj dhks jkdh dhj dhskudh dhskuhk dhsia dshuihk</div>
                    </li>
                    <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a>
                        <div class='myDiv'>
                        <span class="mui-icon mui-icon-search"></span>
                        <div class="mui-media-body">Proin satien</div>
                        </div></a>
                        <p><router-link to='/single'>阅读更多</router-link></p>
                        <div class='myDivs'>dhjsghj dhks jkdh dhj dhskudh dhskuhk dhsia dshuihk</div>
                    </li>
                </ul> 
            </div>
        </div>
        <div class='newGame'>
            <h1>新游戏</h1>
            <div class='news'>
                <p v-for='item in ngList' :key='item.pid'><img :src='item.img_url'></p>
                <mt-button size="large" @click="getNgList()">{{loadMore}}</mt-button>
            </div>
        </div>
    </div>
</template>
<script>
    export default{
        data(){
            return {
                list:[],
                gameList:[],
                ngList:[],
                pno:0,//当前页码
                psize:6,//每页数量
                pcount:4,//总页数
                loadMore:'加载更多'
            }
        },
        methods:{
            getImgList(){
                this.$http.get('http://127.0.0.1:4444/imgList').then(res=>{
                    this.list=res.body;
                })
            },
            getGameList(){
                this.$http.get('http://127.0.0.1:4444/gameList').then(res=>{
                    this.gameList=res.body;
                })
            },
            getNgList(){
                this.pno++;
                this.$http.get('http://127.0.0.1:4444/ngList?pno='+this.pno+'&psize='+this.psize).then(res=>{
                    this.ngList=res.body;
                })
            },
            go(){this.$router.push('/single')},
            fun(){
                var game_list=document.querySelector('.hotGames .game_list')
                var ul=document.querySelector('.hotGames .game_list .aul');
                var li=document.querySelectorAll('.hotGames .game_list .aul>li')
                ul.style.width=(li[0].offsetWidth+5)*li.length+'px';
                ul.innerHTML+=ul.innerHTML;
                function roll(){
                    if(ul.offsetLeft<=-ul.offsetWidth+70){
                        ul.style.left=0;
                    }
                    ul.style.left=ul.offsetLeft-1+'px';
                }
                setInterval(roll,10)
            }
        },
        created(){
            this.getImgList();
            this.getGameList();
            this.getNgList();
        },
        mounted() {
            setTimeout(this.fun,11);
            
        }
    }
</script>
<style>
    .hotGames div.game_list{width:375px;overflow:hidden;position:relative;}
    .hotGames div.game_list ul{
        width:900px;
        list-style:none;
        display:flex;
        position:relative;
    }
    .hotGames div.game_list ul li{width:180px; margin-right:25px;}
    .hotGames div.game_list ul li img{width:142.5px;height:189.63px;}
    .hotGames,.service,.newGame{
        color:#E91E63;
        text-align:center;
        margin:50px auto;
    }
    .service{background:rgb(242,242,242);padding-top:30px;}
    .service h1{height:20px;}
    .g-index .mint-swipe{
       height:12em;
   }
   .mint-swipe-items-wrap > div.is-active img{
       width:100%;
       height:100%;
   }  
    .mui-icon-extra.mui-icon-extra-arrowrightcricle,.mui-icon-extra.mui-icon-extra-arrowleftcricle{
        display:inline-block;
        height:40px;
        background:black;
        color:#fff;
        line-height:40px;
    }
    .mui-table-view.mui-grid-view .mui-table-view-cell.mui-col-xs-4{
        width:50%;
    }
    .myDiv{
        text-align:center;
        line-height:80px;
        border-radius:50%;
        border:1px solid red;
        width:80px;
        height:80px;
        margin:20px 30px;
        margin-top:10px;
    }
    .mui-table-view.mui-grid-view.mui-grid-9 p{
        width:80px;
        height:30px;
        border:2px solid red;
        text-align:center;
        line-height:30px;
        color:red;
        position:relative;
        left:30px;
    }
    .mui-table-view.mui-grid-view.mui-grid-9 p a{
        text-decoration:none;
        color:red;
    }
    .myDivs{
        color:#aaa;
        font-size:14px;
    }
    .newGame{
        padding-top:30px;
        width:375px;
        background:#fff;
    }
    .newGame div.news{
        display:flex;
        flex-wrap:wrap;
        justify-content:space-around;
    }
    .newGame .news p{
        width:50%;
    }
    .newGame img{
        width:160px;
        height:160px;
    }
</style>