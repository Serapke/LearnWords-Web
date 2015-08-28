$(document).ready(function(){
    $(".always-show").hover(function(){
		var theId = "#d" + $(this).attr('id');
        $(theId).toggle(500);
    });
});