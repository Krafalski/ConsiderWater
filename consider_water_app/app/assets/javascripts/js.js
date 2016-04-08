
//sorta works, best of the ones I've tried- when lower version than 5.0.0 turbolinks used
//$( document ).ready(function() {

//does not work at all- needed upgrade to turbolinks 5
 $(document).on('turbolinks:load', function() {


var breath = $('.breath');
var menu = $('.menu');
var hello =$('.hello');
menu.hide();
hello.
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


mood1.on('click', function(event){console.log ('1')});
mood2.on('click', function(event){console.log ('2')});
mood3.on('click', function(event){console.log ('3')});
mood4.on('click', function(event){console.log ('4')});
mood5.on('click', function(event){console.log ('5')});
mood6.on('click', function(event){console.log ('6')});
mood7.on('click', function(event){console.log ('7')});
mood8.on('click', function(event){console.log ('8')});
mood9.on('click', function(event){console.log ('9')});
mood10.on('click', function(event){console.log ('10')});








 //document ready close- do not delete
 });
