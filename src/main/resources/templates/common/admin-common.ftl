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
    <@cssRefV url="/assets/libs/bootstrap/css/bootstrap.min.css"/>
    <!-- Font Awesome -->
    <@cssRefV url="/assets/libs/font-awesome/css/font-awesome.min.css"/>
    <!-- Ionicons -->
    <@cssRefV url="/assets/libs/ionicons/css/ionicons.min.css"/>
    <!-- NProgress -->
    <@cssRefV url="/assets/libs/nprogress/nprogress.css"/>
    <!-- Select2 -->
    <@cssRefV url="/assets/libs/select2/dist/css/select2.min.css"/>
    <!-- Theme style -->
    <@cssRefV url="/assets/css/AdminLTE.min.css"/>
    <!-- admin skins -->
    <@cssRefV url="/assets/css/skins/_all-skins.min.css"/>
    <!-- jQuery 3 -->
    <@jsRefV url="/assets/libs/jquery/jquery-3.3.1.min.js"/>
    <!-- Bootstrap 3.3.7 -->
    <@jsRefV url="/assets/libs/bootstrap/js/bootstrap.min.js"/>
    <!-- jQuery PJAX -->
    <@jsRefV url="/assets/js/jquery-pjax-master/jquery.pjax.js"/>
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
    <@jsRefV url="/assets/libs/fastclick/lib/fastclick.js"/>
    <!-- SlimScoll -->
    <@jsRefV url="/assets/libs/jQuery-slimScroll/jquery.slimscroll.min.js"/>
    <!-- NProgress -->
    <@jsRefV url="/assets/libs/nprogress/nprogress.js"/>
    <!-- AdminLTE App -->
    <@jsRefV url="/assets/js/adminlte.min.js"/>
    <!-- Admin Common -->
    <@jsRefV url="/assets/js/admin-common.js"/>
</body>
</html>
</#if>
</#macro>