<template>
    <div class='about'>
        <div class="title">
				关于我们
			</div>
		<div class="mui-card" style="margin-bottom: 35px;">
			<ul class="mui-table-view">
				<li class="mui-table-view-cell">
					<a class="mui-navigate-right">
						<span>1</span> Qui Ratione Voluptatem Dolores
					</a>
				</li>
				<li class="mui-table-view-cell">
					<a class="mui-navigate-right">
						<span>2</span> Dolores Eos Qui Ratione Volu
					</a>
				</li>
				<li class="mui-table-view-cell">
					<a class="mui-navigate-right">
						<span>3</span> Voluptatem Quia Voluptas Sit Asper
					</a>
				</li>
                <li class="mui-table-view-cell">
					<a class="mui-navigate-right">
						<span>4</span> Consectetur Adipiscing Elit, Incid
					</a>
				</li>
                <li class="mui-table-view-cell">
					<a class="mui-navigate-right">
						<span>5</span> Quia Voluptas Sit Aspernatur Aut
					</a>
				</li>
                <li class="mui-table-view-cell">
					<a class="mui-navigate-right">
						<span>6</span> Eos Qui Ratione Voluptatem Sequi
					</a>
				</li>
			</ul>
		</div>
        <div class='pic'>
            <img src='../img/about.jpg'>
            <div class='picText'>
                <p>Suspendisse convallis malesuada libero, non rutrum arcu pellentesque lacinia.</p>
                <h2>GAMES ZONE</h2>
            </div>
        </div>
        <div class='bigPic'></div>
        <div class='listPic'>
            <div class='list'>
                <img src='../img/c1.png'>
                <h3>Convallis</h3>
                <p>A elementum ligula lacus ac quam ultrices a scelerisque praesent vel suspendisse scelerisque.</p>
            </div><div class='list1'></div>
            <div class='list'>
                <img src='../img/c2.png'>
                <h3>Lacinia</h3>
                <p>A elementum ligula lacus ac quam ultrices a scelerisque praesent vel suspendisse scelerisque.</p>
            </div><div class='list2'></div>
            <div class='list'>
                <img src='../img/c3.png'>
                <h3>Sapien</h3>
                <p>A elementum ligula lacus ac quam ultrices a scelerisque praesent vel suspendisse scelerisque.</p>
            </div><div class='list3'></div>
        </div>
        <div class='team'>
            <h3>Our Team</h3>
            <div class="mui-content">
			    <div class="mui-content-padded">
				    <p class='pImg'>
					    <img src="../img/t1.jpg" data-preview-src="" data-preview-group="1" />
				    </p>
                    <h4>Mariya Thomas</h4>
                    <p>Games Designer</p>
				    <p class='pImg'>
					    <img src="../img/t2.jpg" data-preview-src="" data-preview-group="1" />
				    </p>
                    <h4>Dino Jass</h4>
                    <p>Games Designer</p>
				    <p class='pImg'>
					    <img src="../img/t3.jpg" data-preview-src="" data-preview-group="1" />
				    </p>
                    <h4>Michael Doe</h4>
                    <p>Games Designer</p>
				    <p class='pImg'>
					    <img src="../img/t4.jpg" data-preview-src="" data-preview-group="1" />
				    </p>
                    <h4>Rita James</h4>
                    <p>Games Designer</p>
			    </div>
		    </div>
        </div>
    </div>
</template>
<script>
    export default{
        data(){
            return {}
        }
    }
</script>
<style>
    .about .mui-card .mui-table-view{
        background:rgb(239,239,244);
        border-bottom:1px solid #ccc;
    }
    .about div.mui-card{
        border:0;
        -webkit-box-shadow:none;
        box-shadow:none;
    }
    .about div.mui-card ul li a span{
        color:#fff;
        font-size:20px;
        display:inline-block;
        border-radius:50%;
        background:red;
        width:25px;
        height:25px;
        text-align:center;
        line-height:25px;
    }
    .about div.mui-card .mui-table-view .mui-table-view-cell .mui-navigate-right{
        font-size:14px;
    }
    .pic{
        width:345px;
        height:245px;
        border:1px dotted #ccc;
        text-align:center;
        margin:10px auto;
        padding-top:15px;
    }
    .pic img{
        width:315px;
        height:215px;
    }
    .pic .picText{
        width:314px;
        position:relative;
        left:15px;
        top:-150px;
    }
    .pic .picText p{
        height:70px;
        line-height:30px;
        color:#fff;
        background:rgba(33,33,33,.3)
    }
    .pic .picText h2{
        margin-top:25px;
        line-height:50px;
        height:50px;
        background:rgb(233,30,99)
    }
    div.bigPic{
        margin:0;
        height:468px;
        width:375px;
        background:url('../img/c1.jpg') no-repeat 0,0;
        background-size:cover;
    }
    div.listPic div{
        width:187.5px;
        height:234px;
    }
    div.listPic div.list{
        text-align:center;
        background:#000;
        float:left;
        padding-top:10px;
    }
    div.listPic div.list img{
        width:35px;
        height:35px;
        margin-top:15px;
    }
    div.listPic div.list h3{
        color:#fff;
        margin-top:10px;
        margin-bottom:15px;
    }
    div.listPic div.list1{
        background:url('../img/c4.jpg');
        background-size:cover;
        display:inline-block;
        float:right;
    }
    div.listPic div.list2{
        background:url('../img/c3.jpg');
        background-size:cover;
        float:right;
    }
    div.listPic div.list3{
        background:url('../img/c2.jpg');
        background-size:cover;
        float:right;
    }
    .team{
        text-align:center;
    }
    .team h3{
        color:#e91e63;
    }
    .team .mui-content .mui-content-padded .pImg{
        width:246px;
        height:246px;
        margin:0 auto;
    }
    .team .mui-content .mui-content-padded .pImg img{
        width:246px;
        height:246px;
    }
    .team .mui-content{
        width:375px;
        text-align:center;
    }
    .team .mui-content .mui-content-padded h4{
        color:#e91e63;
        font-size:1.6em;
    }
</style>