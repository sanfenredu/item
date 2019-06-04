<?php
    include('./connect.php');
    $username=$_REQUEST['username'];
    $password=$_REQUEST['password'];
    $sql="select * from uses where use_name='$username' and use_possward='$password'";
    $result=$mysqli->query($sql);
    if($result->num_rows>0){
        echo '{"msg":"登录成功"}';
    }else{
        echo '{"msg":"登录失败"}';
    }
?>