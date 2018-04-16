<#import "common/admin-common.ftl" as common>
<#import "common/resource-import.ftl" as res>
<@common.content>
    <@res.cssRefV url="/assets/libs/icheck/skins/flat/blue.css"/>
    <@res.cssRefV url="/assets/libs/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"/>
<title>撰写文章</title>
<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-info">
                <div class="box-header">
                    <h3 class="box-title">创建页面
                        <small>开始绘制你个性的页面吧！</small>
                    </h3>
                    <!-- tools box -->
                    <div class="pull-right box-tools">
                        <button type="button" class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip"
                                title="Collapse">
                            <i class="fa fa-minus"></i></button>
                    </div>
                    <!-- /. tools -->
                </div>
                <!-- /.box-header -->

                <div class="box-body pad">
                    <form role="form">
                        <!-- text input -->
                        <div class="form-group">
                            <label>页面标题</label>
                            <input type="text" class="form-control" placeholder="输入页面标题...">
                        </div>

                        <div class="form-group">
                            <label>固定链接</label>
                            <div class="input-group">
                                <span class="input-group-addon">${basePath}/</span>
                                <input type="text" class="form-control" placeholder="输入页面固定链接...">
                            </div>
                        </div>


                        <!-- textarea -->
                        <div class="form-group">
                            <label>页面内容</label>
                            <textarea class="form-control" id="editor1" name="editor1" rows="10" cols="80"></textarea>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-6 col-sm-12">
                                <label for="permissions" class="control-label ">访问权限</label>
                                <select class="form-control" style="width: 100%;" id="permissions">
                                    <option selected="selected" value="0">公开</option>
                                    <option value="1">私有</option>
                                    <option value="2">密码</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6 col-sm-12" id="postPasswordDiv" hidden>
                                <label>密码</label>
                                <input type="password" class="form-control" placeholder="请输入访问密码">
                                <!-- /.input group -->
                            </div>
                        </div>

                    </form>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                    <button type="button" class="btn btn-default">
                        <i class="fa fa-times"></i> 放弃
                    </button>
                    <button type="button" class="btn btn-primary pull-right">
                        <i class="fa fa-paper-plane"></i> 发布页面
                    </button>
                    <button type="button" class="btn btn-success pull-right" style="margin-right: 5px;">
                        <i class="fa fa-save"></i> 保存草稿
                    </button>
                </div>

            </div>
            <!-- /.box -->
        </div>
        <!-- /.col-->
    </div>
    <!-- ./row -->
</section>
<!-- /.content -->
<!--CKEditor-->
    <@res.jsRef url="/assets/libs/ckeditor/ckeditor.js"/>
<!--Select2-->
    <@res.jsRefV url="/assets/libs/select2/dist/js/select2.full.min.js"/>
<!--iCheck-->
    <@res.jsRefV url="/assets/libs/icheck/icheck.min.js"/>
<#--DatePicker-->
    <@res.jsRefV url="/assets/libs/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"/>
    <@res.jsRefV url="/assets/libs/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"/>

<script type="text/javascript">
    $(function () {
        CKEDITOR.replace('editor1');
        $('.select2').select2();
        //iCheck for checkbox and radio inputs

        $('input[type="checkbox"].minimal').iCheck({
            checkboxClass: 'icheckbox_flat-blue',
            radioClass: 'iradio_flat-blue'
        });

        $('#datepicker').datetimepicker({
            autoclose: true,
            forceParse: false,
            todayBtn: true,
            todayHighlight: true,
            format: "yyyy-MM-dd HH:mm",
            language: "zh-CN"
        });

        var $publishOptions = $('#publishOptions');
        if ($publishOptions.val() === '1') {
            $('#publishDateDiv').show();
        }
        $publishOptions.on("change", function () {
            var option = $(this).val();
            if (option === '1') {
                $('#publishDateDiv').show();
            } else {
                $('#publishDateDiv').hide();
            }
        });


        var $permissions = $('#permissions');
        if ($permissions.val() === '2') {
            $('#postPasswordDiv').show();
        }
        $permissions.on("change", function () {
            var option = $(this).val();
            if (option === '2') {
                $('#postPasswordDiv').show();
            } else {
                $('#postPasswordDiv').hide();
            }
        });

        var $thumbnailCheckbox = $('#thumbnailCheckbox');
        if ($thumbnailCheckbox.prop('checked')) {
            $('#thumbnailFileDiv').show();
        }
        $thumbnailCheckbox.on("ifChecked", function () {
            $('#thumbnailFileDiv').show();
        });
        $thumbnailCheckbox.on("ifUnchecked", function () {
            $('#thumbnailFileDiv').hide();
        });

    });
</script>
</@common.content>