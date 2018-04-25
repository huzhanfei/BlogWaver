<#import "common/admin-common.ftl" as common>
<#import "common/resource-import.ftl" as res>
<@common.content>
<!--body wrapper start-->
<div class="wrapper">
    <div class="row">
        <div class="col-md-12">
            <!--breadcrumbs start -->
            <ul class="breadcrumb panel">
                <li><a href="${basePath}/admin"><i class="fa fa-home"></i> 仪表盘</a></li>
                <li><a href="${basePath}/admin/sitemail/inbox">站内信</a></li>
                <li class="active">阅读邮件</li>
            </ul>
            <!--breadcrumbs end -->
        </div>
    </div>
    <div class="mail-box">
        <aside class="mail-nav mail-nav-bg-color">
            <header class="header"><h4>站内信</h4></header>
            <div class="mail-nav-body">
                <div class="text-center">
                    <a class="btn btn-compose" href="${basePath}/admin/sitemail/compose">
                        写信
                    </a>
                </div>
                <ul class="nav nav-pills nav-stacked mail-navigation">
                    <li><a href="${basePath}/admin/sitemail/inbox"> <i class="fa fa-inbox"></i> 收件箱 <span
                            class="label label-danger pull-right inbox-notification">4</span></a></li>
                    <li><a href="${basePath}/admin/sitemail/sent"> <i class="fa fa-envelope-o"></i> 发信箱</a></li>
                    <li><a href="${basePath}/admin/sitemail/draft"> <i class="fa fa-file-text-o"></i> 草稿箱<span
                            class="label label-info pull-right inbox-notification">34</span></a></li>
                    <li><a href="${basePath}/admin/sitemail/trash"> <i class="fa fa-trash-o"></i> 回收站</a></li>
                </ul>
            </div>

        </aside>
        <section class="mail-box-info">
            <header class="header">
                <div class="compose-btn pull-right">
                    <a class="btn btn-sm btn-primary" href="${basePath}/admin/sitemail/compose"><i class="fa fa-reply"></i> 回复</a>
                    <button class="btn btn-sm btn-default" ><i class="fa fa-share"></i> 转发</button>
                    <button title="" data-placement="top" data-toggle="tooltip" type="button" data-original-title="Print" class="btn btn-default  btn-sm tooltips"><i class="fa fa-print"></i> </button>
                    <button title="" data-placement="top" data-toggle="tooltip" data-original-title="Trash" class="btn btn-default btn-sm tooltips"><i class="fa fa-trash-o"></i></button>
                </div>
                <div class="btn-toolbar">
                    <h4 class="pull-left">
                        Old Hu eat rice
                    </h4>
                </div>
            </header>

            <section class="mail-list">
                <div class="mail-sender">
                    <div class="row">
                        <div class="col-md-8">
                            <img src="${basePath}/assets/images/avatar-mini.jpg" alt="">
                            <strong>ThemeBucket</strong>
                            <span>[themebucket@gmail.com]</span>
                            to
                            <strong>me</strong>
                        </div>
                        <div class="col-md-4">
                            <p class="date"> 4:15AM 04 April 2014</p>
                        </div>
                    </div>
                </div>
                <div class="view-mail">
                    <p>Donec ultrices faucibus rutrum. Phasellus sodales vulputate urna, vel accumsan augue egestas ac. Donec vitae leo at sem lobortis porttitor eu consequat risus. Mauris sed congue orci. Donec ultrices faucibus rutrum. Phasellus sodales vulputate urna, vel accumsan augue egestas ac. Donec vitae leo at sem lobortis porttitor eu consequat risus. Mauris sed congue orci. Donec ultrices faucibus rutrum. Phasellus sodales vulputate urna, vel accumsan augue egestas ac. Donec vitae leo at sem lobortis porttitor eu consequat risus. Mauris sed congue orci. </p>
                    <p>Porttitor eu consequat risus. <a href="#">Mauris sed congue orci. Donec ultrices faucibus rutrum</a>. Phasellus sodales vulputate urna, vel accumsan augue egestas ac. Donec vitae leo at sem lobortis porttitor eu consequat risus. Mauris sed congue orci. Donec ultrices faucibus rutrum. Phasellus sodales vulputate urna, vel accumsan augue egestas ac. Donec vitae leo at sem lobortis porttitor eu consequat risus. Mauris sed congue orci. </p>
                    <blockquote> <em>Donec ultrices faucibus rutrum. Phasellus sodales vulputate urna, vel accumsan augue egestas ac. Donec vitae leo at sem lobortis porttitor eu consequat risus. Mauris sed congue orci. Donec ultrices faucibus rutrum. Phasellus sodales vulputate urna, vel accumsan augue egestas ac. Donec vitae leo at sem lobortis porttitor eu consequat risus. Mauris sed congue orci. Donec ultrices faucibus rutrum. Phasellus sodales vulputate urna, vel accumsan augue egestas ac.<br><br>consequat risus. Mauris sed congue orci. Donec ultrices faucibus rutrum. Phasellus sodales vulputate urna, vel accumsan augue egestas ac. Donec vitae leo at sem lobortis porttitor eu consequat risus. Mauris sed congue orci. Donec ultrices faucibus rutrum. Phasellus sodales vulputate urna, vel accumsan augue egestas ac.</em> </blockquote>

                    <p>Sodales <a href="#">vulputate urna, vel accumsan augue egestas ac</a>. Donec vitae leo at sem lobortis porttitor eu consequat risus. Mauris sed congue orci. Donec ultrices faucibus rutrum. Phasellus sodales vulputate urna, vel accumsan augue egestas ac. Donec vitae leo at sem lobortis porttitor eu consequat risus. Mauris sed congue orci. </p>
                </div>
                <div class="attachment-mail">
                    <p>
                        <span><i class="fa fa-paperclip"></i> 2 attachments — </span>
                        <a href="#">Download all attachments</a>
                        |
                        <a href="#">View all images</a>
                    </p>
                    <ul>
                        <li>
                            <a class="atch-thumb" href="#">
                                <img src="${basePath}/assets/images/gallery/image1.jpg">
                            </a>

                            <a class="name" href="#">
                                IMG_001.jpg
                                <span>20KB</span>
                            </a>

                            <div class="links">
                                <a href="#">View</a> -
                                <a href="#">Download</a>
                            </div>
                        </li>

                        <li>
                            <a class="atch-thumb" href="#">
                                <img src="${basePath}/assets/images/gallery/image2.jpg">
                            </a>

                            <a class="name" href="#">
                                IMG_001.jpg
                                <span>20KB</span>
                            </a>

                            <div class="links">
                                <a href="#">View</a> -
                                <a href="#">Download</a>
                            </div>
                        </li>

                    </ul>
                </div>
                <div class="compose-btn pull-left">
                    <a class="btn btn-sm btn-primary" href="${basePath}/admin/sitemail/compose"><i class="fa fa-reply"></i> 回复</a>
                    <button class="btn btn-sm btn-default" ><i class="fa fa-share"></i> 转发</button>
                    <button title="" data-placement="top" data-toggle="tooltip" type="button" data-original-title="Print" class="btn btn-default  btn-sm tooltips"><i class="fa fa-print"></i> </button>
                    <button title="" data-placement="top" data-toggle="tooltip" data-original-title="Trash" class="btn btn-default btn-sm tooltips"><i class="fa fa-trash-o"></i></button>
                </div>
            </section>


        </section>
    </div>
</div>
<!-- /.Main content -->
<script>

</script>
</@common.content>