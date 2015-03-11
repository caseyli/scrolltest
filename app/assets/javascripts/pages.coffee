window.windowScroll = ->
  pixelsDown = $(window).scrollTop()
  $(".scroll-position").html pixelsDown

  scrollBoxHeight = $(".scrollbox").height()
  windowHeight = $(window).height()
  percentage = pixelsDown / (scrollBoxHeight - windowHeight) * 100

  $(".scroll-bar").css("width", percentage + "%")

$ ->
  $(window).scroll windowScroll