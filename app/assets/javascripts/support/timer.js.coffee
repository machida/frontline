class @Timer
  timer_id: null
  constructor: (@hour, @min) ->
    console.log("init")
  start: () =>
    console.log("start")
    @count()
  stop: () =>
    console.log("stop")
    clearTimeout(@timer_id)
    @timer_id = null
  count: () =>
    console.log("count")
    t = new Date()
    h = if (t.getHours() >= 10) then t.getHours() else "0" + t.getHours()
    m = if (t.getMinutes() >= 10) then t.getMinutes() else "0" + t.getMinutes()
    s = if (t.getSeconds() >= 10) then t.getSeconds() else "0" + t.getSeconds()
    now = h + ":" + m + ":" + s
    $(".now").html(now)
    if @hour != 0 || @min != 0
      end_t = new Date(t.getFullYear(), t.getMonth(), t.getDate(), @hour, @min, 0)
      remain = parseInt((end_t.getTime() - t.getTime()) / 1000) + 1
      $(".remain").html(remain)
    else
      $(".remain").html("0")
    @timer_id = setTimeout(@count, 1000)
    if (t >= end_t)
      console.log(t)
      console.log(end_t)
      clearTimeout(@timer_id)
      $(".remain").html("0")
      console.log('Time Up!')
      end_t = null
      setTimeout @alert, 1000
  alert: ->
    alert('Time Up!')
