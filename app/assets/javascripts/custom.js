$(document).ready(function(){
    $(".always-show").mouseover(function(){
		var theId = "#d" + $(this).attr('id');
        $(theId).show();
    });
    $(".always-show").mouseout(function(){
		var theId = "#d" + $(this).attr('id');
        $(theId).hide();
    });
    if (navigator.appVersion.indexOf("Win")!=-1) $("#download_mac").hide();
    if (navigator.appVersion.indexOf("Mac")!=-1) $("#download_win").hide();
});
