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

    if (screen.width < 767) {
      $('.duk .answer').hide();
      $('.duk .query').click(function(e){
          e.preventDefault();
          // hide all span
          var $this = $(this).parent().find('.answer');
          $(".duk .answer").not($this).slideUp();
          // here is what I want to do
          $this.slideToggle('slow');

      });
    }
});
