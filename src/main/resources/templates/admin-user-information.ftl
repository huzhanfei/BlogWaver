<#import "common/admin-common.ftl" as commo>
<#import "common/resource-import.ftl" as res>

<@commo.content>
    <#--header-->


    <#--mainer-->
<section class="content">
    <#--plugins-->
        <@res.jsRef url="/assets/js/dropzone.js"/>
        <@res.cssRef url="/assets/css/dropzone.css"/>
    <div class="col-sm-10" id="card">
    <div class="box box-widget widget-user">
        <div class="widget-user-header bg-aqua-active">
            <h3>个人资料</h3>
            <h5><i class="fa fa-fw fa-pencil"></i>编辑</h5>
        </div>

        <div class="widget-user-image">
            <img class="img-circle" src="/assets/images/user2-160x160.jpg" alt="...">
        </div>

        <div class="box-footer">
            <form class="form-horizontal">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label for="nickname" class="col-sm-2 control-label">
                                <@spring.message code="user.create.nickname"/>
                            </label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" placeholder="<@spring.message code="user.create.nickname"/>">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label for="firstname" class="col-sm-2 control-label">
                                <@spring.message code="user.create.firstname"/>
                            </label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" placeholder="<@spring.message code="user.create.lastname"/>">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label for="lastname" class="col-sm-2 control-label">
                                <@spring.message code="user.create.lastname"/>
                            </label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" placeholder="<@spring.message code="user.create.lastname"/>">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label for="email" class="col-sm-2 control-label">
                                <@spring.message code="user.useremail"/>
                            </label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" placeholder="<@spring.message code="user.useremail"/>">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                    <div class="form-group">
                        <label for="info" class="col-sm-2 control-label">
                            <@spring.message code="user.create.intro"/>
                        </label>
                        <div class="col-sm-10">
                            <textarea class="form-control" rows="5" placeholder="<@spring.message code="user.create.intro"/>"></textarea>

                        </div>
                    </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label for="password" class="col-sm-2 control-label">
                                <@spring.message code="user.password"/>
                            </label>
                            <div class="col-sm-6">
                                <button class="btn btn-default">Reset Password</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label for="headicn" class="col-sm-2 control-label">
                                <@spring.message code="user.create.inc"/>
                            </label>
                            <div id="dropzone" class="col-sm-6">
                                <div class="dropzone" id="dropzone" style="border: none">
                                    <img class="img-circle" src="/assets/images/user2-160x160.jpg" alt="...">
                                    <h5>拖拽新头像至此即可更换头像</h5>
                                </div>
                                <#--<input type="file" class="form-control" name="usericn" multiple>-->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <div class="col-sm-2">  <button class="btn btn-primary pull-right" type="submit">Save</button></div>
                            <div class="col-sm-3"><button class="btn btn-default " type="reset">Cancle</button></div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    </div>
</section>

    <#--footer-->

<#--script-->
<script type="text/javascript">
    $("#dropzone").dropzone({ url: "/image/post" });
</script>
</@commo.content>