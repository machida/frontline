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
     adjust();
     $(window).resize(function(){
          adjust();
     })
　　　function adjust(){
          var h = $(window).height(); //ウィンドウの高さ
          $('.member .body').css("height",h-145); //可変部分の高さを適用
     }
});

//headerの横幅
$(document).ready(function() {
          var w = $(".members table").width();
          $('#header').css("width",w); 
});

//timesの位置
$(document).ready(function() {
          var headerw = $("#wrapper").width();
          $('#header .times').css("left",headerw-270);
});