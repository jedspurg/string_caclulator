$(document).ready(function() {
  $("#calculator")
    .on("ajax:success", function(event, data, status, xhr) {
      $('#results').text(data['results']);
    }).on("ajax:error", function(event, data, status, xhr) {
      $('#results').text('An error occurred.');
    });

});
