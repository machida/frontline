$ ->
  $(".member .body").css "height", $(window).height() - 145
  $("#header").css "width", $(".members table").width()
  $("#header .times").css "left", $("#wrapper").width() - 320