<#import "common/admin-common.ftl" as common>
<#import "common/resource-import.ftl" as res>
<@common.content>
    <@res.cssRefV url="/assets/libs/jquery-multi-select/css/multi-select.css"/>
    <@res.cssRefV url="/assets/libs/nestable/jquery.nestable.css"/>

<!-- Main content -->
<div class="wrapper">
    <div class="row">
        <div class="col-md-12">
            <!--breadcrumbs start -->
            <ul class="breadcrumb panel">
                <li><a href="${basePath}/admin"><i class="fa fa-home"></i> 仪表盘</a></li>
                <li>前端配置</a></li>
                <li class="active">导航菜单</li>
            </ul>
            <!--breadcrumbs end -->
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 col-sm-12">
            <section class="panel">
                <header class="panel-heading custom-tab dark-tab">
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a href="#categoryTab" data-toggle="tab">文章分类</a>
                        </li>
                        <li class="">
                            <a href="#pageTab" data-toggle="tab">页面</a>
                        </li>
                        <li class="">
                            <a href="#articleTab" data-toggle="tab">文章</a>
                        </li>
                        <li class="">
                            <a href="#linkTab" data-toggle="tab">自定义链接</a>
                        </li>
                    </ul>
                </header>
                <div class="panel-body">
                    <div class="tab-content">
                        <div class="tab-pane active" id="categoryTab">
                            <form>
                                <div class="form-group">
                                    <select name="country" class="multi-select" multiple="" id="category_select">
                                        <option value="0">随笔</option>
                                    </select>
                                </div>
                                <hr/>
                                <button class="btn btn-sm btn-primary">添加到菜单</button>
                            </form>
                        </div>
                        <div class="tab-pane" id="pageTab">
                            <form>
                                <div class="form-group">
                                    <select name="country" class="multi-select" multiple="" id="page_select">
                                        <option value="0">示例页面1</option>
                                        <option value="1">示例页面2</option>
                                    </select>
                                </div>
                                <hr/>
                                <button class="btn btn-sm btn-primary">添加到菜单</button>
                            </form>
                        </div>
                        <div class="tab-pane" id="articleTab">
                            <div class="tab-pane" id="pageTab">
                                <form>
                                    <div class="form-group">
                                        <select name="country" class="multi-select" multiple="" id="article_select">
                                            <option value="0">世界，你好</option>
                                            <option value="1">Java分享</option>
                                        </select>
                                    </div>
                                    <hr/>
                                    <button class="btn btn-sm btn-primary">添加到菜单</button>
                                </form>
                            </div>
                        </div>
                        <div class="tab-pane" id="linkTab">
                            <form class="form-horizontal">
                                <div class="form-group">

                                    <label for="link_name_input" class="col-sm-3 control-label">菜单名称</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="link_name_input">
                                    </div>

                                </div>
                                <div class="form-group">
                                    <label for="link_url_input" class="col-sm-3 control-label">链接</label>
                                    <div class="col-sm-9">
                                    <input type="url" class="form-control" id="link_url_input">
                                    </div>
                                </div>
                                <hr/>
                                <button class="btn btn-sm btn-primary">添加到菜单</button>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <!-- /.col -->
        <div class="col-md-8 col-sm-12">

            <section class="panel panel-default">
                <header class="panel-heading">
                    菜单
                    <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>
                             </span>
                </header>
                <!-- /.box-header -->
                <div class="panel-body">
                    <div class="btn-group btn-group-sm" id="nestable_list_menu" style="margin-bottom: 10px">
                        <button type="button" class="btn btn-sm btn-success" data-action="expand-all"><i class="fa fa-arrow-down"></i> 全部展开</button>
                        <button type="button" class="btn btn-sm btn-warning" data-action="collapse-all"><i class="fa fa-arrow-up"></i> 全部收起</button>
                    </div>

                    <div class="dd" id="nav_nestable">
                        <ol class="dd-list">
                            <li class="dd-item dd3-item" data-id="13">
                                <div class="dd-handle dd3-handle"></div>
                                <div class="dd3-content">
                                    Java
                                    <div class="pull-right">
                                        <a href="#" style="color: deepskyblue;"><i class="fa fa-pencil"></i> </a>
                                        <a href="#" style="color: red;"><i class="fa fa-trash-o"></i> </a>
                                    </div>
                                    <div class="pull-right margin-right5" style="color: darkgrey">
                                        文章分类
                                    </div>
                                </div>
                            </li>
                            <li class="dd-item dd3-item" data-id="14">
                                <div class="dd-handle dd3-handle"></div>
                                <div class="dd3-content">
                                    C++
                                    <div class="pull-right">
                                        <a href="#" style="color: deepskyblue;"><i class="fa fa-pencil"></i> </a>
                                        <a href="#" style="color: red;"><i class="fa fa-trash-o"></i> </a>
                                    </div>
                                    <div class="pull-right margin-right5" style="color: darkgrey">
                                        文章分类
                                    </div>
                                </div>
                            </li>
                            <li class="dd-item dd3-item" data-id="15">
                                <div class="dd-handle dd3-handle"></div>
                                <div class="dd3-content">
                                    网站前端
                                    <div class="pull-right">
                                        <a href="#" style="color: deepskyblue;"><i class="fa fa-pencil"></i> </a>
                                        <a href="#" style="color: red;"><i class="fa fa-trash-o"></i> </a>
                                    </div>
                                    <div class="pull-right margin-right5" style="color: darkgrey">
                                        文章分类
                                    </div>
                                </div>
                                <ol class="dd-list">
                                    <li class="dd-item dd3-item" data-id="16">
                                        <div class="dd-handle dd3-handle"></div>
                                        <div class="dd3-content">
                                            CSS
                                            <div class="pull-right">
                                                <a href="#" style="color: deepskyblue;"><i class="fa fa-pencil"></i> </a>
                                                <a href="#" style="color: red;"><i class="fa fa-trash-o"></i> </a>
                                            </div>
                                            <div class="pull-right margin-right5" style="color: darkgrey">
                                                文章分类
                                            </div>
                                        </div>
                                    </li>
                                    <li class="dd-item dd3-item" data-id="17">
                                        <div class="dd-handle dd3-handle"></div>
                                        <div class="dd3-content">
                                            HTML
                                            <div class="pull-right">
                                                <a href="#" style="color: deepskyblue;"><i class="fa fa-pencil"></i> </a>
                                                <a href="#" style="color: red;"><i class="fa fa-trash-o"></i> </a>
                                            </div>
                                            <div class="pull-right margin-right5" style="color: darkgrey">
                                                文章分类
                                            </div>
                                        </div>
                                    </li>
                                    <li class="dd-item dd3-item" data-id="18">
                                        <div class="dd-handle dd3-handle"></div>
                                        <div class="dd3-content">
                                            JavaScript
                                            <div class="pull-right">
                                                <a href="#" style="color: deepskyblue;"><i class="fa fa-pencil"></i> </a>
                                                <a href="#" style="color: red;"><i class="fa fa-trash-o"></i> </a>
                                            </div>
                                            <div class="pull-right margin-right5" style="color: darkgrey">
                                                文章分类
                                            </div>
                                        </div>
                                    </li>
                                </ol>

                            </li>
                            <li class="dd-item dd3-item" data-id="15">
                                <div class="dd-handle dd3-handle"></div>
                                <div class="dd3-content">
                                    运维技巧
                                    <div class="pull-right">
                                        <a href="#" style="color: deepskyblue;"><i class="fa fa-pencil"></i> </a>
                                        <a href="#" style="color: red;"><i class="fa fa-trash-o"></i> </a>
                                    </div>
                                    <div class="pull-right margin-right5" style="color: darkgrey">
                                        文章分类
                                    </div>
                                </div>
                                <ol class="dd-list">
                                    <li class="dd-item dd3-item" data-id="16">
                                        <div class="dd-handle dd3-handle"></div>
                                        <div class="dd3-content">
                                            Linux
                                            <div class="pull-right">
                                                <a href="#" style="color: deepskyblue;"><i class="fa fa-pencil"></i> </a>
                                                <a href="#" style="color: red;"><i class="fa fa-trash-o"></i> </a>
                                            </div>
                                            <div class="pull-right margin-right5" style="color: darkgrey">
                                                文章分类
                                            </div>
                                        </div>
                                    </li>
                                    <li class="dd-item dd3-item" data-id="17">
                                        <div class="dd-handle dd3-handle"></div>
                                        <div class="dd3-content">
                                            网络
                                            <div class="pull-right">
                                                <a href="#" style="color: deepskyblue;"><i class="fa fa-pencil"></i> </a>
                                                <a href="#" style="color: red;"><i class="fa fa-trash-o"></i> </a>
                                            </div>
                                            <div class="pull-right margin-right5" style="color: darkgrey">
                                                文章分类
                                            </div>
                                        </div>
                                    </li>
                                    <li class="dd-item dd3-item" data-id="18">
                                        <div class="dd-handle dd3-handle"></div>
                                        <div class="dd3-content">
                                            数据库
                                            <div class="pull-right">
                                                <a href="#" style="color: deepskyblue;"><i class="fa fa-pencil"></i> </a>
                                                <a href="#" style="color: red;"><i class="fa fa-trash-o"></i> </a>
                                            </div>
                                            <div class="pull-right margin-right5" style="color: darkgrey">
                                                文章分类
                                            </div>
                                        </div>
                                    </li>
                                </ol>
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.box-body -->
                <footer class="panel-footer">
                    <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-trash-o"></i> 保存菜单</button>
                </footer>
        </div>
        <!-- /. box -->
    </div>
    <!-- /.col -->
