<#import "common/admin-common.ftl" as common/>
<#import "common/resource-import.ftl" as res>
<@common.content>
<@res.cssRef url="/libs/AdminLTE/plugins/iCheck/flat/blue.css"/>
<@res.cssRef url="/libs/AdminLTE/bower_components/datatables.net-bs/css/dataTables.bootstrap.css"/>
<section class="content-header">
    <h1><@spring.message code="sitemail.draft"/></h1>
    <ol class="breadcrumb">
        <li><a href="${basePath}/admin/dashboard"><i class="fa fa-dashboard"><@spring.message code="sitemail.home"/></i></a></li>
        <li><a href="${basePath}/admin/sitemail/draft"><@spring.message code="sitemail.draft"/></a></li>
    </ol>
</section>
<!-- Main content -->
<section class="content">
    <div class="row">
        <!-- /.col -->
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                </div>
                <!-- /.box-header -->
                <div class="box-body no-padding">
                    <div class="mailbox-controls">
                        <div class="box-tools pull-right">
                            <div class="has-feedback">
                                <input type="text" class="form-control input-sm global_filter" id="global_filter"
                                       placeholder=<@spring.message code="sitemail.searchmail"/>>
                                <span class="glyphicon glyphicon-search form-control-feedback"></span>
                            </div>
                        </div>
                        <!-- Check all button -->
                        <button type="button" class="btn btn-default btn-sm checkbox-toggle"><i
                                class="fa fa-square-o"></i>
                        </button>
                        <div class="btn-group">
                            <button type="button" class="btn btn-default btn-sm"><i class="fa fa-trash-o"></i>
                            </button>
                        </div>
                        <!-- /.btn-group -->
                        <button type="button" class="btn btn-default btn-sm"><i class="fa fa-refresh"></i></button>
                    </div>
                    <div class="box-body mailbox-messages table-responsive">
                        <table id="inbox-table" class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <th></th>
                                <th><@spring.message code="sitemail.sender"/></th>
                                <th><@spring.message code="sitemail.subject"/></th>
                                <th><@spring.message code="sitemail.abstract"/></th>
                                <th><@spring.message code="sitemail.send_time"/></th>
                            </tr>
                            </thead>
                            <tbody>
                            <#list 1..14 as draft>
                                <tr>
                                    <td><input type="checkbox"/></td>
                                    <td><a href="#">Old Hu</a></td>
                                    <td><a href="${basePath}/admin/sitemail/compose" class="col-sm-10">Old Hu please eat rice</a><a href="#"
                                                                                                   class="col-sm-2"><i
                                            class="fa fa-paperclip"></i></a></td>
                                    <td><span class="draft text-red">[<@spring.message code="sitemail.draft"/>]</span>Let's
                                        go to the chuzhanggui restaurant in ...
                                    </td>
                                    <td>2018/1/17 8:00</td>
                                </tr>
                            </#list>
                            <tr>
                                <td><input type="checkbox"/></td>
                                <td><a href="#">Kevin</a></td>
                                <td><a href="${basePath}/admin/sitemail/compose" class="col-sm-10">[response to Old Hu] about invitation</a><a href="#"
                                                                                                              class="col-sm-2"><i
                                        class="fa fa-paperclip"></i></a></td>
                                <td><span class="draft text-red">[<@spring.message code="sitemail.draft"/>]</span>OK!
                                </td>
                                <td>2018/1/17 8:00</td>
                            </tr>
                            </tbody>
                            <tfoot>
                            <tr>
                                <th></th>
                                <th><@spring.message code="sitemail.sender"/></th>
                                <th><@spring.message code="sitemail.subject"/></th>
                                <th><@spring.message code="sitemail.abstract"/></th>
                                <th><@spring.message code="sitemail.send_time"/></th>
                            </tr>
                            </tfoot>
                        </table>
                    </div>
                    <!-- /.mail-box-messages -->
                </div>
                <!-- /.box-body -->
                <div class="box-footer no-padding">
                    <div class="mailbox-controls">
                        <!-- Check all button -->
                        <button type="button" class="btn btn-default btn-sm checkbox-toggle"><i
                                class="fa fa-square-o"></i>
                        </button>
                        <div class="btn-group">
                            <button type="button" class="btn btn-default btn-sm"><i class="fa fa-trash-o"></i>
                            </button>
                        </div>
                        <!-- /.btn-group -->
                        <button type="button" class="btn btn-default btn-sm"><i class="fa fa-refresh"></i></button>
                    </div>
                </div>
            </div>
            <!-- /. box -->
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->
</section>
<!-- /.Main content -->
    <@res.jsRef url="/libs/AdminLTE/bower_components/datatables.net/js/jquery.dataTables.js"/>
    <@res.jsRef url="/libs/AdminLTE/bower_components/datatables.net-bs/js/dataTables.bootstrap.js"/>
    <@res.jsRef url="/libs/AdminLTE/plugins/iCheck/icheck.js"/>
