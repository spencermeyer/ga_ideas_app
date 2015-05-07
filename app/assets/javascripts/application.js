// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require_tree .

$(function(){ $(document).foundation(); });

window.onload = function(){
  $.ajax({
    url: "/ideas.json",
    type: "GET",
    dataType: "json"
  }).done(function(data){
    var templateText    = $("#ideasTemplate").html();
    var ideasTemplate = _.template(templateText);

    _(data.ideas).each(function(idea){
      var parsedTemplate = ideasTemplate(idea);
      $("#ideas-list").append(parsedTemplate);
    });
  });
}