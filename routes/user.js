//创建express模块
const express=require('express');
//express下创建用户路由器
var router=express.Router();
//引入连接池
var pool=require('../pool/pool.js');

 //添加路由（插入用户信息）
 router.post('/add',function(req,res){
	 var obj1=req.body;
	 console.log(obj1);
	 pool.query('INSERT INTO users SET?',[obj1],function(err,result){
	  if(err) throw err;
	 // console.log(result);
	  if(result.affectedRows>0){
  res.send('添加成功');
 }else{
  res.send('删除失败');
 }
	});
  
 });

//用户登录 路由
router.post('/login',function(req,res){
    //  req.on('data',function(bnf){
    //var str=bnf.toString();
    //获取post请求数据的对象
    var obj=req.body;
   // console.log(obj);
    if(!obj.phone){
        res.send({code:401,msg:'用户名为空'});
        return;
    };
    if(!obj.upwd){
        res.send({code:402,msg:'密码为空'});
        return;
    };
    //执行SQL语句  查询所有用户名和密码 匹配
    pool.query('SELECT * FROM users WHERE phone=? AND upwd=?',[obj.phone,obj.upwd],function(err,result){
        if(err) throw err;
        //console.log(result);
        //判断数组是否大于0，结果result是数组，大于0就登录成功，数组等于0就是登录失败
        if(result.length>0){
            res.send({code:200,msg:'登录成功'});  //send(里面是一个对象)
        }else{
            res.send({code:301,msg:'登录失败'});
        }
    })
})

//导出路由器对象   /user
module.exports=router;

