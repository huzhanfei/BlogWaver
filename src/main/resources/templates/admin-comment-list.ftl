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
                <li class="active">评论</li>
            </ul>
            <!--breadcrumbs end -->
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <section class="panel panel-default">
                <header class="panel-heading">
                    评论
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
                                           placeholder="搜索评论...">
                                    <span class="glyphicon glyphicon-search form-control-feedback"></span>
                                </div>
                            </div>

                            <div class="btn-group btn-group-sm">
                                <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-remove"></i> 驳回
                                </button>
                                <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-check"></i> 批准
                                </button>
                                <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-minus-circle"></i> 垃圾评论
                                </button>
                                <button type="button" class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i> 删除
                                </button>
                            </div>


                            <button type="button" class="btn btn-default btn-sm"><i class="fa fa-refresh"></i>
                            </button>

                        </div>

                        <table id="comment_table" class="table table-striped">
                            <thead>
                            <tr>
                                <th><input type="checkbox" class="checkbox-toggle"/></th>
                                <th>ID</th>
                                <th></th>
                                <th>评论人</th>
                                <th>评论文章</th>
                                <th>内容</th>
                                <th>父级</th>
                                <th>评论时间</th>
                                <th>状态</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <#list 1..14 as index>
                            <tr>
                                <td><input type="checkbox"/></td>
                                <td>${index}</td>
                                <td class="details-control"></td>
                                <td>Visitor</td>
                                <td><a href="#">你好，世界</a></td>
                                <td>这是一条示例评论</td>
                                <td>无</td>
                                <td>2018-04-12 15:06:12</td>
                                <td>待审核</td>
                                <td>
                                    <a href="#" style="color: lightgreen;"><i class="fa fa-search-plus"></i></a>
                                    <a href="#" style="color: skyblue;"><i class="fa fa-check"></i></a>
                                    <a href="#" style="color: dimgrey;"><i class="fa fa-remove"></i></a>
                                    <a href="#" style="color: orange;"><i class="fa fa-minus-circle"></i></a>
                                    <a href="#" style="color: red"><i class="fa fa-trash-o"></i></a>
                                </td>
                            </tr>
                            </#list>
                            </tbody>
                            <tfoot>
                            <tr>
                                <th><input type="checkbox" class="checkbox-toggle"/></th>
                                <th>ID</th>
                                <th></th>
                                <th>评论人</th>
                                <th>评论文章</th>
                                <th>内容</th>
                                <th>父级</th>
                                <th>评论时间</th>
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
                        <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-remove"></i> 驳回
                        </button>
                        <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-check"></i> 批准
                        </button>
                        <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-minus-circle"></i> 垃圾评论
                        </button>
                        <button type="button" class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i> 删除
                        </button>
                    </div>
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
        var table = $('#comment_table').DataTable({
            'paging': true,
            'lengthChange': true,
            'searching': true,
            'ordering': true,
            'info': true,
            'dom':'rtipl',
            'autoWidth': false,
            "order": [[6, "desc"]],
            'columnDefs': [{'orderable': false, 'targets': [0,2]}],
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

        $('#comment_table tbody').on('click', 'td.details-control', function () {
            var tr = $(this).closest('tr');
            var row = table.row( tr );
            if ( row.child.isShown() ) {
                // This row is already open - close it
                row.child.hide();
                tr.removeClass('shown');
            }
            else {
                // Open this row
                row.child( format(row.data()) ).show();
                tr.addClass('shown');
            }
        });

        return table;
    }

    function format ( d ) {
        // `d` is the original data object for the row
        return '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">'+
                '<tr>'+
                '<td>邮箱:</td>'+
                '<td>'+'visitor@blogwaver.com'+'</td>'+
                '</tr>'+
                '<tr>'+
                '<td>IP:</td>'+
                '<td>'+'210.46.155.32'+'</td>'+
                '</tr>'+
                '<tr>'+
                '<td>网址:</td>'+
                '<td>'+'http://javacodes.cn'+'</td>'+
                '</tr>'+
                '<tr>'+
                '<td>浏览器AGENT:</td>'+
                '<td>'+'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'+'</td>'+
                '</tr>'+
                '</table>';
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