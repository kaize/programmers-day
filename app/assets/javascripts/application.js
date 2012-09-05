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
// =  require jquery
// =  require jquery.jcarousel.min
// =  require cufon-yui.js
// =  require cufon.js
// =  require myriad_pro_400.font.js

$(function() {

    $('.alert .close').click(function() {
        $(this).parent().hide();
        return false;
    });

    $('#mycarousel').jcarousel({
		scroll: 1
    });

    function toSt(n) {
        var s = ""
        if(n<10) s += "0"
        return s+n.toString();
    }

    var countdown = function() {
        var eventdate = new Date("September 12, 2012 14:00:00 GMT"),
            cl = $('form.clock'),
            d = new Date()
        ;
        count = Math.floor((eventdate.getTime()-d.getTime())/1000);
        if(count <= 0) {
            cl.parents('ul').hide().parents('.header').css({height: 162});
            return;
        }

        count = Math.floor(count/60);
        cl.find('input[name="mins"]').val(toSt(count%60));
        count = Math.floor(count/60);
        cl.find('input[name="hours"]').val(toSt(count%24));
        count = Math.floor(count/24);
        cl.find('input[name="days"]').val(count);
        setTimeout(countdown, 1000);
    }

    countdown();

});

