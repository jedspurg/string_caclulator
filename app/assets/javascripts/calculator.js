$(document).ready(function() {
  $("#calculator")
    .on("ajax:success", function(event, data, status, xhr) {
      $('#original-equation').text(data['equation']);
      $('#result').text(data['result']);
    }).on("ajax:error", function(event, data, status, xhr) {
      $('#results').text('An error occurred.');
    });

});
