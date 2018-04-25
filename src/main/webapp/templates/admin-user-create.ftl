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
                <li><a href="${basePath}/admin/user/list">用户管理</a></li>
                <li class="active">添加用户</li>
            </ul>
            <!--breadcrumbs end -->
        </div>
    </div>
    <div class="row">

        <div class="col-md-12">
            <section class="panel panel-default">
                <header class="panel-heading">
                    添加用户
                    <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>
                             </span>
                </header>
                <div class="panel-body">
                    <form role="form" class="form-horizontal">
                        <div class="form-group">
                            <label for="inputEmail3" class="col-md-2 control-label">用户名</label>
                            <div class="col-md-10">
                                <input type="text" class="form-control" id="inputEmail3">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-md-2 control-label">角色</label>
                            <div class="col-md-10">
                                <select class="form-control">
                                    <option value="1" selected>普通用户</option>
                                    <option value="2">编辑</option>
                                    <option value="3">管理员</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-md-2 control-label">密码</label>
                            <div class="col-md-10">
                                <input type="password" class="form-control" id="inputEmail3">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="inputEmail3" class="col-md-2 control-label">昵称</label>
                            <div class="col-md-10">
                                <input type="text" class="form-control" id="inputEmail3"
                                       value="Jeffrey Hu">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="inputEmail3" class="col-md-2 control-label">电子邮件</label>
                            <div class="col-md-10">
                                <input type="email" class="form-control" id="inputEmail3"
                                       value="huzhanfei@outlook.com">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-md-2 control-label">个人主页</label>
                            <div class="col-md-10">
                                <input type="url" class="form-control" id="inputEmail3"
                                       value="http://javacodes.cn">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-md-2 control-label">简介</label>
                            <div class="col-md-10">
                                <textarea class="form-control"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-md-2 control-label">头像</label>
                            <div class="col-md-10">
                                <div class="fileupload fileupload-new" data-provides="fileupload">
                                    <div class="fileupload-new thumbnail"
                                         style="width: 200px; height: 200px;">
                                        <img src="${basePath}/assets/images/photos/user1.png"
                                             alt="" width="100%" height="100%"/>
                                    </div>
                                    <div class="fileupload-preview fileupload-exists thumbnail"
                                         style="max-width: 200px; max-height: 200px; line-height: 20px;"></div>
                                    <div>
                                                       <span class="btn btn-default btn-file">
                                                       <span class="fileupload-new"><i
                                                               class="fa fa-upload"></i> 上传头像 </span>
                                                       <span class="fileupload-exists"><i
                                                               class="fa fa-undo"></i> 更改头像 </span>
                                                                <input type="file" class="default"/>
                                                       </span>
                                        <a href="#" class="btn btn-danger fileupload-exists"
                                           data-dismiss="fileupload"><i class="fa fa-trash"></i> 删除头像 </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-md-2 control-label">编辑器类型</label>
                            <div class="col-md-10">
                                <select class="form-control">
                                    <option value="0" selected>Markdown编辑器</option>
                                    <option value="1">CKEditor富文本编辑器</option>
                                    <option value="2">不使用编辑器</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-md-2 control-label">语言</label>
                            <div class="col-md-10">
                                <select class="form-control">
                                    <option value="0" selected>默认</option>
                                    <option value="1">中文</option>
                                    <option value="2">English</option>
                                </select>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="panel-footer">
                    <button class="btn btn-sm btn-primary"><i class="fa fa-check"></i> 确认添加</button>
                </div>
            </section>
        </div>

    </div>

</div>


    <@res.jsRefV url="/assets/libs/bootstrap-fileupload/bootstrap-fileupload.min.js"/>
<!--body wrapper end-->
</@commo.content>