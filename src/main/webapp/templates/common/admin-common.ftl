<#ftl output_format="HTML" strip_whitespace=true>
<#macro content>
<#include "resource-import.ftl"/>
<#if !isPjax>
<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="#" type="image/png">

    <title><@spring.message code="dashboard.title"/></title>
    <@cssRefV url="/assets/libs/nprogress/nprogress.css"/>
    <@cssRefV url="/assets/libs/jquery-tags-input/jquery.tagsinput.css"/>

    <!-- Style -->
    <@cssRefV url="/assets/css/style.css"/>
    <@cssRefV url="/assets/css/style-responsive.css"/>


    <!-- jQuery 3 -->
    <@jsRefV url="/assets/libs/jquery/jquery-3.3.1.min.js"/>
    <!-- Bootstrap 3.3.7 -->
    <@jsRefV url="/assets/libs/bootstrap/js/bootstrap.min.js"/>
    <!-- jQuery PJAX -->
    <@jsRefV url="/assets/libs/jquery-pjax-master/jquery.pjax.js"/>
</head>

<body class="sticky-header">
<section>
    <#include "../includes/admin-menu.ftl"/>

    <!-- main content start-->
    <div class="main-content" >
        <#include "../includes/admin-header.ftl"/>
    <div class="content-wrapper">
</#if>
    <#nested >
<#if !isPjax>
    </div>
        <#include "../includes/admin-footer.ftl"/>
    </div>

</section>
    <@jsRefV url="/assets/libs/jquery-ui/jquery-ui-1.10.3.min.js"/>
    <@jsRefV url="/assets/js/jquery-ui-1.9.2.custom.min.js"/>
    <@jsRefV url="/assets/libs/jquery-migrate/jquery-migrate-1.2.1.min.js"/>
    <@jsRefV url="/assets/libs/modernizr/modernizr.min.js"/>
    <@jsRefV url="/assets/libs/jquery-nicescroll/jquery.nicescroll.js"/>
    <@jsRefV url="/assets/libs/nprogress/nprogress.js"/>
    <@jsRefV url="/assets/js/scripts.js"/>

</body>
</html>
</#if>
</#macro>