<?php
    //注册
    include('./connect.php');//连接数据库
    $username = $_REQUEST['username'];
    $password = $_REQUEST['password'];
    $email = $_REQUEST['email'];
    $sex = $_REQUEST['sex']; 
    $sql="select * from uses where use_name='$username'";
    $result = $mysqli->query($sql);
    if($result->num_rows>0){
        die('{"msg":"用户名已存在"}');
    }
    $insertSql="insert into uses(use_name,use_possward,use_email,sex)values('$username','$password','$email',$sex)";
   $res=$mysqli->query($insertSql);
    if($res){
        echo '{"msg":"注册成功"}';
    //   echo  '{"msg":"用户名已存在","has":true,"status":200}';
    }else{
        echo  '{"msg":"注册失败"}';
    }

    $mysqli->close();  //关闭连接

?>