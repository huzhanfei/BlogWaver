<#import "common/admin-common.ftl" as common>
<#import "common/resource-import.ftl" as res>
<@common.content>
    <@res.cssRefV url="/assets/libs/icheck/skins/flat/blue.css"/>
    <@res.cssRefV url="/assets/css/datatables-custiom.css"/>


<!--body wrapper start-->
<div class="wrapper">
    <div class="mail-box">
        <aside class="mail-nav mail-nav-bg-color">
            <header class="header"><h4>站内信</h4></header>
            <div class="mail-nav-body">
                <div class="text-center">
                    <a class="btn btn-compose" href="${basePath}/admin/sitemail/compose">
                        写信
                    </a>
                </div>
                <ul class="nav nav-pills nav-stacked mail-navigation">
                    <li><a href="${basePath}/admin/sitemail/inbox"> <i class="fa fa-inbox"></i> 收件箱 <span
                            class="label label-danger pull-right inbox-notification">4</span></a></li>
                    <li class="active"><a href="${basePath}/admin/sitemail/sent"> <i class="fa fa-envelope-o"></i> 发信箱</a></li>
                    <li><a href="${basePath}/admin/sitemail/draft"> <i class="fa fa-file-text-o"></i> 草稿箱<span
                            class="label label-info pull-right inbox-notification">34</span></a></li>
                    <li><a href="${basePath}/admin/sitemail/trash"> <i class="fa fa-trash-o"></i> 回收站</a></li>
                </ul>
            </div>

        </aside>
        <section class="mail-box-info">
            <header class="header">
                <div class="pull-right">
                    <div class="has-feedback">
                        <input type="text" class="form-control input-sm global_filter" id="global_filter"
                               placeholder=<@spring.message code="sitemail.searchmail"/>>
                    </div>
                </div>

                <div class="btn-toolbar">
                    <div class="btn-group">
                        <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-trash-o"></i>
                        </button>
                        <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-share"></i>
                        </button>
                    </div>

                    <div class="btn-group">
                        <button class="btn btn-sm btn-primary"><i class="fa fa-refresh"></i></button>
                    </div>

                </div>

            </header>

            <section class="mail-list">
                <div class="adv-table">
                    <table id="inbox-table" class="table table-striped">
                        <thead>
                        <tr>
                            <th><input type="checkbox" class="checkbox-toggle"/></th>
                            <th>收件人</th>
                            <th>主题</th>
                            <th>摘要</th>
                            <th>发送时间</th>
                        </tr>
                        </thead>
                        <tbody>
                            <#list 1..14 as mail>
                                <tr>
                                    <td><input type="checkbox"/></td>
                                    <td><a href="#">Old Hu</a></td>
                                    <td><a href="${basePath}/admin/sitemail/readmail" class="col-sm-10">Old Hu please
                                        eat rice</a><a href="#"
                                                       class="col-sm-2"><i
                                            class="fa fa-paperclip"></i></a></td>
                                    <td>Let's go to the chuzhanggui restaurant in ...</td>
                                    <td>2018/1/17 8:00</td>
                                </tr>
                            </#list>
                        <tr>
                            <td><input type="checkbox"/></td>
                            <td><a href="#">Kevin</a></td>
                            <td><a href="${basePath}/admin/sitemail/readmail" class="col-sm-10">[response to Old Hu]
                                about invitation</a><a href="#"
                                                       class="col-sm-2"><i
                                    class="fa fa-paperclip"></i></a></td>
                            <td>OK!</td>
                            <td>2018/1/17 8:00</td>
                        </tr>
                        </tbody>
                        <tfoot>
                        <tr>
                            <th><input type="checkbox" class="checkbox-toggle"/></th>
                            <th>收件人</th>
                            <th>主题</th>
                            <th>摘要</th>
                            <th>发送时间</th>
                        </tr>
                        </tfoot>
                    </table>
                </div>
            </section>
        </section>
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

    function initInboxTable() {
        //TODO: 解决表格第一列关闭排序功能后仍显示排序图标
        var inboxTable = $('#inbox-table').DataTable({
            'paging': true,
            'lengthChange': true,
            'searching': true,
            'ordering': true,
            'info': true,
            'dom':'rtipl',
            'autoWidth': false,
            "order": [[4, "desc"]],
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
        return inboxTable;
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
        var inboxTable = initInboxTable();

        $('input.global_filter').on('keyup', function () {
            filterGlobal(inboxTable, $('#global_filter').val());
        });

        //TODO: confirm delete function
    })

</script>
</@common.content>