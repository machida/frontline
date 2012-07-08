$ ->
  $('#party_member_tokens').tokenInput '/users.json', 
    hintText: 'メンバーを選択してください' 
    theme: 'facebook'
    prePopulate: $('#party_member_tokens').data('load')
  $('.best_in_place').best_in_place()

  $("#global").css "height", $(window).height()
  $("#main").css "height", $(window).height()
  $("#wrapper").css "height", $(window).height()
  $(".member .body").css "height", $(window).height() - 127
  if $(".members table").is($(this).width() >= $("#wrapper").width())
    $("#main").css "width", $(".members table").width()
  else
    $("#main").css "width", $("#wrapper").width() - 70
  $("#header .times").css "left", $("#wrapper").width() - 420
  $(".member .header .state").click ->
    $(".member .header .selectstate").toggle()
  $(".doing").click ->
    $(".current .actions").toggle()
  $(".comments .label").click ->
    $(".comments ul").toggle()
  $("#notice").css "left", $(window).width() / 2 - $("#notice").width() / 2
  $("#notice").delay(2000).fadeOut "slow"