<script>

    function filterGlobal(table, value) {
        table.search(value, true, true).draw();
    }

    function initInboxTable() {
        //TODO: 解决表格第一列关闭排序功能后仍显示排序图标
        var inboxTable = $('#inbox-table').DataTable({
            'paging': true,
            'lengthChange': false,
            'searching': true,
            'ordering': true,
            'info': true,
            'autoWidth': false,
            'dom': 'rtip',
            'columnDefs': [{'orderable': false, 'targets': 0}],
            'language': {
                "sProcessing": "<@spring.message code="sitemail.sProcessing"/>",
                "sLengthMenu": "<@spring.message code="sitemail.sLengthMenu"/>",
                "sZeroRecords": "<@spring.message code="sitemail.sZeroRecords"/>",
                "sInfo": "<@spring.message code="sitemail.sInfo"/>",
                "sInfoEmpty": "<@spring.message code="sitemail.sInfoEmpty"/>",
                "sInfoFiltered": "<@spring.message code="sitemail.sInfoFiltered"/>",
                "sInfoPostFix": "<@spring.message code="sitemail.sInfoPostFix"/>",
                "sSearch": "<@spring.message code="sitemail.sSearch"/>",
                "sEmptyTable": "<@spring.message code="sitemail.sEmptyTable"/>",
                "sLoadingRecords": "<@spring.message code="sitemail.sLoadingRecords"/>",
                "sInfoThousands": "<@spring.message code="sitemail.sInfoThousands"/>",
                "oPaginate": {
                    "sFirst": "<@spring.message code="sitemail.oPaginate.sFirst"/>",
                    "sPrevious": "<@spring.message code="sitemail.oPaginate.sPrevious"/>",
                    "sNext": "<@spring.message code="sitemail.oPaginate.sNext"/>",
                    "sLast": "<@spring.message code="sitemail.oPaginate.sLast"/>"
                },
                "oAria": {
                    "sSortAscending": "<@spring.message code="sitemail.oAria.sSortAscending"/>",
                    "sSortDescending": "<@spring.message code="sitemail.oAria.sSortDescending"/>"
                }
            }
        });
        return inboxTable;
    }

    function enableICheckPlugin() {
        //Enable iCheck plugin for checkboxes
        //iCheck for checkbox and radio inputs
        $('.mailbox-messages input[type="checkbox"]').iCheck({
            checkboxClass: 'icheckbox_flat-blue',
            radioClass: 'iradio_flat-blue'
        });

        //Enable check and uncheck all functionality
        $(".checkbox-toggle").click(function () {
            var clicks = $(this).data('clicks');
            if (clicks) {
                //Uncheck all checkboxes
                $(".mailbox-messages input[type='checkbox']").iCheck("uncheck");
                $(".fa", this).removeClass("fa-check-square-o").addClass('fa-square-o');
            } else {
                //Check all checkboxes
                $(".mailbox-messages input[type='checkbox']").iCheck("check");
                $(".fa", this).removeClass("fa-square-o").addClass('fa-check-square-o');
            }
            $(this).data("clicks", !clicks);
        });
    }

    $(function () {
        enableICheckPlugin();
        var inboxTable = initInboxTable();

        $('input.global_filter').on('keyup', function () {
            filterGlobal(inboxTable, $('#global_filter').val());
        });

        //TODO: confirm delete function
    })

</script></@common.content>