<#ftl output_format="HTML" strip_whitespace=true>
<#include "common/resource-import.ftl"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="#" type="image/png">

    <title>注册</title>

    <!-- Style -->
    <@cssRefV url="/assets/css/style.css"/>
    <@cssRefV url="/assets/css/style-responsive.css"/>

</head>

<body class="login-body">

<div class="container">

    <form class="form-signin" action="${basePath}/admin">
        <div class="form-signin-heading text-center">
            <img src="${basePath}/assets/images/login-logo.png" alt=""/>
        </div>


        <div class="login-wrap">
            <input type="text" autofocus placeholder="用户名" class="form-control">
            <input type="password" placeholder="密码" class="form-control">
            <input type="password" placeholder="确认密码" class="form-control">
            <input type="text" autofocus placeholder="电子邮箱" class="form-control">
            <input type="text" autofocus placeholder="昵称" class="form-control">
            <input type="text" autofocus placeholder="验证码" class="form-control">
            <div class="thumbnail">
                <img src="${basePath}/assets/images/yzm.png" alt=""/>
            </div>
            <label class="checkbox">
                <input type="checkbox" value="agree this condition">  同意用户协议
           </label>
            <button type="submit" class="btn btn-lg btn-login btn-block">
                <i class="fa fa-check"></i>
            </button>

            <div class="registration">
                已有账号？
                <a href="${basePath}/login" class="">
                    直接登录
                </a>
            </div>

        </div>

    </form>

</div>

<!-- jQuery 3 -->
    <@jsRefV url="/assets/libs/jquery/jquery-3.3.1.min.js"/>
<!-- Bootstrap 3.3.7 -->
    <@jsRefV url="/assets/libs/bootstrap/js/bootstrap.min.js"/>
    <@jsRefV url="/assets/libs/modernizr/modernizr.min.js"/>

</body>
</html>
