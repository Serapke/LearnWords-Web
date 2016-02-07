$(document).ready(function(){
    $('.box .benefit').hide();
    $('.box .always-show').hover(function(e){
        e.preventDefault();
        // hide all span
        var $this = $(this).parent().find('.benefit');
        $(".box .benefit").not($this).slideUp();
        // here is what I want to do
        $this.slideToggle('slow');
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
