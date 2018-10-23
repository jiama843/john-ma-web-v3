

$(document).on("turbolinks:load", function(){
  var controller = $("body").data('controller');
  var action = $("body").data('action');

  if(controller == "main" && action == "index"){

    // Load introduction (Hi, I'm John)
    $('.oneshot_icon').slideDown(1618, function(){
      $('#introduction').fadeIn(1618, function(){
        $('#app_body').fadeIn(1618);
      });
    });

    // Fade out elements upon scroll
    $(window).scroll(function(){
      $(".container").each(function(){
        //console.log($(this));
        //console.log($(window).scrollTop());
        //console.log($(window).height());
        $(this).css("opacity", 1 - ($(this).offset().top - $(window).scrollTop()) / $(window).height()) * 1.2;
      });
    });

    // Redirect to link when project card is clicked
    $(".card").click(function() {
      window.location = $(this).find("a").attr("href"); 
      return false;
    });

    /* Change 
    $(".card").each(function(){
      $(this).hover(
        function(){
          $(this).addClass( "hover" );
        },
        function(){
          $(this).removeClass( "hover" );
        }
      );
    });*/
  }
});