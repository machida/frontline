# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $('.add a').click ->
    $('.add').toggleClass("close")
    false

  $(document).on 'click', 'span.comments', ->
    $('div.comments').hide()
    $("##{$(@).data("id")} div.comments").show()
  $(document).on 'click', 'div.comments .close', ->
    $('div.comments').hide()
