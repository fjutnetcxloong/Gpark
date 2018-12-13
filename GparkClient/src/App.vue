<template>
 <div class="gamePark">
    <header id="header" class="mui-bar mui-bar-transparent">
        <a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
        <a id='show'><span class="mui-icon mui-icon-bars"></span></a>
        <ul class='nav'>
                <li @click='goto(1)'>Home</li>
                <li @click='goto(2)'>About</li>
                <li @click='goto(3)'>Games</li>
                <li @click='goto(4)'>News</li>
                <li @click='goto(5)'>Contact</li>
            </ul>
	</header>
    <div id='blank'></div>
    <router-view></router-view>
    <!--
    <div class='footer'>
        <div class='f_first'>
            <h3>Contact</h3>
            <p><a>ex@mail.com</a></p><p>+18045678834</p><p>4th Avenue,London</p><p>(0033)6544 5453 644</p>
        </div>
        <div class='f_second'>
            <h3>Latest Game</h3>
            <div class='game'>
                <img src='./img/ng1.jpg'><img src='./img/ng2.jpg'>
                <img src='./img/ng3.jpg'><img src='./img/ng4.jpg'>
                <img src='./img/ng5.jpg'><img src='./img/ng6.jpg'>
                <img src='./img/ng7.jpg'><img src='./img/ng8.jpg'>
            </div>
        </div>
        <div class='f_third'>
            <h3>Games <img src='./img/f1.png'> Zone</h3>
            <p>Donec lobortis diam eu auctor porta. Phasellus in elementum tortor, sit amet imperdiet urna pellentesque non risus porta.</p>
            <p>Suspendisse convallis malesuada libero, non rutrum arcu pellentesque lacinia.</p>
        </div>
    </div>
    -->
 </div>
</template>
<script>
    export default{
        data(){
            return {}
        },
        methods:{
            show(){
                var a=document.getElementById('show')
                a.onclick=function(){
                    var ul=document.querySelector('.nav')
                    if(getComputedStyle(ul).display=='none')
                    ul.style.display='block';
                    else ul.style.display='none';
                }
            },
            goto(n){
                if(n==1) this.$router.push('/index');
                if(n==2) this.$router.push('/about');
                if(n==3) this.$router.push('/games');
                if(n==4) this.$router.push('/news');
                if(n==5) this.$router.push('/contact');                  
            }
        },
        mounted() {
            this.show();
            this.goto();
        }
    }
</script>
<style>
    #blank{width:375px;height:50px;}
    .nav{
        list-style:none;
        position:absolute;
        left:300px;
        top:30px;
        color:white;
        font-size:20px;
        background:blue;
        display:none;
        padding:3px;
    }
    .nav li{
        text-align:left;
        margin:20px 0;
    }
   .app-container{
     padding-top:40px;
     padding-bottom:50px;
     overflow-x:hidden;
   }

 .mui-bar-tab .mui-tab-item-tao.mui-active {
    color: #007aff;
 }
.mui-bar-tab .mui-tab-item-tao {
    display: table-cell;
    overflow: hidden;
    width: 1%;
    height: 50px;
    text-align: center;
    vertical-align: middle;
    white-space: nowrap;
    text-overflow: ellipsis;
    color: #929292;
}
.mui-bar-tab .mui-tab-item-tao .mui-icon {
    top: 3px;
    width: 24px;
    height: 24px;
    padding-top: 0;
    padding-bottom: 0;
}

.mui-bar-tab .mui-tab-item-tao .mui-icon~.mui-tab-label {
   font-size:11px;
   display:block;
   overflow:hidden;
   text-overflow:ellipsis;
}
.footer>.f_second>.game img{
    width:80.25px;
    height:80.25px;
    margin-left:10px;
}
.footer>.f_second>.game{
    width:100%;
    text-overflow:ellipsis;
}
.footer>.f_third img{
    width:26px;
    height:20px;
}
.footer>.f_third h3{
    margin-left:50px;
    color:#E91E63;
}
.footer>.f_third p{
    font-size:14px;
    
    margin:10px 20px;
}
#header{
    display:inline-flex;
    justify-content:space-between;
    width:100%;
    height:50px;
    background:rgba(45,55,66,.3);
}
.mui-bar.mui-bar-transparent h1 a span img{
    width:36px;
    height:36px;
}
.mui-bar.mui-bar-transparent h1 a span{
    font-size:36px;
    color:#fff;
}
.mui-bar.mui-bar-transparent h1{
    display:flex;
    justify-content:space-between;
}

</style>
