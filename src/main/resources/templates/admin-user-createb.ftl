<#import "common/admin-common.ftl" as common/>
<#import "common/resource-import.ftl" as res/>

<@common.content>
<@res.cssRef url="/assets/css/create.style.css"/>
<#--mycss-->
    <section class="content-header">
        <h1>
        <@spring.message code="user.list.tittle"/>
            <small>添加用户</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Users</a></li>
            <li class="active">List</li>
        </ol>
    </section>
<#--mainer-->
    <section class="content">
        <div>
    <form class="form-horizontal">
        <div class="col-sm-6">
            <div class="form-group form-c-group">
                <label for="username" class="col-sm-2 control-label">
                    <@spring.message code="user.username"/>
                </label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" placeholder=" <@spring.message code="user.username"/>">
                </div>
            </div>
            <div class="form-group form-c-group">
                <label for="password" class="col-sm-2 control-label">
                    <@spring.message code="user.password"/>
                </label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" placeholder="<@spring.message code="user.password"/>">
                </div>
            </div> 
            <div class="form-group form-c-group">
                <label for="email" class="col-sm-2 control-label">
                    <@spring.message code="user.useremail"/>*
                </label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" placeholder="<@spring.message code="user.useremail"/>">
                </div>
            </div>
            <div class="form-group form-c-group">
                <label class="col-sm-2 control-label">
                                <@spring.message code="user.userstatus"/>*
                </label>
                <div class="col-sm-3">
                    <select class="form-control">
                        <option>管理员</option>
                        <option>作者</option>
                        <option>订阅者</option>
                    </select>
                </div>
            </div>
            <div class="form-group form-c-group">
                <label for="semail" class="col-sm-2 control-label">
                    <@spring.message code="user.create.sendemail"/>
                </label>
                <div class="col-sm-10">
                    <input type="checkbox">
                    向新用户发送电子邮件通知
                </div>
            </div>
            <div class="form-group form-c-group">
                <div class="col-sm-2">
                    <button type="submit" class="btn btn-primary pull-right">添加</button>
                </div>

            </div>
        </div>
    </form>
        </div>
    </section>
</@common.content>