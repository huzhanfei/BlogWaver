<!-- left side start-->
<div class="left-side sticky-left-side">

    <!--logo and iconic logo start-->
    <div class="logo">
        <a href="${basePath}/admin"><img src="${basePath}/assets/images/logo.png" alt=""></a>
    </div>

    <div class="logo-icon text-center">
        <a href="${basePath}/admin"><img src="${basePath}/assets/images/logo_icon.png" alt=""></a>
    </div>
    <!--logo and iconic logo end-->

    <div class="left-side-inner">
        <!-- visible to small devices only -->
        <div class="visible-xs hidden-sm hidden-md hidden-lg">
            <div class="media logged-user">
                <img alt="" src="${basePath}/assets/images/photos/user-avatar.png" class="media-object">
                <div class="media-body">
                    <h4><a href="#">Jeffrey Hu</a></h4>
                    <span>"Hello There..."</span>
                </div>
            </div>
            <ul class="nav nav-pills nav-stacked custom-nav">
                <li><a href="#"><i class="fa fa-sign-out"></i> <span>注销</span></a></li>
            </ul>
        </div>

        <!-- Sidebar Menu -->
        <ul class="nav nav-pills nav-stacked custom-nav" id="sidebar_menu">
            <li><a href="${basePath}/admin/dashboard"><i class="fa fa-dashboard"></i> <span><@spring.message code="menu.dashboard"/></span></a></li>
            <li class="menu-list">
                <a href="#">
                    <i class="fa fa-edit"></i> <span><@spring.message code="menu.article"/></span></a>
                <ul class="sub-menu-list">
                    <li><a href="${basePath}/admin/article/create"><@spring.message code="menu.article.create"/></a></li>
                    <li><a href="${basePath}/admin/article/list"><@spring.message code="menu.article.list"/></a></li>
                    <li><a href="${basePath}/admin/article/category"><@spring.message code="menu.article.category"/></a></li>
                    <li><a href="${basePath}/admin/article/tags"><@spring.message code="menu.article.tag"/></a></li>
                    <li><a href="${basePath}/admin/article/draft"><@spring.message code="menu.article.draft"/></a></li>
                </ul>
            </li>
            <li class="menu-list">
                <a href="#"><i class="fa fa-file"></i> <span><@spring.message code="menu.page"/></span></a>
                <ul class="sub-menu-list">
                    <li><a href="${basePath}/admin/page/create"><@spring.message code="menu.page.create"/></a></li>
                    <li><a href="${basePath}/admin/page/list"><@spring.message code="menu.page.list"/></a></li>
                </ul>
            </li>
            <li>
                <a href="${basePath}/admin/media/gallery">
                    <i class="fa fa-photo"></i> <span><@spring.message code="menu.media"/></span>
                </a>
            </li>
            <li class="menu-list">
                <a href="#"><i class="fa fa-envelope-open"></i> <span><@spring.message code="menu.mail"/></span></a>
                <ul class="sub-menu-list">
                    <li><a href="${basePath}/admin/sitemail/compose"> <@spring.message code="menu.mail.compose"/></a></li>
                    <li><a href="${basePath}/admin/sitemail/inbox"> <@spring.message code="menu.mail.inbox"/></a></li>
                    <li><a href="${basePath}/admin/sitemail/sent"> <@spring.message code="menu.mail.sent"/></a></li>
                    <li><a href="${basePath}/admin/sitemail/draft"> <@spring.message code="menu.mail.draft"/></a></li>
                    <li><a href="${basePath}/admin/sitemail/trash"> <@spring.message code="menu.mail.trash"/></a></li>
                </ul>
            </li>
            <li><a href="${basePath}/admin/comment/list"><i class="fa fa-comments"></i><span><@spring.message code="menu.comment"/></span></a></li>
            <li><a href="${basePath}/admin/link/"><i class="fa fa-link"></i> <span><@spring.message code="menu.link"/></span></a></li>
            <li><a href="${basePath}/admin/user/profile"><i class="fa fa-user"></i><span><@spring.message code="menu.profile"/></span></a></li>


            <li class="menu-list">
                <a href="#"><i class="fa fa-eye"></i> <span><@spring.message code="menu.view"/></span></a>
                <ul class="sub-menu-list">
                    <li><a href="${basePath}/admin/frontend/nav"> <@spring.message code="menu.view.nav"/></a></li>
                    <li><a href="${basePath}/admin/frontend/theme"> <@spring.message code="menu.view.theme"/></a></li>
                </ul>
            </li>
            <li class="menu-list">
                <a href="#"><i class="fa fa-puzzle-piece"></i> <span><@spring.message code="menu.plugin"/></span></a>
                <ul class="sub-menu-list">
                    <li><a href="${basePath}/admin/plugin/list"> <@spring.message code="menu.plugin.list"/></a></li>
                    <li><a href="${basePath}/admin/plugin/install"> <@spring.message code="menu.plugin.install"/></a>
                    </li>
                </ul>
            </li>
            <li class="menu-list">
                <a href="#"><i class="fa fa-users"></i> <span><@spring.message code="menu.user"/></span></a>
                <ul class="sub-menu-list">
                    <li><a href="${basePath}/admin/user/list"> <@spring.message code="menu.user.list"/></a></li>
                    <li><a href="${basePath}/admin/user/create"> <@spring.message code="menu.user.create"/></a></li>
                </ul>
            </li>
            <li class="menu-list">
                <a href="#"><i class="fa fa-cogs"></i> <span><@spring.message code="menu.setting"/></span></a>
                <ul class="sub-menu-list">
                    <li><a href="${basePath}/admin/setting/site"> <@spring.message code="menu.setting.site"/></a></li>
                    <li><a href="${basePath}/admin/setting/system"> <@spring.message code="menu.setting.system"/></a></li>
                </ul>
            </li>
        </ul>
        <!-- /.sidebar-menu -->

    </div>


</div>