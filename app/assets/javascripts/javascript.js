$(document).ready(function() {
//  test();

});

function test() {
  console.log("AHH");
}



function add() {
  var id = $('#degrees').data("id");
  console.log(id);
  var url = "/users/" + id + "/degrees";
  var method = "GET";
  $.ajax({
    url: url,
    method: method,
    dataType: "json"
  }).done(function(data) {
    data["degrees"].forEach(function(x) {
      var list = "<h3>" + x["school"]["name"] + " (" + x["school"]["city"] + ")</h3>";
      list += "<p>" + x["name"] + "</p>";
      list += "<p>GPA: " + x["gpa"] + "</p></br>";
      $('#degrees').append(list);
    });
  });
}
