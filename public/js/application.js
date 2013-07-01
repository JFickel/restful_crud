$(document).ready(function() {
  var handlerIn = function (show_user_link){
    $('.content').fadeOut();
    event.preventDefault();
    // console.log(show_user_link);
    var url_class = $(show_user_link).attr('href');
    $.ajax({
      type: "GET",
      url: url_class
    }).done(function(data){
      $('.content').empty();
      $('.content').hide().append(data).fadeIn('slow');
    });
  }

  var handlerOut = function (){
  }


  $('.nav_headers').on('click', function(event){
    event.preventDefault();
    var url_class = $(this).find('input').attr('class');
    console.log(url_class);
    $.ajax({
      type: "GET",
      url: "/" + url_class
    }).done(function(data){
      $('.content').empty();
      $('.content').hide().append(data).fadeIn('slow');
    });
  });

  $(document).on('click', '.show_user', function(e){
    handlerIn(this);
  });
  
});
