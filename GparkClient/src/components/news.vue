<template>
    <div class='new'>
        <h2>News</h2>
        <div class='content'>
            <div class='e1'>
                <p>June 20,2017</p>
                <p>Phasellus faucibus semper eros, quis mauris </p>
                <p>10</p>
            </div>
            <div class='e2'>
                <p>July 20,2017</p>
                <p>Phasellus faucibus semper eros, quis mauris </p>
                <p>20</p>
            </div>
            <div class='e3'>
                <p>Aug 20,2017</p>
                <p>Phasellus faucibus semper eros, quis mauris </p>
                <p>15</p>
            </div>
        </div>
        <div class='newGames'>
            <div class>
                <div><img src='../img/ng1.jpg'></div>
                <div>
                    <h4>Quisque in lectus erat</h4>
                    <div>
                        <ul>
                            <li>Admin</li>
                            <li>14.May.2017</li>
                            <li>20 Comments</li>                            
                            <li>300 Likes</li>
                        </ul>
                    </div>
                    <p>Aliquam suscipit neque massa, eu maximus felis gravida vel. Vestibulum lacinia risus risus, ut iaculis felis fermentum id. Cras at vulputate velit, vitae vestibulum augue. Etiam lorem nunc, mattis ac dignissim sit amet, varius et ex. Phasellus eleifend nibh justo, pulvinar cursus sapien commodo non.</p>
                    <p>Read More</p>
                </div>
            </div>
            <div>
                <div><img src='../img/ng2.jpg'></div>
                <div>
                    <h4>In finibus vel metus</h4>
                    <div>
                        <ul>
                            <li>Admin</li>
                            <li>14.May.2017</li>
                            <li>20 Comments</li>                            
                            <li>300 Likes</li>
                        </ul>
                    </div>
                    <p>Aliquam suscipit neque massa, eu maximus felis gravida vel. Vestibulum lacinia risus risus, ut iaculis felis fermentum id. Cras at vulputate velit, vitae vestibulum augue. Etiam lorem nunc, mattis ac dignissim sit amet, varius et ex. Phasellus eleifend nibh justo, pulvinar cursus sapien commodo non.</p>
                    <p>Read More</p>
                </div>
            </div>
            <div>
                <div><img src='../img/ng3.jpg'></div>
                <div>
                    <h4>Nam eget ligula eu</h4>
                    <div>
                        <ul>
                            <li>Admin</li>
                            <li>14.May.2017</li>
                            <li>20 Comments</li>                            
                            <li>300 Likes</li>
                        </ul>
                    </div>
                    <p>Aliquam suscipit neque massa, eu maximus felis gravida vel. Vestibulum lacinia risus risus, ut iaculis felis fermentum id. Cras at vulputate velit, vitae vestibulum augue. Etiam lorem nunc, mattis ac dignissim sit amet, varius et ex. Phasellus eleifend nibh justo, pulvinar cursus sapien commodo non.</p>
                    <p>Read More</p>
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
    .new{
        text-align:center;
    }
    .new div.content{
        width:375px;
    }
    .new div.content .e1{
        width:375px;
        height:286px;
        background:url('../img/e1.jpg') no-repeat 0 0;
        background-size:cover;
    }
    .new div.content .e2{
        width:375px;
        height:160px;
        background:url('../img/e2.jpg') no-repeat 0 0;
        background-size:cover;
    }
    .new div.content .e3{
        width:375px;
        height:160px;
        background:url('../img/e3.jpg') no-repeat 0 0;
        background-size:cover;
    }
</style>