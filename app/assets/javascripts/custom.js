$(document).ready(function(){
    $(".always-show").mouseover(function(){
		var theId = "#d" + $(this).attr('id');
        $(theId).show();
    });
    $(".always-show").mouseout(function(){
		var theId = "#d" + $(this).attr('id');
        $(theId).hide();
    });
});
