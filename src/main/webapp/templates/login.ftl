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

    <title>登录</title>

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
            <input type="text" class="form-control" placeholder="用户名" autofocus>
            <input type="password" class="form-control" placeholder="密码">

            <button class="btn btn-lg btn-login btn-block" type="submit">
                <i class="fa fa-check"></i>
            </button>

            <div class="registration">
                还没有账号?
                <a class="" href="${basePath}/register">
                    注册
                </a>
            </div>
            <label class="checkbox">
                <input type="checkbox" value="remember-me"> 记住我
                <span class="pull-right">
                    <a data-toggle="modal" href="#myModal"> 忘记密码?</a>

                </span>
            </label>

        </div>

        <!-- Modal -->
        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">忘记密码?</h4>
                    </div>
                    <div class="modal-body">
                        <p>请输入您的电子邮件以便重置您的密码</p>
                        <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">

                    </div>
                    <div class="modal-footer">
                        <button data-dismiss="modal" class="btn btn-default" type="button">取消</button>
                        <button class="btn btn-primary" type="button">提交</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- modal -->

    </form>

</div>

<!-- jQuery 3 -->
    <@jsRefV url="/assets/libs/jquery/jquery-3.3.1.min.js"/>
<!-- Bootstrap 3.3.7 -->
    <@jsRefV url="/assets/libs/bootstrap/js/bootstrap.min.js"/>
    <@jsRefV url="/assets/libs/modernizr/modernizr.min.js"/>

</body>
</html>
