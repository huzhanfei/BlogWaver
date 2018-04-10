<#ftl output_format="HTML" strip_whitespace=true>
<#macro content>
<#include "resource-import.ftl"/>
<#if !isPjax>
<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><@spring.message code="dashboard.title"/></title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3-->
    <@cssRef url="/libs/bootstrap/css/bootstrap.min.css"/>
    <!-- Font Awesome -->
    <@cssRef url="/libs/font-awesome/css/font-awesome.min.css"/>
    <!-- Ionicons -->
    <@cssRef url="/libs/ionicons/css/ionicons.min.css"/>
    <!-- NProgress -->
    <@cssRef url="/libs/nprogress/nprogress.css"/>
    <!-- Select2 -->
    <@cssRef url="/libs/select2/dist/css/select2.min.css"/>
    <!-- Theme style -->
    <@cssRef url="/libs/AdminLTE/dist/css/AdminLTE.min.css"/>
    <!-- admin skins -->
    <@cssRef url="/libs/AdminLTE/dist/css/skins/_all-skins.min.css"/>
    <!-- jQuery 3 -->
    <@jsRef url="/libs/jquery/jquery.min.js"/>
    <!-- Bootstrap 3.3.7 -->
    <@jsRef url="/libs/bootstrap/js/bootstrap.min.js"/>
    <!-- jQuery PJAX -->
    <@jsRef url="/assets/js/jquery-pjax-master/jquery.pjax.js"/>
</head>

<body class="hold-transition skin-blue sidebar-mini fixed">
    <#include "../includes/admin-header.ftl"/>
    <#include "../includes/admin-menu.ftl"/>

    <div class="wrapper">
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">

</#if>
    <#nested >
<#if !isPjax>

    </div>
    <!-- /.content-wrapper -->
    </div>
    <#include "../includes/admin-footer.ftl"/>
    <#include "../includes/admin-control-sidebar.ftl"/>

    <!-- FastClick -->
    <@jsRef url="/libs/fastclick/fastclick.js"/>
    <!-- SlimScoll -->
    <@jsRef url="/libs/jQuery-slimScroll/jquery.slimscroll.min.js"/>
    <!-- NProgress -->
    <@jsRef url="/libs/nprogress/nprogress.js"/>
    <!-- AdminLTE App -->
    <@jsRef url="/libs/AdminLTE/dist/js/adminlte.min.js"/>
    <!-- Admin Common -->
    <@jsRef url="/assets/js/admin-common.js"/>
</body>
</html>
</#if>
</#macro>