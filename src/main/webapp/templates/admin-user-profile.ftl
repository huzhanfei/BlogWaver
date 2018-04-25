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
                <li class="active">个人资料</li>
            </ul>
            <!--breadcrumbs end -->
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-body">
                            <div class="profile-pic text-center">
                                <img alt="" src="${basePath}/assets/images/photos/user1.png">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-body">
                            <ul class="p-info">
                                <li>
                                    <div class="title">昵称</div>
                                    <div class="desk">Jeffrey Hu</div>
                                </li>
                                <li>
                                    <div class="title">角色</div>
                                    <div class="desk">管理员</div>
                                </li>
                                <li>
                                    <div class="title">文章</div>
                                    <div class="desk">14</div>
                                </li>
                                <li>
                                    <div class="title">评论</div>
                                    <div class="desk">3</div>
                                </li>
                                <li>
                                    <div class="title">站内信</div>
                                    <div class="desk">15</div>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <div class="row">
                <div class="col-md-12">
                    <section class="panel">
                        <header class="panel-heading custom-tab dark-tab">
                            <ul class="nav nav-tabs">
                                <li class="active">
                                    <a href="#profileTab" data-toggle="tab"><i class="fa fa-user"></i> 个人资料</a>
                                </li>
                                <li class="">
                                    <a href="#settingTab" data-toggle="tab"><i class="fa fa-cog"></i> 个人设置</a>
                                </li>
                                <li class="">
                                    <a href="#passwordTab" data-toggle="tab"><i class="fa fa-key"></i> 密码修改</a>
                                </li>
                            </ul>
                        </header>
                        <div class="panel-body">
                            <div class="tab-content">
                                <div class="tab-pane active" id="profileTab">
                                    <form role="form" class="form-horizontal">
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-md-2 control-label">用户名</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" id="inputEmail3" disabled
                                                       value="huzhanfei">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-md-2 control-label">角色</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" id="inputEmail3" disabled
                                                       value="管理员">
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
                                        <hr/>
                                        <button class="btn btn-primary pull-right">保存更改</button>
                                    </form>
                                </div>
                                <div class="tab-pane" id="settingTab">
                                    <form role="form" class="form-horizontal">
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
                                        <hr/>
                                        <button class="btn btn-primary pull-right">保存更改</button>
                                    </form>
                                </div>
                                <div class="tab-pane" id="passwordTab">
                                    <form role="form" class="form-horizontal">
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-md-2 control-label">旧密码</label>
                                            <div class="col-md-10">
                                                <input type="password" class="form-control"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-md-2 control-label">新密码</label>
                                            <div class="col-md-10">
                                                <input type="password" class="form-control"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-md-2 control-label">再次确认</label>
                                            <div class="col-md-10">
                                                <input type="password" class="form-control"/>
                                            </div>
                                        </div>
                                        <hr/>
                                        <button class="btn btn-primary pull-right">保存更改</button>
                                    </form>
                                </div>
                            </div>
                    </section>
                </div>

            </div>

        </div>


    </div>
</div>

    <@res.jsRefV url="/assets/libs/bootstrap-fileupload/bootstrap-fileupload.min.js"/>
<!--body wrapper end-->

</@commo.content>