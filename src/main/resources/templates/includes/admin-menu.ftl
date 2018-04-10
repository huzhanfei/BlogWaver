<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

        <!-- Sidebar user panel (optional) -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="${basePath}/assets/images/user2-160x160.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>Eric Hu</p>
                <!-- Status -->
                <a href="#"><i class="fa fa-circle text-success"></i> 系统管理员</a>
            </div>
        </div>

        <!-- search form (Optional) -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="<@spring.message code="menu.search"/>">
                <span class="input-group-btn">
                    <button type="submit" name="search" id="search-btn" class="btn btn-flat">
                        <i class="fa fa-search"></i>
                    </button>
                </span>
            </div>
        </form>
        <!-- /.search form -->

        <!-- Sidebar Menu -->
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header"><span><@spring.message code="menu.common.header"/></span></li>
            <li><a href="${basePath}/admin/dashboard">
                <i class="fa fa-dashboard"></i> <span><@spring.message code="menu.dashboard"/></span></a>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-edit"></i> <span><@spring.message code="menu.article"/></span>
                    <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                </a>
                <ul class="treeview-menu">
                    <li>
                        <a href="${basePath}/admin/article/create">
                            <i class="fa fa-circle-o"></i> <@spring.message code="menu.article.create"/>
                        </a>
                    </li>
                    <li>
                        <a href="${basePath}/admin/article/list">
                            <i class="fa fa-circle-o"></i> <@spring.message code="menu.article.list"/>
                        </a>
                    </li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> <@spring.message code="menu.article.category"/></a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> <@spring.message code="menu.article.tag"/></a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> <@spring.message code="menu.article.draft"/></a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#"><i class="fa fa-file"></i> <span><@spring.message code="menu.page"/></span>
                    <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-circle-o"></i> <@spring.message code="menu.page.create"/></a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> <@spring.message code="menu.page.list"/></a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#"><i class="fa fa-photo"></i> <span><@spring.message code="menu.media"/></span>
                    <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-circle-o"></i> <@spring.message code="menu.media.photo"/></a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> <@spring.message code="menu.media.video"/></a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> <@spring.message code="menu.media.music"/></a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> <@spring.message code="menu.media.other"/></a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#"><i class="fa fa-envelope-open"></i> <span><@spring.message code="menu.mail"/></span>
                    <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="${basePath}/admin/sitemail/inbox"><i class="fa fa-circle-o"></i> <@spring.message code="menu.mail.inbox"/></a></li>
                    <li><a href="${basePath}/admin/sitemail/compose"><i class="fa fa-circle-o"></i> <@spring.message code="menu.mail.compose"/></a></li>
                    <li><a href="${basePath}/admin/sitemail/draft"><i class="fa fa-circle-o"></i> <@spring.message code="menu.mail.draft"/></a></li>
                    <li><a href="${basePath}/admin/sitemail/trash"><i class="fa fa-circle-o"></i> <@spring.message code="menu.mail.trash"/></a></li>
                </ul>
            </li>
            <li><a href="${basePath}/admin/comment/list"><i class="fa fa-comments"></i> <span><@spring.message code="menu.comment"/></span></a></li>
            <li><a href="${basePath}/admin/user/information"><i class="fa fa-user"></i> <span><@spring.message code="menu.profile"/></span></a></li>


            <li class="header"><span><@spring.message code="menu.system.header"/></span></li>
            <li class="treeview">
                <a href="#"><i class="fa fa-eye"></i> <span><@spring.message code="menu.view"/></span>
                    <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-circle-o"></i> <@spring.message code="menu.view.nav"/></a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> <@spring.message code="menu.view.theme"/></a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#"><i class="fa fa-puzzle-piece"></i> <span><@spring.message code="menu.plugin"/></span>
                    <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-circle-o"></i> <@spring.message code="menu.plugin.list"/></a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> <@spring.message code="menu.plugin.install"/></a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#"><i class="fa fa-users"></i> <span><@spring.message code="menu.user"/></span>
                    <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="${basePath}/admin/user/list"><i class="fa fa-circle-o"></i> <@spring.message code="menu.user.list"/></a></li>
                    <li><a href="${basePath}/admin/user/create"><i class="fa fa-circle-o"></i> <@spring.message code="menu.user.create"/></a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#"><i class="fa fa-cogs"></i> <span><@spring.message code="menu.setting"/></span>
                    <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-circle-o"></i> <@spring.message code="menu.setting.site"/></a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> <@spring.message code="menu.setting.system"/></a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> <@spring.message code="menu.setting.link"/></a></li>
                </ul>
            </li>
        </ul>
        <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
</aside>