# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $('#party_user_tokens').tokenInput '/users.json', 
    hintText: 'メンバーを選択してください' 
    theme: 'facebook'

$ ->
  $(".member .body").css "height", $(window).height() - 145
  $("#header").css "width", $(".members table").width()
  $("#header .times").css "left", $("#wrapper").width() - 320
  $(".doing").click ->
    $(".current .actions").toggle()
  $(".activities .label").click ->
    $(".activities ul").toggle()