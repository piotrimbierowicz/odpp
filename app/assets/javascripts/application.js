// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


$(document).ready(function(){
    function fitPage() {
        $('.footer').css('top', '0');
        var wh = $(window).height();
        var dh = $('.footer').offset().top + $('.footer').outerHeight();
        if((wh - dh) > 0) {
            $('.footer').css('top', wh - dh);
        }

    }

    fitPage();
    $(window).load(function() { fitPage(); });
    $(window).resize(function() { fitPage(); });

});
