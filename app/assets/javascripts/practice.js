var showAlert = function(){
     alert($(this).attr("id"));
};


$(document).ready(function() {
  $(".my-button").click(showAlert);
});


$(document).on("click", ".btn-remove-block", function() {
    $(this).parents(".well").fadeOut();
});


    $(document).on("keyup", "#task", function(event) {
      var $li, keycode;
      keycode = event.keyCode ? event.keyCode : event.which;
      console.log(keycode);
      if (keycode === 13) {
        $li = $("<li>", {
          text: $(this).val(),
          "class": "task"
        });
        $("ul.tasks").append($li);
        $(this).val("");
      }
    });



$(document).ready(function() {
  $(".box1").click(function(event) {
      alert("box 1");
  });
  $(".box2").click(function(event) {
      alert("box 2");
      event.stopPropagation();
  });
  $(".box3").click(function(event) {
      alert("box 3");
  });
});








