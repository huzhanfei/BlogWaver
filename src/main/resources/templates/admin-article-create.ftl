<#import "common/admin-common.ftl" as common>
<#import "common/resource-import.ftl" as res>
<@common.content>
<title>撰写文章</title>
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        撰写文章
        <small>开始你的写作之旅吧</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Forms</a></li>
        <li class="active">Editors</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-info">
                <div class="box-header">
                    <h3 class="box-title">编辑区
                        <small>在这里撰写你的文章</small>
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
                            <label>文章标题</label>
                            <input type="text" class="form-control" placeholder="输入文章标题...">
                        </div>

                        <div class="form-group">
                            <label>链接</label>
                            <div class="input-group">
                                <span class="input-group-addon">${basePath}/</span>
                                <input type="text" class="form-control" placeholder="输入文章链接...">
                            </div>
                        </div>


                        <!-- textarea -->
                        <div class="form-group">
                            <label>文章正文</label>
                            <textarea class="form-control" id="editor1" name="editor1" rows="10" cols="80"></textarea>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-6 col-sm-12">
                                <label>标签</label>
                                <div class="input-group">
                                    <!-- /btn-group -->
                                    <input type="text" class="form-control" placeholder="英文逗号分隔">
                                    <div class="input-group-btn">
                                        <button type="button" class="btn btn-info">选择标签</button>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-md-6 col-sm-12">
                                <label>分类</label>
                                <div class="input-group">
                                    <select class="form-control select2" style="width: 100%;">
                                        <option selected="selected">Alabama</option>
                                        <option>Alaska</option>
                                        <option>California</option>
                                        <option>Delaware</option>
                                        <option>Tennessee</option>
                                        <option>Texas</option>
                                        <option>Washington</option>
                                    </select>
                                    <div class="input-group-btn">
                                        <button type="button" class="btn btn-info">创建分类</button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </form>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
        <!-- /.col-->
    </div>
    <!-- ./row -->
</section>
<!-- /.content -->
<!--CKEditor-->
<@res.jsRef url="/libs/ckeditor/standard/ckeditor.js"/>
<!--Select2-->
<@res.jsRef url="/libs/select2/dist/js/select2.full.min.js"/>
<script type="text/javascript">
    $(function () {
        CKEDITOR.replace('editor1');
        $('.select2').select2();
    });
</script>
</@common.content>