<#import "common/admin-common.ftl" as common>
<#import "common/resource-import.ftl" as res>
<@common.content>
    <@res.cssRefV url="/assets/libs/icheck/skins/flat/blue.css"/>
    <@res.cssRefV url="/assets/css/datatables-custiom.css"/>

<!-- page heading start-->
<div class="page-heading">
            <h3>
                仪表盘
            </h3>
            <h5>感谢使用BlogWaver，尽情使用吧！版本：1.0</h5>
            <div class="state-info">
                <section class="panel">
                    <div class="panel-body">
                        <div class="summary">
                            <span>访问官网</span>
                            <a href="#"> <h3 class="green-txt">BlogWaver</h3></a>
                        </div>
                        <div id="expense" class="chart-bar"></div>
                    </div>
                </section>
            </div>
        </div>
<!-- page heading end-->

<!-- Main content -->
<div class="wrapper">
    <div class="row">
        <div class="col-md-6">
            <!--statistics start-->
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-body">
                            <div class="media usr-info">
                                <a href="#" class="pull-left">
                                    <img class="thumb" src="${basePath}/assets/images/photos/user1.png" alt=""/>
                                </a>
                                <div class="media-body">
                                    <h4 class="media-heading">Jeffrey Hu</h4>
                                    <span>管理员</span>
                                    <p>时间是一切财富中最宝贵的财富。</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row state-overview">
                <div class="col-md-6 col-xs-12 col-sm-6">
                    <div class="panel purple">
                        <div class="symbol">
                            <i class="fa fa-eye"></i>
                        </div>
                        <div class="state-value">
                            <div class="value">2</div>
                            <div class="title"> 在线人数</div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-xs-12 col-sm-6">
                    <div class="panel red">
                        <div class="symbol">
                            <i class="fa fa-history"></i>
                        </div>
                        <div class="state-value">
                            <div class="value">532</div>
                            <div class="title"> 访问统计</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row state-overview">
                <div class="col-md-6 col-xs-12 col-sm-6">
                    <div class="panel blue">
                        <div class="symbol">
                            <i class="fa fa-edit"></i>
                        </div>
                        <div class="state-value">
                            <div class="value">14</div>
                            <div class="title"> 文章数目</div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-xs-12 col-sm-6">
                    <div class="panel green">
                        <div class="symbol">
                            <i class="fa fa-comment"></i>
                        </div>
                        <div class="state-value">
                            <div class="value">390</div>
                            <div class="title"> 评论数目</div>
                        </div>
                    </div>
                </div>
            </div>

            <!--statistics end-->
        </div>
        <div class="col-md-6">
            <div class="panel  weather-info">
                <div class="turquoise-bg white-text top-radius">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-xs-5">
                                <div class="text-center">
                                    <i class="big-icon  ico-cloudy"></i>
                                </div>
                            </div>
                            <div class="col-xs-7">
                                <div class="text-center">
                                    <div class="degree">47</div>
                                    <div>Very Hot Cloudy</div>
                                    <div class="d-value"><span>32</span> / <span>17</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="weather-location dark-turquoise-bg">
                    <form role="form" class="form-horizontal">
                        <div class="form-group">
                            <div class="col-lg-12">
                                <input type="text" placeholder="Find Location" class="form-control find-loc">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="panel-body">
                    <ul class="weather-forecast ">
                        <li class="first"><a id="su" href="javascript:;" ><strong>su</strong><span><i class="ico-cloudy"></i></span><span class="d-value">31</span></a></li>
                        <li><a id="mo" href="javascript:;" ><strong>mo</strong><span><i class=" ico-rainy2"></i></span><span class="d-value">20</span></a></li>
                        <li><a class="active" id="tu" href="javascript:;" ><strong>tu</strong><span><i class=" ico-lightning3"></i></span><span class="d-value">27</span></a></li>
                        <li><a id="we" href="javascript:;" ><strong>we</strong><span><i class=" ico-sun3"></i></span><span class="d-value">23</span></a></li>
                        <li><a id="th" href="javascript:;" ><strong>th</strong><span><i class=" ico-snowy3"></i></span><span class="d-value">26</span></a></li>
                        <li><a id="fr" href="javascript:;" ><strong>fr</strong><span><i class=" ico-cloudy "></i></span><span class="d-value">32</span></a></li>
                        <li class="last"><a id="sa" href="javascript:;" ><strong>sa</strong><span><i class=" ico-lightning3 "></i></span><span class="d-value">24</span></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- /.Main content -->
    <@res.jsRefV url="/assets/libs/datatables/media/js/jquery.dataTables.min.js"/>
    <@res.jsRefV url="/assets/libs/datatables/media/js/dataTables.bootstrap.min.js"/>
    <@res.jsRefV url="/assets/libs/jquery-tags-input/jquery.tagsinput.js"/>
    <@res.jsRefV url="/assets/libs/icheck/icheck.min.js"/>
<script>

    $(function () {

    })

</script>
</@common.content>