<#import "common/admin-common.ftl" as commo>
<#import "common/resource-import.ftl" as res>

<@commo.content>
    <@res.cssRefV url="/assets/libs/icheck/skins/flat/blue.css"/>
    <@res.cssRefV url="/assets/libs/bootstrap-fileupload/bootstrap-fileupload.min.css"/>
<!--body wrapper start-->
<div class="wrapper">
    <div class="row">
        <div class="col-md-12">
            <!--breadcrumbs start -->
            <ul class="breadcrumb panel">
                <li><a href="${basePath}/admin"><i class="fa fa-home"></i> 仪表盘</a></li>
                <li>偏好设置</li>
                <li class="active">系统设置</li>
            </ul>
            <!--breadcrumbs end -->
        </div>
    </div>
    <div class="row">

        <div class="col-md-12">
            <section class="panel panel-default">
                <header class="panel-heading custom-tab dark-tab">
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a href="#basic_tab" data-toggle="tab"><i class="fa fa-user"></i> 基础设置</a>
                        </li>
                        <li class="">
                            <a href="#comment_tab" data-toggle="tab"><i class="fa fa-cog"></i> 评论设置</a>
                        </li>
                        <li class="">
                            <a href="#user_reg_tab" data-toggle="tab"><i class="fa fa-key"></i> 注册/登陆配置</a>
                        </li>
                        <li class="">
                            <a href="#mail_tab" data-toggle="tab"><i class="fa fa-key"></i> 邮件发送配置</a>
                        </li>
                    </ul>
                </header>
                <div class="panel-body">

                    <div class="tab-content">
                        <div class="tab-pane active" id="basic_tab">
                            <form role="form" class="form-horizontal">
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">语言</label>
                                    <div class="col-md-10">
                                        <select class="form-control">
                                            <option value="0" selected>默认</option>
                                            <option value="1">简体中文</option>
                                            <option value="2">English</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">时区</label>
                                    <div class="col-md-10">
                                        <select class="form-control">
                                            <option value="0" selected>Asia/Shanghai</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">首页</label>
                                    <div class="col-md-10">
                                        <select class="form-control" id="homePageOptions">
                                            <option value="0" selected>最新文章</option>
                                            <option value="1">页面</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group" id="homePageDiv" hidden>
                                    <label for="inputEmail3" class="col-md-2 control-label">首页页面</label>
                                    <div class="col-md-10">
                                        <select class="form-control">
                                            <option value="0" selected>示例页面</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">文章链接结构</label>
                                    <div class="col-md-10">
                                        <div class="input-group">
                                            <span class="input-group-addon">${basePath}/</span>
                                            <input type="text" class="form-control" placeholder="输入文章固定链接结构..."
                                                   value="{post_id}.html">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">文章列表样式</label>
                                    <div class="col-md-10">
                                        <select class="form-control">
                                            <option value="0" selected>标题+摘要+缩略图</option>
                                            <option value="1">标题+摘要</option>
                                            <option value="2">标题+缩略图</option>
                                            <option value="3">仅标题</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">文章分页长度</label>
                                    <div class="col-md-10">
                                        <input type="number" class="form-control" id="inputEmail3"
                                               value="20">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">随机推荐数目</label>
                                    <div class="col-md-10">
                                        <input type="number" class="form-control" id="inputEmail3"
                                               value="5">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">最新推荐数目</label>
                                    <div class="col-md-10">
                                        <input type="number" class="form-control" id="inputEmail3"
                                               value="5">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">热门访问推荐数目</label>
                                    <div class="col-md-10">
                                        <input type="number" class="form-control" id="inputEmail3"
                                               value="5">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">热门评论推荐数目</label>
                                    <div class="col-md-10">
                                        <input type="number" class="form-control" id="inputEmail3"
                                               value="5">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">开启相关推荐</label>
                                    <div class="col-md-10">
                                        <input type="checkbox" checked class="minimal">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">相关推荐数目</label>
                                    <div class="col-md-10">
                                        <input type="number" class="form-control" id="inputEmail3"
                                               value="3">
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">订阅文章输出</label>
                                    <div class="col-md-10">
                                        <select class="form-control">
                                            <option value="0" selected>摘要</option>
                                            <option value="1">全文</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">订阅文章数目</label>
                                    <div class="col-md-10">
                                        <input type="number" class="form-control" id="inputEmail3"
                                               value="10">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">附件上传大小限制（MB）</label>
                                    <div class="col-md-10">
                                        <input type="number" class="form-control" id="inputEmail3"
                                               value="10">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">附件上传文件路径</label>
                                    <div class="col-md-10">
                                        <input type="text" class="form-control" id="inputEmail3"
                                               value="/webapp/files">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">附件URL前缀</label>
                                    <div class="col-md-10">
                                        <input type="url" class="form-control" id="inputEmail3"
                                               value="http://localhost/files/">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">开启HTTPS</label>
                                    <div class="col-md-10">
                                        <input type="checkbox" checked class="minimal">
                                    </div>
                                </div>

                            </form>
                            <hr/>
                            <button class="btn btn-sm btn-primary"><i class="fa fa-check"></i> 保存</button>
                        </div>
                        <div class="tab-pane" id="comment_tab">
                            <form role="form" class="form-horizontal">
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">允许评论</label>
                                    <div class="col-md-10">
                                        <input type="checkbox" checked class="minimal">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">需要人工审核</label>
                                    <div class="col-md-10">
                                        <input type="checkbox" checked class="minimal">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">垃圾评论过滤词</label>
                                    <div class="col-md-10">
                                        <textarea class="form-control"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">黑名单</label>
                                    <div class="col-md-10">
                                        <textarea class="form-control"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">开启邮件提醒</label>
                                    <div class="col-md-10">
                                        <input type="checkbox" checked class="minimal">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">邮件回复主题</label>
                                    <div class="col-md-10">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">邮件回复模板</label>
                                    <div class="col-md-10">
                                        <textarea class="form-control" rows="10"></textarea>
                                    </div>
                                </div>
                            </form>
                            <hr/>
                            <button class="btn btn-sm btn-primary"><i class="fa fa-check"></i> 保存</button>
                        </div>
                        <div class="tab-pane" id="user_reg_tab">
                            <form role="form" class="form-horizontal">
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">允许注册</label>
                                    <div class="col-md-10">
                                        <input type="checkbox" checked class="minimal">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">登陆注册页面LOGO</label>
                                    <div class="col-md-10">
                                        <div class="fileupload fileupload-new" data-provides="fileupload">
                                            <div class="fileupload-new thumbnail">
                                                <img src="${basePath}/assets/images/login-logo.png"
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
                                    <label for="inputEmail3" class="col-md-2 control-label">注册验证码</label>
                                    <div class="col-md-10">
                                        <input type="checkbox" checked class="minimal">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">登陆验证码</label>
                                    <div class="col-md-10">
                                        <input type="checkbox" checked class="minimal">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">验证邮箱</label>
                                    <div class="col-md-10">
                                        <input type="checkbox" checked class="minimal">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">邮件验证主题</label>
                                    <div class="col-md-10">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">邮件验证模板</label>
                                    <div class="col-md-10">
                                        <textarea class="form-control" rows="10"></textarea>
                                    </div>
                                </div>

                            </form>
                            <hr/>
                            <button class="btn btn-sm btn-primary"><i class="fa fa-check"></i> 保存</button>
                        </div>
                        <div class="tab-pane" id="mail_tab">
                            <form role="form" class="form-horizontal">
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">SMTP主机</label>
                                    <div class="col-md-10">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">SMTP端口</label>
                                    <div class="col-md-10">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">TLS</label>
                                    <div class="col-md-10">
                                        <input type="checkbox" checked class="minimal">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">用户名</label>
                                    <div class="col-md-10">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">密码</label>
                                    <div class="col-md-10">
                                        <input type="password" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">FROM</label>
                                    <div class="col-md-10">
                                        <input type="email" class="form-control">
                                    </div>
                                </div>

                            </form>
                            <hr/>
                            <button class="btn btn-sm btn-primary"><i class="fa fa-check"></i> 保存</button>
                        </div>
                    </div>


                </div>
            </section>
        </div>

    </div>

</div>
<!--iCheck-->
    <@res.jsRefV url="/assets/libs/icheck/icheck.min.js"/>
    <@res.jsRefV url="/assets/libs/bootstrap-fileupload/bootstrap-fileupload.min.js"/>
<script language="JavaScript">
    $(function () {

        $('input[type="checkbox"].minimal').iCheck({
            checkboxClass: 'icheckbox_flat-blue',
            radioClass: 'iradio_flat-blue'
        });

        var $homePageOptions = $('#homePageOptions');
        if ($homePageOptions.val() === '1') {
            $('#homePageDiv').show();
        }
        $homePageOptions.on("change", function () {
            var option = $(this).val();
            if (option === '1') {
                $('#homePageDiv').show();
            } else {
                $('#homePageDiv').hide();
            }
        });
    });
</script>
<!--body wrapper end-->
</@commo.content>