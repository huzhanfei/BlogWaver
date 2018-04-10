<#import "common/admin-common.ftl" as common>
<#import "common/resource-import.ftl" as res>

<@common.content>
    <!--header-->
<section class="content-header">
    <h1>
        <@spring.message code="user.list.tittle"/>
        <small>管理所有用户信息</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Users</a></li>
        <li class="active">List</li>
    </ol>
</section>

    <#--mainer-->
<section class="content">
    <div class="box">
        <#--<div class="box-header">-->
            <#--<h3 class="box-tittle">用户列表</h3>-->
        <#--</div>-->
        <#--/.box-header-->
        <div class="box-body">
            <div class="dataTables_wrapper form-inline dt-bootstrap">
                <div class="row">
                    <#--<div class="col-sm-6">-->
                        <#--<div class="dataTables_length">-->
                            <#--<label for="show">-->
                                <#--<@spring.message code="user.show"/>-->
                            <#--<select class="form-control input-sm">-->
                                <#--<option value="10">10</option>-->
                                <#--<option value="15">15</option>-->
                                <#--<option value="20">20</option>-->
                                <#--<option value="25">25</option>-->
                                <#--<option value="30">30</option>-->
                            <#--</select>-->
                                <#--<@spring.message code="user.entries"/>-->
                            <#--</label>-->
                        <#--</div>-->
                    <#--</div>-->
                    <#--<div class="col-sm-6">-->
                        <#--<div class="dataTables_filter">-->
                            <#--<label for="search">-->
                                <#--<@spring.message code="user.searchuser"/>:-->
                                <#--<input type="search" class="form-control input-sm" placeholder="<@spring.message code="user.username"/>">-->
                            <#--</label>-->
                        <#--</div>-->
                    <#--</div>-->
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <table id="userTable" class="table table-bordered table-striped dataTable">
                            <thead>
                            <tr role="row">
                                <#--class="sorting_asc" tabindex="0" rowspan="1" colspan="1" aria-sort="ascending"-->
                                <#--aria-label="<@spring.message code="user.list.toolbar"/>"-->
                                <th>
                                    <@spring.message code="user.username"/>
                                </th>
                                <th>
                                    <@spring.message code="user.userstatus"/>
                                </th>
                                <th>
                                    <@spring.message code="user.useremail"/>
                                </th>
                                <th>
                                    <@spring.message code="user.list.toolbar"/>
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr role="row" class="odd">
                                <td>admin</td>
                                <td>administor</td>
                                <td>admin@javacodes.cn</td>
                                <td>
                                    <div class="btn-group">
                                    <button type="button" class="btn btn-default">查看</button>
                                        &nbsp;
                                    <button type="button" class="btn btn-info">修改</button>
                                        &nbsp;
                                    <button type="button" class="btn btn-danger">删除</button>
                                    </div>
                                </td>
                            </tr>
                            <tr role="row" class="even">
                                <td>admin</td>
                                <td>administor</td>
                                <td>admin@javacodes.cn</td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default">查看</button>
                                        <button type="button" class="btn btn-info">修改</button>
                                        <button type="button" class="btn btn-danger">删除</button>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="row">
                    <#--table-toolbar-->
                 <div class="col-sm-3">

                 </div>
                </div>
            </div>
        </div>
    </div>
</section>

<#--datatables-->
    <@res.cssRef url="/libs/AdminLTE/bower_components/datatables.net-bs/css/dataTables.bootstrap.css"/>
    <@res.jsRef url="/libs/AdminLTE/bower_components/datatables.net/js/jquery.dataTables.js"/>
    <@res.jsRef url="/libs/AdminLTE/bower_components/datatables.net-bs/js/dataTables.bootstrap.js"/>
<script type="text/javascript">

    // datatables
    $('#userTable').DataTable({
        language:{
            "url" : "https://cdn.datatables.net/plug-ins/1.10.16/i18n/Chinese.json"
        }
    });
</script>
</@common.content>