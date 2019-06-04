$(function() {
    var username = $('#username'),
        password = $('#password'),
        btn = $('.btn');
    btn.on('click', function() {
        $.ajax({
            type: "get",
            url: "./libs/login.php",
            data: {
                "username": username.val(),
                "password": password.val()
            },
            dataType: "json",
            success: function(response) {
                if (response.msg = "登陆成功") {
                    alert('登陆成功，点击跳转')
                    location.href = "./fanke.html"
                } else {
                    alert('登陆失败，点击刷新')
                    location.reload()
                }
            }
        });
    })

})