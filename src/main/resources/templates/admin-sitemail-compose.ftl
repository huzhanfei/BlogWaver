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
                <li class="active">写信</li>
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
                    <button class="btn btn-success btn-sm"><i class="fa fa-check"></i> 发送</button>
                    <button class="btn btn-sm btn-primary"><i class="fa fa-save"></i> 草稿</button>
                    <button class="btn btn-sm btn-default"><i class="fa fa-times"></i> 放弃</button>
                </div>
                <div class="btn-toolbar">
                    <h4 class="pull-left">
                        写信
                    </h4>
                </div>

            </header>

            <section class="mail-list">
                <div class="compose-mail">
                    <form method="post">
                        <div class="form-group">
                            <label for="to" class="control-label">接收人:</label>
                            <input type="text" tabindex="1" id="to" class="form-control" placeholder="多个接收人使用英文逗号隔开">
                        </div>

                        <div class="form-group">
                            <label for="subject" class="control-label">主题:</label>
                            <input type="text" tabindex="1" id="subject" class="form-control" placeholder="请输入主题">
                        </div>

                        <div class="compose-editor">
                            <textarea class="form-control" id="mail-editor" name="editor1" rows="10"
                                      cols="80"></textarea>
                            <input type="file" class="default">
                        </div>
                        <hr/>
                        <div class="compose-btn">
                            <button class="btn btn-success btn-sm"><i class="fa fa-check"></i> 发送</button>
                            <button class="btn btn-sm btn-primary"><i class="fa fa-save"></i> 草稿</button>
                            <button class="btn btn-sm btn-default"><i class="fa fa-times"></i> 放弃</button>
                        </div>

                    </form>
                </div>
            </section>
        </section>
    </div>
</div>

<@res.jsRef url="/assets/libs/ckeditor/ckeditor.js"/>
<script>
    $(function () {
        CKEDITOR.replace('mail-editor');
    });
</script>
</@common.content>