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
//= require jquery.ui.all
//= require jquery.ui.datepicker-ru
//= require twitter/bootstrap
//= require bootstrap
//= require ckeditor/init
//= require_self
$(function() {
    $.datepicker.setDefaults($.datepicker.regional['ru']);

    $('input.datepicker').datepicker({
        dateFormat: "yy-mm-dd",
    });

    $('a.popup').popover({placement: 'top', trigger: 'hover'});

    $('a.refresh-timepad-maillists').click( function() {

      var select = $(this).parent().find('select'), i, icon = $(this).children();
      icon.removeAttr('class').addClass('icon-refresh animate-rotation');
      $.post($(this).attr('href'), '_method=put', function(data) {

        select.find('option + option').remove();
        for (i in data.items)
          select.append('<option value=' + data.items[i].id + '>' + data.items[i].name 
                        + ' (' + data.items[i].items_count + ')' + '</option>');

        icon.removeAttr('class').addClass('icon-refresh');
      }, 'json').error( function() {

        icon.removeAttr('class').addClass('icon-warning-sign');
      });

      return false;
    });
});
