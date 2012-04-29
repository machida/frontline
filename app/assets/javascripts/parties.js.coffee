# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $('#party_user_tokens').tokenInput '/users.json', 
    hintText: 'メンバーを選択してください' 
    theme: 'facebook'
