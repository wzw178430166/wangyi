//正则验证
//   验证用户邮箱格式
 function v_uname(){
     var str=u_name.value;
     var reg=/^\w+@\w+.\w{2,3}$/igm;
     var results=str.search(reg);
     if(results!=-1){
         $('#uname_msg').html("<font style='color:green;'>验证通过</font>");
     }else{
         $('#uname_msg').html("<font style='color:red;'>格式错误</font>");
         $('#u_name').focus();
     }
 }

  //验证密码格式
  function v_upwd(){
      var str=u_pwd.value;
      var reg=/^[a-z0-9_-]{6,18}$/;
      var resutl=reg.test(str);
      if(!resutl){
        upwd_msg.innerHTML='<i style="color:red">密码输入格式不正确</i>';
      }else{
          upwd_msg.innerHTML="";
      }
  }