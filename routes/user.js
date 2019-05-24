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
 
//导出路由器对象
module.exports=router;

