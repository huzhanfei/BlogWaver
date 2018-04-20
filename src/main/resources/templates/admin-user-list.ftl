<#import "common/admin-common.ftl" as common>
<#import "common/resource-import.ftl" as res>
<@common.content>
    <@res.cssRefV url="/assets/libs/icheck/skins/flat/blue.css"/>
    <@res.cssRefV url="/assets/css/datatables-custiom.css"/>

<!--body wrapper start-->
<div class="wrapper">
    <div class="row">
        <div class="col-md-12">
            <!--breadcrumbs start -->
            <ul class="breadcrumb panel">
                <li><a href="${basePath}/admin"><i class="fa fa-home"></i> 仪表盘</a></li>
                <li><a href="${basePath}/admin/user/list">用户管理</a></li>
                <li class="active">所有用户</li>
            </ul>
            <!--breadcrumbs end -->
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <section class="panel panel-default">
                <header class="panel-heading">
                    所有用户
                    <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>
                             </span>
                </header>
                <div class="panel-body">
                    <div class="adv-table">
                        <div class="clearfix" style="margin-bottom: 15px">

                            <div class="pull-right">
                                <div class="has-feedback">
                                    <input type="text" class="form-control input-sm global_filter" id="global_filter"
                                           placeholder="搜索用户...">
                                    <span class="glyphicon glyphicon-search form-control-feedback"></span>
                                </div>
                            </div>

                            <div class="btn-group btn-group-sm">
                                <button type="button" class="btn btn-success btn-sm"><i class="fa fa-check-circle-o"></i> 启用
                                </button>
                                <button type="button" class="btn btn-warning btn-sm"><i class="fa fa-ban"></i> 禁用
                                </button>
                                <button type="button" class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i> 删除
                                </button>
                            </div>
                            <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-plus-square"></i> 添加用户
                            </button>
                            <button type="button" class="btn btn-default btn-sm"><i class="fa fa-refresh"></i></button>

                        </div>

                        <table id="plugin_list_table" class="table table-striped">
                            <thead>
                            <tr>
                                <th><input type="checkbox" class="checkbox-toggle"/></th>
                                <th>ID</th>
                                <th>头像</th>
                                <th>用户名</th>
                                <th>昵称</th>
                                <th>电子邮箱</th>
                                <th>角色</th>
                                <th>状态</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>

                            <tr>
                                <td><input type="checkbox"/></td>
                                <td>1</td>
                                <td><img src="${basePath}/assets/images/photos/user1.png"
                                         style="width: 40px;height: 40px"/></td>
                                <td>huzhanfei</td>
                                <td>Jeffrey Hu</td>
                                <td>huzhanfei@outlook.com</td>
                                <td>管理员</td>
                                <td><label class="label label-success">正常</label></td>
                                <td>
                                    <a href="#" style="color: orange;"><i class="fa fa-edit"></i></a>
                                    <a href="#" style="color: deepskyblue;"><i class="fa fa-ban"></i></a>
                                    <a href="#" style="color: red"><i class="fa fa-trash-o"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"/></td>
                                <td>1</td>
                                <td><img src="${basePath}/assets/images/photos/user2.png"
                                         style="width: 40px;height: 40px"/></td>
                                <td>kevin</td>
                                <td>Kevin</td>
                                <td>kevin@blogwaver.com</td>
                                <td>普通用户</td>
                                <td><label class="label label-warning">待激活</label></td>
                                <td>
                                    <a href="#" style="color: orange;"><i class="fa fa-edit"></i></a>
                                    <a href="#" style="color: lawngreen;"><i class="fa fa-check-circle-o"></i></a>
                                    <a href="#" style="color: red"><i class="fa fa-trash-o"></i></a>
                                </td>
                            </tr>


                            </tbody>
                            <tfoot>
                            <tr>
                                <th><input type="checkbox" class="checkbox-toggle"/></th>
                                <th>ID</th>
                                <th>头像</th>
                                <th>用户名</th>
                                <th>昵称</th>
                                <th>电子邮箱</th>
                                <th>角色</th>
                                <th>状态</th>
                                <th>操作</th>
                            </tr>
                            </tfoot>
                        </table>
                    </div>


                </div>
                <!-- /.box-body -->
                <footer class="panel-footer">
                    <div class="btn-group btn-group-sm">
                        <button type="button" class="btn btn-success btn-sm"><i class="fa fa-check-circle-o"></i> 启用
                        </button>
                        <button type="button" class="btn btn-warning btn-sm"><i class="fa fa-ban"></i> 禁用
                        </button>
                        <button type="button" class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i> 删除
                        </button>
                    </div>
                    <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-plus-square"></i> 添加用户
                    </button>
                    <button type="button" class="btn btn-default btn-sm"><i class="fa fa-refresh"></i></button>
                </footer>
            </section>
        </div>
    </div>
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
        return $('#plugin_list_table').DataTable({
            'paging': true,
            'lengthChange': true,
            'searching': true,
            'ordering': true,
            'info': true,
            'dom': 'rtipl',
            'autoWidth': false,
            "order": [[6, "desc"]],
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
            radioClass: 'iradio_flat-blue'
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
