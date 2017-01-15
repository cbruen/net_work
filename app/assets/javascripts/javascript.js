$(document).ready(function() {

});

var list = 1;

function add() {
  var id = $('#degrees').data("id");
  var url = "/users/" + id + "/degrees";
  var method = "GET";
  addDegrees(url);
}

function createList() {
  $.ajax({
    url: "/users",
    method: "GET",
    dataType: "json"
  }).done(function(data){
    list = data["users"].map(function(x) {return x["id"]});
  });
}

function addDegrees(url) {
  $.ajax({
    url: url,
    method: "GET",
    dataType: "json"
  }).done(function(data) {
      $('#degrees').html("");
    data["degrees"].forEach(function(x) {
      var list = "<h3>" + x["school"]["name"] + " (" + x["school"]["city"] + ")</h3>";
      list += "<p>" + x["name"] + "</p>";
      list += "<p>GPA: " + x["gpa"] + "</p></br>";
      $('#degrees').append(list);
    });
  });
}
