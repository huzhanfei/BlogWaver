<#import "common/admin-common.ftl" as common>
<#import "common/resource-import.ftl" as res>
<@common.content>
    <@res.cssRefV url="/assets/libs/icheck/skins/flat/blue.css"/>
<!--body wrapper start-->
<div class="wrapper">
    <div class="row">
        <div class="col-md-12">
            <!--breadcrumbs start -->
            <ul class="breadcrumb panel">
                <li><a href="${basePath}/admin"><i class="fa fa-home"></i> 仪表盘</a></li>
                <li>前端配置</a></li>
                <li class="active">主题配置</li>
            </ul>
            <!--breadcrumbs end -->
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <section class="panel panel-default">
                <header class="panel-heading">
                    主题配置
                    <span class="tools pull-right">
                        <a href="javascript:;" class="fa fa-chevron-down"></a>
                    </span>
                </header>
                <div class="panel-body">
                    <div class="btn-group btn-group-sm pull-right">
                        <button type="button" class="btn btn-primary btn-sm checkbox-toggle"><i class="fa fa-square-o"></i></button>
                        <button type="button" class="btn btn-danger btn-sm "><i class="fa fa-trash-o"></i> 删除所选</button>
                    </div>


                    <button type="button" class="btn btn-primary btn-sm "><i class="fa fa-upload"></i> 安装主题</button>


                    <div class="theme-gal">
                        <div class="thumbnail item">
                            <div class="item-content">
                                <a href="#myModal" data-toggle="modal">
                                    <img src="${basePath}/assets/images/gallery/image1.jpg" alt=""/>
                                </a>
                            </div>
                            <div class="caption">
                                <input type="checkbox" disabled/>
                                <span>主题1 </span>
                                <button class="btn btn-sm btn-default pull-right" disabled>当前主题</button>
                            </div>
                        </div>
                        <div class="thumbnail item">
                            <div class="item-content">
                                <a href="#myModal" data-toggle="modal">
                                    <img src="${basePath}/assets/images/gallery/image2.jpg" alt=""/>
                                </a>
                            </div>
                            <div class="caption">
                                <input type="checkbox"/>
                                <span>主题2 </span>
                                <button class="btn btn-sm btn-success pull-right">应用</button>
                            </div>
                        </div>

                    </div>

                </div>
            </section>
        </div>
    </div>
</div>
<!--body wrapper end-->
    <@res.jsRefV url="/assets/libs/icheck/icheck.min.js"/>
<script type="text/javascript">
    function enableICheckPlugin() {

        $('.theme-gal input[type="checkbox"]').iCheck({
            checkboxClass: 'icheckbox_flat-blue',
            radioClass: 'iradio_flat-blue'
        });


        //Enable check and uncheck all functionality
        $(".checkbox-toggle").on("click", function () {
            var icon = $(this).find('i.fa');
            var checked = icon.hasClass('fa-check-square-o');
            if (checked) {
                $(".theme-gal input[type='checkbox']:not('[disabled]')").iCheck("uncheck");
                icon.removeClass('fa-check-square-o');
                icon.addClass('fa-square-o');
            } else {
                //Uncheck all checkboxes
                $(".theme-gal input[type='checkbox']:not('[disabled]')").iCheck("check");
                icon.removeClass('fa-square-o');
                icon.addClass('fa-check-square-o');
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