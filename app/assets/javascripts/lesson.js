$(function() {
  // User Agent Analytics
  var already_about = false;
  var already_voice = false;
  var already_method = false;
  var already_support = false;
  var already_pricing = false;
  var already_submit = false;
  var uid = uniqueID();
  $.ajax({
    type: 'post',
    url: '/user_agents/viewed',
    data: {
      uid: uid,
      section: "load"
    },
    success: function(data){
    },
    error: function(xhr, status){
    }
  });
  $("#about").mouseover(function(){
    if ( already_about == false ) {
      already_about = true;
      $.ajax({
        type: 'post',
        url: '/user_agents/viewed',
        data: {
          uid: uid,
          section: "about"
        },
        success: function(data){
        },
        error: function(xhr, status){
        }
      });
    }
  });
  $("#voice").mouseover(function(){
    if ( already_voice == false ) {
      already_voice = true;
      $.ajax({
        type: 'post',
        url: '/user_agents/viewed',
        data: {
          uid: uid,
          section: "voice"
        },
        success: function(data){
        },
        error: function(xhr, status){
        }
      });
    }
  });
  $("#method").mouseover(function(){
    if ( already_method == false ) {
      already_method = true;
      $.ajax({
        type: 'post',
        url: '/user_agents/viewed',
        data: {
          uid: uid,
          section: "method"
        },
        success: function(data){
        },
        error: function(xhr, status){
        }
      });
    }
  });
  $("#support").mouseover(function(){
    if ( already_support == false ) {
      already_support = true;
      $.ajax({
        type: 'post',
        url: '/user_agents/viewed',
        data: {
          uid: uid,
          section: "support"
        },
        success: function(data){
        },
        error: function(xhr, status){
        }
      });
    }
  });
  $("#pricing").mouseover(function(){
    if ( already_pricing == false ) {
      already_pricing = true;
      $.ajax({
        type: 'post',
        url: '/user_agents/viewed',
        data: {
          uid: uid,
          section: "pricing"
        },
        success: function(data){
        },
        error: function(xhr, status){
        }
      });
    }
  });
  $("#submit").mouseover(function(){
    if ( already_submit == false ) {
      already_submit = true;
      $.ajax({
        type: 'post',
        url: '/user_agents/viewed',
        data: {
          uid: uid,
          section: "submit"
        },
        success: function(data){
        },
        error: function(xhr, status){
        }
      });
    }
  });
});

function uniqueID(){
  var randam = Math.floor(Math.random()*1000);
  var date = new Date();
  var time = date.getTime();
  return randam + time.toString();
}
