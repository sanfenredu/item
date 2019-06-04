$(function() {
    var username = $('#username'),
        password = $('#password'),
        email = $('#email'),
        sex = $('#sex'),
        btn = $('.btn'),
        reg = {
            "username": /^\w{6,}$/,
            "password": /^.{6,}$/,
            "email": /^\w{6,}@[A-z0-9]{2,}\.[A-z]{2,}\.?[A-z]*$/
        }
    username.on('keyup', function() {
        var span = $(this).next('span');
        span.empty();
        if ($(this).val() == "") {
            span.css('display', 'none')
        } else {
            span.css('display', 'block')
        }
        if (reg[this.id].test($(this).val())) {
            // $(this).dataset.pass = 'true';
            span.html('用户名正确');
            span.css("color", "blue");

        } else {
            span.html('用户名不正确');
            span.css("color", "red");
        }
    })
    username.on('blur', function() {
        var span = $('.username');
        var that = $(this);
        if (that.val() == "") {
            span.css('display', 'none')
        } else {
            span.css('display', 'block')
        }
        $.ajax({
            type: "get",
            url: "./libs/hasname.php",
            data: {
                "username": username.val()
            },
            dataType: "json",
            success: function(response) {
                var data = response.msg;
                span.html(data)
            }
        });
    })
    password.on('keyup', function() {
        var span = $(this).next('span');
        span.empty();
        if ($(this).val() == "") {
            span.css('display', 'none')
        } else {
            span.css('display', 'block')
        }
        if (reg[this.id].test($(this).val())) {
            span.html('密码格式正确');
            span.css("color", "blue");

        } else {
            span.html('密码格式不正确');
            span.css("color", "red");
        }
    })
    email.on('keyup', function() {
        var span = $(this).next('span');
        span.empty();
        if ($(this).val() == "") {
            span.css('display', 'none')
        } else {
            span.css('display', 'block')
        }
        if (reg[this.id].test($(this).val())) {
            span.html('邮箱名格式正确');
            span.css("color", "blue");

        } else {
            span.html('邮箱格式名不正确');
            span.css("color", "red");
        }
    })

    btn.on('click', function() {
        $.ajax({
            type: "get",
            url: "./libs/register.php",
            data: {
                "username": username.val(),
                "password": password.val(),
                "email": email.val(),
                "sex": sex.val()
            },
            dataType: "json",
            success: function(response) {
                // console.log(response)
                if (response.msg == '注册成功') {
                    alert('注册成功,点击跳转')
                    location.href = './login.html'
                } else {
                    alert('注册失败，点击重新注册')
                    location.reload()
                }
            }
        });
    })

})