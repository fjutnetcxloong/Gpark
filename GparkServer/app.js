const express=require('express')
const pool=require('./pool')
//const answer=require('./routers/answer')
const bodyparser=require('body-parser')
var app=express();
const cors=require('cors')
app.use(cors({
	orgin:['*'],
	credentials:true
}))
app.use(express.static(__dirname+'/public'))//写绝对路径避免出错
app.listen(4444);
app.use(bodyparser.urlencoded({
	extended:false
}));
//接口
app.get('/imgList',(req,res)=>{
    var obj=[
        {pid:1,url:'http://127.0.0.1:4444/img/banner1.jpg'},
        {pid:2,url:'http://127.0.0.1:4444/img/banner2.jpg'},
        {pid:3,url:'http://127.0.0.1:4444/img/banner3.jpg'}
    ];
    res.send(obj);
})
app.get('/gameList',(req,res)=>{
    var obj=[
        {pid:1,url:'http://127.0.0.1:4444/img/tg1.jpg'},
        {pid:2,url:'http://127.0.0.1:4444/img/tg2.jpg'},
        {pid:3,url:'http://127.0.0.1:4444/img/tg3.jpg'},
        {pid:4,url:'http://127.0.0.1:4444/img/tg4.jpg'}
    ];
    res.send(obj);
})
app.get('/ngList',(req,res)=>{
    var pno=req.query.pno;
    var psize=parseInt(req.query.psize);
    var sql='select pid,img_url from newgame limit ?,?';
    pool.query(sql,[psize*(pno-1),psize],(err,result)=>{
        if(err)throw err;
        res.writeHead(200,{
            "Content-Type":"application/json;charset=utf-8",
            "Access-Control-Allow-Origin":"*"
          })
          res.write(JSON.stringify(result));
          res.end();
    })
});