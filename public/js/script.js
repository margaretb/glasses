$(document).ready(function() {
  setTimeout(function(){
    $('body').addClass('loaded');
  }, 4200);
});


$(function () {
  var messages = [],
      index = 0;

  messages.push('design');
  messages.push('develop');
  messages.push('produce');;
  messages.push('deliver');
  messages.push('are Frames for Dames');

  function generateMarkup() {
    var markup = '';
    messages.forEach(function(item){
      markup += '<li>' + item + '</li>';
    });
    //Wrapping up in <ul class="texts">
    markup = '<ul class="texts">' + markup + '</ul>';
    return markup;
  }
  markup = generateMarkup();
  $("#preload-words").append(markup);

  $('#preload-words').textillate({
    in: {
      effect: 'fadeIn',
      sync: true,
    },
    out: {
      effect: 'fadeOut',
      sync: true,
    },
    initialDelay: 100,
    loop: false,
    minDisplayTime: 350,
    delay: 0
  });
});