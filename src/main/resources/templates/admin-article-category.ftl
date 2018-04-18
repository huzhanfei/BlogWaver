<#import "common/admin-common.ftl" as common>
<#import "common/resource-import.ftl" as res>
<@common.content>
    <@res.cssRefV url="/assets/libs/icheck/skins/flat/blue.css"/>
    <@res.cssRefV url="/assets/css/datatables-custiom.css"/>
<!-- Main content -->
<div class="wrapper">
    <div class="row">
        <div class="col-md-4 col-sm-12">
            <section class="panel panel-default">
                <header class="panel-heading">
                    创建分类
                    <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>
                             </span>
                </header>
                <div class="panel-body">
                    <form role="form" class="form-horizontal">
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-3 control-label">分类名称</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="inputEmail3" placeholder="请输入分类名称...">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-3 control-label">别名</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="inputEmail3" placeholder="请输入分类名称...">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-3 control-label">父级分类</label>
                            <div class="col-sm-9">
                                <select class="form-control" style="width: 100%;">
                                    <option selected="selected">无</option>
                                    <option>Alaska</option>
                                    <option>California</option>
                                    <option>Delaware</option>
                                    <option>Tennessee</option>
                                    <option>Texas</option>
                                    <option>Washington</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-3 control-label">描述</label>
                            <div class="col-sm-9">
                                <textarea class="form-control"
                                          style="max-width: 100%; width: 100%; min-width: 100%; min-height: 50px"></textarea>
                            </div>
                        </div>
                    </form>
                </div>

                <footer class="panel-footer">
                    <button type="button" class="btn btn-primary">创建分类</button>
                </footer>

            </section>
        </div>
        <!-- /.col -->
        <div class="col-md-8 col-sm-12">
            <section class="panel panel-default">
                <header class="panel-heading">
                    分类列表
                    <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>
                             </span>
                </header>
                <!-- /.box-header -->
                <div class="panel-body">
                    <div class="adv-table">
                        <div class="clearfix" style="margin-bottom: 15px">
                            <div class="pull-right">
                                <div class="has-feedback">
                                    <input type="text" class="form-control input-sm global_filter" id="global_filter"
                                           placeholder="搜索分类...">
                                    <span class="glyphicon glyphicon-search form-control-feedback"></span>
                                </div>
                            </div>
                            <!-- Check all button -->
                            <button type="button" class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i> 删除
                            </button>
                            <button type="button" class="btn btn-default btn-sm"><i class="fa fa-refresh"></i></button>
                        </div>
                        <table id="category-table" class="table table-striped">
                            <thead>
                            <tr>
                                <th><input type="checkbox" class="checkbox-toggle"/></th>
                                <th>ID</th>
                                <th>分类名称</th>
                                <th>描述</th>
                                <th>父级</th>
                                <th>文章计数</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <#list 1..14 as index>
                            <tr>
                                <td><input type="checkbox"/></td>
                                <td>${index}</td>
                                <td><a href="#">随笔</a></td>
                                <td>随时随地小记</td>
                                <td><a href="#">无</a></td>
                                <td>2</td>
                                <td>
                                    <a href="#" style="color: red"><i class="fa fa-trash-o"></i></a>
                                    <a href="#" style="color: orange;"><i class="fa fa-pencil"></i></a>
                                </td>
                            </tr>
                            </#list>
                            </tbody>
                            <tfoot>
                            <tr>
                                <th><input type="checkbox" class="checkbox-toggle"/></th>
                                <th>ID</th>
                                <th>分类名称</th>
                                <th>描述</th>
                                <th>父级</th>
                                <th>操作</th>
                            </tr>
                            </tfoot>
                        </table>
                    </div>
                    <!-- /.mail-box-messages -->
                </div>
                <!-- /.box-body -->
                <footer class="panel-footer">
                    <button type="button" class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i> 删除</button>
                    <button type="button" class="btn btn-default btn-sm"><i class="fa fa-refresh"></i></button>
                </footer>
        </div>
        <!-- /. box -->
    </div>
    <!-- /.col -->
</div>

<!-- /.Main content -->
    <@res.jsRefV url="/assets/libs/datatables/media/js/jquery.dataTables.min.js"/>
    <@res.jsRefV url="/assets/libs/datatables/media/js/dataTables.bootstrap.min.js"/>
    <@res.jsRefV url="/assets/libs/icheck/icheck.min.js"/>
<script>

    function filterGlobal(table, value) {
        table.search(value, true, true).draw();
    }

    function initTable() {
        //TODO: 解决表格第一列关闭排序功能后仍显示排序图标
        return $('#category-table').DataTable({
            'paging': true,
            'lengthChange': true,
            'searching': true,
            'ordering': true,
            'info': true,
            'dom':'rtipl',
            'autoWidth': false,
            "order": [[1, "asc"]],
            'columnDefs': [{'orderable': false, 'targets': 0}],
            'language': {
                "sProcessing": "<@spring.message code="datatables.sProcessing"/>",
                "sLengthMenu": "<@spring.message code="datatables.sLengthMenu"/>",
                "sZeroRecords": "<@spring.message code="datatables.sZeroRecords"/>",
                "sInfo": "<@spring.message code="datatables.sInfo"/>",
                "sInfoEmpty": "<@spring.message code="datatables.sInfoEmpty"/>",
                "sInfoFiltered": "<@spring.message code="datatables.sInfoFiltered"/>",
                "sInfoPostFix": "<@spring.message code="datatables.sInfoPostFix"/>",
                "sSearch": "<@spring.message code="datatables.sSearch"/>",
                "sEmptyTable": "<@spring.message code="datatables.sEmptyTable"/>",
                "sLoadingRecords": "<@spring.message code="datatables.sLoadingRecords"/>",
                "sInfoThousands": "<@spring.message code="datatables.sInfoThousands"/>",
                "oPaginate": {
                    "sFirst": "<@spring.message code="datatables.oPaginate.sFirst"/>",
                    "sPrevious": "<@spring.message code="datatables.oPaginate.sPrevious"/>",
                    "sNext": "<@spring.message code="datatables.oPaginate.sNext"/>",
                    "sLast": "<@spring.message code="datatables.oPaginate.sLast"/>"
                },
                "oAria": {
                    "sSortAscending": "<@spring.message code="datatables.oAria.sSortAscending"/>",
                    "sSortDescending": "<@spring.message code="datatables.oAria.sSortDescending"/>"
                }
            }
        });
    }

    function enableICheckPlugin() {
        //Enable iCheck plugin for checkboxes
        //iCheck for checkbox and radio inputs
        $('table input[type="checkbox"]').iCheck({
            checkboxClass: 'icheckbox_flat-blue',
            radioClass: 'iradio_flat-blue',
        });

        //Enable check and uncheck all functionality
        $(".checkbox-toggle").on("ifChanged", function () {
            var checked = $(this).prop("checked");
            if (checked) {
                //Uncheck all checkboxes
                $("table input[type='checkbox']").iCheck("check");
            } else {
                //Check all checkboxes
                $("table input[type='checkbox']").iCheck("uncheck");
            }
        });
    }

    $(function () {
        enableICheckPlugin();
        var table = initTable();

        $('input.global_filter').on('keyup', function () {
            filterGlobal(table, $('#global_filter').val());
        });

        //TODO: confirm delete function
    })

</script>
</@common.content>