</div>

<!-- /.Main content -->
    <@res.jsRefV url="/assets/libs/jquery-multi-select/js/jquery.multi-select.js"/>
    <@res.jsRefV url="/assets/libs/jquery-multi-select/js/jquery.quicksearch.js"/>
    <@res.jsRefV url="/assets/libs/nestable/jquery.nestable.js"/>
<script>


    var initMultiSelect=function(selector) {
        $(selector).multiSelect({
            selectableHeader: "<input type='text' class='form-control search-input' autocomplete='off' placeholder='搜索...'>",
            selectionHeader: "<input type='text' class='form-control search-input' autocomplete='off' placeholder='搜索...'>",
            afterInit: function (ms) {
                var that = this,
                        $selectableSearch = that.$selectableUl.prev(),
                        $selectionSearch = that.$selectionUl.prev(),
                        selectableSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selectable:not(.ms-selected)',
                        selectionSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selection.ms-selected';

                that.qs1 = $selectableSearch.quicksearch(selectableSearchString)
                        .on('keydown', function (e) {
                            if (e.which === 40) {
                                that.$selectableUl.focus();
                                return false;
                            }
                        });

                that.qs2 = $selectionSearch.quicksearch(selectionSearchString)
                        .on('keydown', function (e) {
                            if (e.which == 40) {
                                that.$selectionUl.focus();
                                return false;
                            }
                        });
            },
            afterSelect: function () {
                this.qs1.cache();
                this.qs2.cache();
            },
            afterDeselect: function () {
                this.qs1.cache();
                this.qs2.cache();
            },
            keepOrder: true
        });
    };

    $(function () {
        initMultiSelect('#category_select');
        initMultiSelect('#page_select');
        initMultiSelect('#article_select');

        $('#nav_nestable').nestable({
            group: 1
        }).on('change', function (e) {
            var list = e.length ? e : $(e.target);
            console.log(JSON.stringify(list.nestable('serialize')));
        });

        $('#nestable_list_menu').on('click', function (e) {
            var target = $(e.target),
                    action = target.data('action');
            if (action === 'expand-all') {
                $('.dd').nestable('expandAll');
            }
            if (action === 'collapse-all') {
                $('.dd').nestable('collapseAll');
            }
        });

    });





</script>
</@common.content>