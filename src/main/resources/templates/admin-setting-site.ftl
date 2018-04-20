<#import "common/admin-common.ftl" as commo>
<#import "common/resource-import.ftl" as res>

<@commo.content>
    <@res.cssRefV url="/assets/libs/bootstrap-fileupload/bootstrap-fileupload.min.css"/>
<!--body wrapper start-->
<div class="wrapper">
    <div class="row">
        <div class="col-md-12">
            <!--breadcrumbs start -->
            <ul class="breadcrumb panel">
                <li><a href="${basePath}/admin"><i class="fa fa-home"></i> 仪表盘</a></li>
                <li>偏好设置</li>
                <li class="active">站点设置</li>
            </ul>
            <!--breadcrumbs end -->
        </div>
    </div>
    <div class="row">

        <div class="col-md-12">
            <section class="panel panel-default">
                <header class="panel-heading">
                    站点设置
                    <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>
                             </span>
                </header>
                <div class="panel-body">
                    <form role="form" class="form-horizontal">
                        <div class="form-group">
                            <label for="inputEmail3" class="col-md-2 control-label">博客标题</label>
                            <div class="col-md-10">
                                <input type="text" class="form-control" id="inputEmail3" value="BlogWaver">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-md-2 control-label">博客子标题</label>
                            <div class="col-md-10">
                                <input type="text" class="form-control" id="inputEmail3"
                                       value="插件式博客内容管理系统">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-md-2 control-label">博客URL</label>
                            <div class="col-md-10">
                                <input type="url" class="form-control" id="inputEmail3"
                                       value="http://localhost/blogwaver/">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-md-2 control-label">站点LOGO</label>
                            <div class="col-md-10">
                                <div class="fileupload fileupload-new" data-provides="fileupload">
                                    <div class="fileupload-new thumbnail">
                                        <img src="${basePath}/assets/images/logo.png"
                                             alt=""/>
                                    </div>
                                    <div class="fileupload-preview fileupload-exists thumbnail"
                                         style="max-width: 200px; max-height: 200px; line-height: 20px;"></div>
                                    <div>
                                                       <span class="btn btn-default btn-file">
                                                       <span class="fileupload-new"><i
                                                               class="fa fa-upload"></i> 上传 </span>
                                                       <span class="fileupload-exists"><i
                                                               class="fa fa-undo"></i> 更改 </span>
                                                                <input type="file" class="default"/>
                                                       </span>
                                        <a href="#" class="btn btn-danger fileupload-exists"
                                           data-dismiss="fileupload"><i class="fa fa-trash"></i> 删除 </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-md-2 control-label">SEO关键字</label>
                            <div class="col-md-10">
                                <input type="text" class="tags" value="keywords1,keywords2" placeholder="英文逗号分隔">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-md-2 control-label">SEO描述</label>
                            <div class="col-md-10">
                                <textarea class="form-control">BlogWaver是一款基于JPMS的插件式博客内容管理系统</textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-md-2 control-label">HTML HEAD</label>
                            <div class="col-md-10">
                                <textarea class="form-control"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-md-2 control-label">页脚信息</label>
                            <div class="col-md-10">
                                <textarea class="form-control"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-md-2 control-label">公告</label>
                            <div class="col-md-10">
                                <textarea class="form-control"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-md-2 control-label">ICP备案号</label>
                            <div class="col-md-10">
                                <input type="text" class="form-control" id="inputEmail3"
                                       value="黑ICP备15000753号">
                            </div>
                        </div>

                    </form>
                </div>
                <div class="panel-footer">
                    <button class="btn btn-sm btn-primary"><i class="fa fa-check"></i> 保存</button>
                </div>
            </section>
        </div>

    </div>

</div>

<!--TagsInput-->
    <@res.jsRefV url="/assets/libs/jquery-tags-input/jquery.tagsinput.js"/>
    <@res.jsRefV url="/assets/libs/bootstrap-fileupload/bootstrap-fileupload.min.js"/>
<!--body wrapper end-->
<script language="JavaScript">
    $('.tags').tagsInput({
        width: 'auto',
        height: '60px',
        defaultText: '添加...'
    });
</script>
</@commo.content>