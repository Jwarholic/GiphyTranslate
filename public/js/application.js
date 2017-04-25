$(document).ready(function () {
  $('#translate').on('submit', handleTranslateButton);
});


function handleTranslateButton(event){
  event.preventDefault()

  var form = $(this);
  var method = $(this).attr('method');
  var url = $(this).attr('action');
  var data = $(this).serialize()
  debugger

  $.ajax({
    url: url,
    method: method,
    data: data,
  }).done(function(response){
    $('#body-list').prepend(response);
  })
}