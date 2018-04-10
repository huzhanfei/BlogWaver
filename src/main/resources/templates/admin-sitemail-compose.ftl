<#import "common/admin-common.ftl" as common>
<@common.content>
<section class="content-header">
    <h1><@spring.message code="sitemail.compose"/></h1>
    <ol class="breadcrumb">
        <li><a href="${basePath}/admin/dashboard"><i class="fa fa-dashboard"><@spring.message code="sitemail.home"/></i></a></li>
        <li><a href="${basePath}/admin/sitemail/compose"><@spring.message code="sitemail.compose"/></a></li>
    </ol>
</section>
<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title"><@spring.message code="sitemail.edit_area"/></h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="form-group">
                        <h5><@spring.message code="sitemail.to"/>: </h5>
                        <input class="form-control" placeholder="<@spring.message code="sitemail.to"/>:">
                    </div>
                    <div class="form-group">
                        <h5><@spring.message code="sitemail.subject"/>: </h5>
                        <input class="form-control" placeholder="<@spring.message code="sitemail.subject"/>:">
                    </div>
                    <div class="form-group">
                <textarea id="compose-textarea" class="form-control" style="height: 300px">
                <#-- mail content here -->
                </textarea>
                    </div>
                    <div class="form-group">
                        <div class="btn btn-default btn-file">
                            <i class="fa fa-paperclip"></i> <@spring.message code="sitemail.attchment"/>
                            <input type="file" name="attachment">
                        </div>
                        <p class="help-block"><@spring.message code="sitemail.max"/>. 32MB</p>
                    </div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                    <div class="pull-right">
                        <button type="button" class="btn btn-default"><i
                                class="fa fa-pencil"></i> <@spring.message code="sitemail.draft"/></button>
                        <button type="submit" class="btn btn-primary"><i
                                class="fa fa-envelope-o"></i> <@spring.message code="sitemail.send"/></button>
                    </div>
                    <button type="reset" class="btn btn-default"><i
                            class="fa fa-times"></i> <@spring.message code="sitemail.discard"/></button>
                </div>
                <!-- /.box-footer -->
            </div>
            <!-- /. box -->
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->
</section>
<!-- /.Main content -->
</@common.content>