const express=require('express');

const cors=require('cors');

//创建web服务器
var server=express();
server.listen(8080);

//npm i -save cors
server.use(cors({
	origin:"http://127.0.0.1:5500"
}))

//引入mysql模块
const mysql=require('mysql');
//创建连接池
var pool=mysql.createPool({
     host:'127.0.0.1',
	 port:'3306',
	 user:'root',
     password:'',
	 database:'tedu',
	 connectionLimit:20 //设置连接池的大小
});



//引入第三方中间件body-parser 字符串查询中间件  post请求主体
const bodyParser=require('body-parser');
server.use(bodyParser.urlencoded({
  extended:false
}));


//引入用户路由器
const userRouter=require('../routes/user.js');
//引入ajax商品路由器
const ajaxproduct=require('../routes/indexproduct');


//(使用内置中间件)把静态资源托管到指定目录
server.use(express.static('../public'));
//使用用户路由器 挂载： /user http://127.0.0.1:8080/user
server.use('/user',userRouter);
//使用商品路由器 挂载： /http://127.0.0.1:8080/product
server.use('/product',ajaxproduct);

