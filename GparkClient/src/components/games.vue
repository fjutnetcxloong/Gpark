<template>
    <div class='games'>
        <h1>Exclusive Games</h1>
        <div class='gamePic'>
            <div class='one'>
                <a class='a1' href='#'><img src='../img/g1.jpg'></a>
                <a class='a2' href='#'><img src='../img/g2.jpg'></a>
            </div>
            <div class='tow'>
                <a class='a3' href='#'><img src='../img/g3.jpg'></a>
                <a class='a4' href='#'><img src='../img/g5.jpg'></a>
            </div>
            <div class='three'>
                <a class='a5' href='#'><img src='../img/g6.jpg'></a>
                <a class='a6' href='#'><img src='../img/g7.jpg'></a>
            </div>
            <div class='four'>
                <a class='a7' href='#'><img src='../img/g4.jpg'></a>
                <a class='a8' href='#'><img src='../img/g8.jpg'></a>
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
    games{
        text-align:center;
    }
    h1{
        height:100px;
        color:#E91E63;
    }
    .a1 img,.a4 img,.a5 img,.a8 img{
        width:172.5px;
        height:225.33px;
    }
    .a2 img,.a3 img,.a6 img,.a7 img{
        width:172.5px;
        height:132.88px;
    }
    .gamePic{
        width:100%;
        text-overflow:ellipsis;
        margin:0 auto;
    }
    .gamePic div{
        display:inline-block;
        margin:auto 7px;
    }
    .gamePic div a{
        display:block;
        margin-bottom:10px;
    }
</style>