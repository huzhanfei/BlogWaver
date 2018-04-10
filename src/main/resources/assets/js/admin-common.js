$(function () {
    // 左侧导航菜单Pjax绑定
    $(document).pjax(".sidebar a", ".content-wrapper");
    NProgress.configure({parent: '.main-footer'});
    $(document).on('pjax:start', function () {
        NProgress.start();
    });
    $(document).on('pjax:end', function () {
        NProgress.done();
        navHighlights(true);
    });
    // 左侧导航菜单高亮
    navHighlights(false);
});

function navHighlights(isRemoveOtherActive) {
    var curr_location = location.href.toLocaleLowerCase();
    if (isRemoveOtherActive){
        $(".sidebar-menu li").removeClass("active").removeClass("menu-open");
    }
    $(".sidebar-menu a").each(function () {
        var curr_a = $(this).attr("href").toLocaleLowerCase();
        if (curr_location.indexOf(curr_a) != -1 && curr_a != "") {
            $(this).parent('li').addClass("active");
            var treeView = $(this).parentsUntil(".sidebar-menu", ".treeview").first();
            if (treeView == undefined || treeView == null || treeView.length == 0) {
                $(".treeview-menu").slideUp();
            } else {
                treeView.addClass("active").addClass("menu-open");
                treeView.find(".treeview-menu").css("display","block")
            }
        }
    });
}