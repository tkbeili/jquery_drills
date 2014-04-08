# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->

  # $(".box").on "click", ->
  #   alert("box1")

  # $(".box1").on "click", (e)->    
  #   alert("box2")
  #   e.stopPropagation()

  # $(".box2").on "click", ->
  #   alert("box3")


  $(document).on "click", ".btn-remove-block", (event)->
    $(this).parents(".well").fadeOut()

  $(document).on "keyup", "#task", (event)->
    keycode = if event.keyCode then event.keyCode else event.which
    console.log keycode
    if(keycode == 13  )
      $li = $("<li>", {text: $(this).val(), class: "task"})
      $("ul.tasks").append($li)
      $(this).val("")

  $(document).on "click", ".task", (event)->
    $(this).fadeOut()

  $(document).on "submit", "#personal-info", (event) ->
    result = "First Name: " + $("#First_Name").val() + " " + 
             "Last Name: "  + $("#Last_Name").val()  + " " + 
             "Email: "      + $("#Email").val()
    $("#display").text(result)
    return false