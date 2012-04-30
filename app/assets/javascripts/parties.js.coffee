$ ->
  $('#party_user_tokens').tokenInput '/users.json', 
    hintText: 'メンバーを選択してください' 
    theme: 'facebook'
  $("#global").css "height", $(window).height()
  $("#main").css "height", $(window).height()
  $("#wrapper").css "height", $(window).height()
  $(".member .body").css "height", $(window).height() - 127
  if $(".members table").is($(this).width() >= $("#wrapper").width())
    $("#main").css "width", $(".members table").width()
  else
    $("#main").css "width", $("#wrapper").width() - 50
  $("#header .times").css "left", $("#wrapper").width() - 320
  $(".member .header .state").click ->
    $(".member .header .selectstate").toggle()
  $(".doing").click ->
    $(".current .actions").toggle()
  $(".activities .label").click ->
    $(".activities ul").toggle()