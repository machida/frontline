$ ->
  h = $(".end").data("hour")
  m = $(".end").data("min")
  t = new Timer(h, m)
  t.start()
  $('#party_member_tokens').tokenInput '/users.json', 
    hintText: 'メンバーを選択してください' 
    theme: 'facebook'
  $('.best_in_place').best_in_place()
  $('.end .best_in_place').live 'ajax:success', (event, data, status, xhr) ->
    console.log(data)
    json = $.parseJSON(data)
    $(".end").attr("data-hour", json.end_hour).attr("data-min", json.end_min)
    t.stop()
    t = new Timer(json.end_hour, json.end_min)
    t.start()

  $("#global").css "height", $(window).height()
  $("#main").css "height", $(window).height()
  $("#wrapper").css "height", $(window).height()
  $(".member .body").css "height", $(window).height() - 127
  if $(".members table").is($(this).width() >= $("#wrapper").width())
    $("#main").css "width", $(".members table").width()
  else
    $("#main").css "width", $("#wrapper").width() - 50
  $("#header .times").css "left", $("#wrapper").width() - 420
  $(".member .header .state").click ->
    $(".member .header .selectstate").toggle()
  $(".doing").click ->
    $(".current .actions").toggle()
  $(".activities .label").click ->
    $(".activities ul").toggle()
  $("#notice").css "left", $(window).width() / 2 - $("#notice").width() / 2
  $("#notice").delay(2000).fadeOut "slow"