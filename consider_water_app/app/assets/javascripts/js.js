
//sorta works, best of the ones I've tried- when lower version than 5.0.0 turbolinks used
//$( document ).ready(function() {

//does not work at all- needed upgrade to turbolinks 5
 $(document).on('turbolinks:load', function() {

///////////////MENU /////////////////
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



///////////////Breath /////////////////
var breathSpeed1 = $('.breath-speed-1-control');
var breathSpeed2 = $('.breath-speed-2-control');
var breathSpeed3 = $('.breath-speed-3-control');
var breathSpeed4 = $('.breath-speed-4-control');
var breathSpeed5 = $('.breath-speed-5-control');

var breathdiv    = $('#breath');

breathdiv.on('click', function (event){
  console.log ('Imma beeen clicked wooo!')
})

breathSpeed1.on('click', function(event){
  breathdiv.removeClass("breath-speed-1 breath-speed-2 breath-speed-3 breath-speed-4 breath-speed-5");
  breathdiv.addClass("breath-speed-1");
  console.log('successs? 1')

});
breathSpeed2.on('click', function(event){
  breathdiv.removeClass("breath-speed-1 breath-speed-2 breath-speed-3 breath-speed-4 breath-speed-5");
  breathdiv.addClass("breath-speed-2");
  console.log('successs? 2')
});
breathSpeed3.on('click', function(event){
  breathdiv.removeClass("breath-speed-1 breath-speed-2 breath-speed-3 breath-speed-4 breath-speed-5");
  breathdiv.addClass("breath-speed-3");
  console.log('successs? 3')
});
breathSpeed4.on('click', function(event){
  breathdiv.removeClass("breath-speed-1 breath-speed-2 breath-speed-3 breath-speed-4 breath-speed-5");
  breathdiv.addClass("breath-speed-4");
  console.log('successs? 4')
});
breathSpeed5.on('click', function(event){
  breathdiv.removeClass("breath-speed-1 breath-speed-2 breath-speed-3 breath-speed-4 breath-speed-5");
  breathdiv.addClass("breath-speed-5");
  console.log('successs? 5')
});

///////////////Feeling /////////////////
var feeling1 = $('.feeling1');
var feeling2 = $('.feeling2');
var feeling3 = $('.feeling3');
var feeling4 = $('.feeling4');
var feeling5 = $('.feeling5');
var feeling6 = $('.feeling6');
var feeling7 = $('.feeling7');
var feeling8 = $('.feeling8');
var feeling9 = $('.feeling9');
var feeling10 = $('.feeling10');
var feeling11 = $('.feeling11');
var feeling12 = $('.feeling12');
var feeling13 = $('.feeling13');
var feeling14 = $('.feeling14');
var feeling15 = $('.feeling15');
var feeling16 = $('.feeling16');
var feeling17 = $('.feeling17');

feeling2.hide();
feeling3.hide();
feeling4.hide();
feeling5.hide();
feeling6.hide();
feeling7.hide();
feeling8.hide();
feeling9.hide();
feeling10.hide();
feeling11.hide();
feeling12.hide();
feeling13.hide();
feeling14.hide();
feeling15.hide();
feeling16.hide();
feeling17.hide();

feeling1.on('click', function(event){
  feeling1.hide();
  feeling2.show();
});

feeling2.on('click', function(event){
  feeling2.hide();
  feeling3.show();
});

feeling3.on('click', function(event){
  feeling3.hide();
  feeling4.show();
});

feeling4.on('click', function(event){
  feeling4.hide();
  feeling5.show();
});

feeling5.on('click', function(event){
  feeling5.hide();
  feeling6.show();
});

feeling6.on('click', function(event){
  feeling6.hide();
  feeling7.show();
});

feeling7.on('click', function(event){
  feeling7.hide();
  feeling8.show();
});


feeling8.on('click', function(event){
  feeling8.hide();
  feeling9.show();
});

feeling9.on('click', function(event){
  feeling9.hide();
  feeling10.show();
});

feeling10.on('click', function(event){
  feeling10.hide();
  feeling11.show();
});

feeling11.on('click', function(event){
  feeling11.hide();
  feeling12.show();
});

feeling12.on('click', function(event){
  feeling12.hide();
  feeling13.show();
});

feeling13.on('click', function(event){
  feeling13.hide();
  feeling14.show();
});

feeling14.on('click', function(event){
  feeling14.hide();
  feeling15.show();
});

feeling15.on('click', function(event){
  feeling15.hide();
  feeling16.show();
});

feeling16.on('click', function(event){
  feeling16.hide();
  feeling17.show();
});
feeling17.on('click', function(event){
  feeling17.hide();
  feeling1.show();
});
 //document ready close- do not delete
 });
