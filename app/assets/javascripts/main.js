

$(document).on("turbolinks:load", function(){
  var controller = $("body").data('controller');
  var action = $("body").data('action');

  if(controller == "main" && action == "index"){

    // Load introduction (Hi, I'm John)
    $('.oneshot_icon').slideDown(1618, function(){
      $('#introduction').fadeIn(1618);
    });

  }
});