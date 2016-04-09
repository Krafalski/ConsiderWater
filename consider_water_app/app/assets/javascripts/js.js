
//sorta works, best of the ones I've tried- when lower version than 5.0.0 turbolinks used
//$( document ).ready(function() {

//does not work at all- needed upgrade to turbolinks 5
 $(document).on('turbolinks:load', function() {


var breath = $('.breath');
var menu = $('.menu');
var logo =$('.logo');
menu.hide();
logo.
click(function(){
  menu.toggle("slow", function(){
    console.log('amimation complete')
  });
});

 var mood1 = $('.mood1');
 var mood2 = $('.mood2');
 var mood3 = $('.mood3');
 var mood4 = $('.mood4');
 var mood5 = $('.mood5');
 var mood6 = $('.mood6');
 var mood7 = $('.mood7');
 var mood8 = $('.mood8');
 var mood9 = $('.mood9');
 var mood10 = $('.mood10');



var breathSpeed1 = $('.breath-speed-1');
var breathSpeed2 = $('.breath-speed-2');
var breathSpeed3 = $('.breath-speed-3');
var breathSpeed4 = $('.breath-speed-4');
var breathSpeed5 = $('.breath-speed-5');

breathSpeed1.on('click', function(event){console.log ('1')});
breathSpeed2.on('click', function(event){console.log ('2')});
breathSpeed3.on('click', function(event){console.log ('3')});
breathSpeed4.on('click', function(event){console.log ('4')});
breathSpeed5.on('click', function(event){console.log ('5')});




 //document ready close- do not delete
 });
