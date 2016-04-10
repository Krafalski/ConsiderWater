// alert ('GRAPH!')

$.ajax({
           type: "GET",
           contentType: "application/json; charset=utf-8",
           url: 'data',
           dataType: 'json',
           success: function (data) {
               data2 = data.map(justRating);
               data3 = data.map(nestArrayMe);
               data4 = data.map(dateConvert);
               console.log(data2)
               draw(data3);
           },
           error: function (result) {
               error();
           }
       });

//console.log(data);

function consoleMe (element){
  console.log (element.rating + " " + element.created_at);
}

function justRating(element){
  return element.rating
}

function nestArrayMe(element){
  var pair = [element.rating, element.rating];
  return pair;
}

function dateConvert(){
  //look up how to make date a proper axis on d3
}

var w = 1000;
var h = 500;



;
function draw(data){

  // ////////////sad bar graph////////////////
  // d3.select('.container').selectAll('div')
  // .data(data2)
  // .enter()
  // .append('div')
  // .attr("class", "bar")
  // .style("height", function(d){
  //   var scaleHeight = d*2;
  //   return scaleHeight + "px";
  // })
  // .attr("fill", "red")
  //
  // .text(function(d){return d;})
  // .attr('class', 'bar')
  // .style('height', function(d){
  //   var barHeight = d*5;
  //   return barHeight + "px";
  // })
  //
  // // .attr('fill', function(d){
  // //   return "rgba(" + (d*24) + "  ,  " + (d*24) + "," + (d*24) + ", 0.5 )"
  // // })
  // ;



  ////////////circles just rating////////////////

  var svg =   d3.select('.container')
       .append('svg')
       .attr('width', w)
       .attr('height', h);

var circle =  svg.selectAll("circle")
   .data(data2)
   .enter()
   .append("circle")
   .attr('y', function (d){
    //  console.log(h-d)
     return h-d;
   })
   .attr('height', function (d){
     return d;
   })
   ;

 circle.attr('cx', function (d, i){
   return (i*15)+ 10;
 })
   .attr('cy', function(d){
     q= d*30;
     var adjustments =((h-q))*1//-200)/100)*120;
     //console.log(adjustments);
     return adjustments;
   })
   .attr('r', function (d){
     return 5;
   })
   .attr('fill', function(d){
     return "rgba(" + (d*24) + "  ,  " + (d*24) + "," + (d*24) + ", 0.5 )"
   })
   .attr('stroke', function(d){
          return "rgba(" + (d*20) + "  ,  " + (d*20) + "," + (d*20) + ", 0.5 )"
   })
   .attr('stroke-width', function(d){
     return 2;
   })


///////////circles scatter/////////////////
 //
 // var svg = d3.select('.container')
 // .append('svg')
 // .attr('width', w)
 // .attr('height', h);
 //
 // svg.selectAll('circle')
 //  .data(data)
 //  .enter()
 //  .append('circle')
 //  .attr('cx', function(d){
 //    return d[0]*20;
 //
 //  })
 //  .attr('cy', function(d,i){
 //    return i*3;
 //  })
 //  .attr('r', 5)
 //  .attr('fill', function(d){
 //    return "rgba(" + (d*24) + "  ,  " + (d*24) + "," + (d*24) + ", 0.5 )"
 //  })
 //  .attr('stroke', function(d){
 //         return "rgba(" + (d*20) + "  ,  " + (d*20) + "," + (d*20) + ", 0.5 )"
 //  })
 //  .attr('stroke-width', function(d){
 //    return 2;
 //  });







//closes draw function do not delete
}














//
//
// function drawBar(data) {
//     var color = d3.scale.category20b();
//     var width = 420,
//         barHeight = 20;
//
//     var x = d3.scale.linear()
//         .range([0, width])
//         .domain([0, d3.max(data)]);
//
//     var chart = d3.select("#graph")
//         .attr("width", width)
//         .attr("height", barHeight * data.length);
//
//     var bar = chart.selectAll("g")
//         .data(data)
//         .enter().append("g")
//         .attr("transform", function (d, i) {
//                   return "translate(0," + i * barHeight + ")";
//               });
//
//     bar.append("rect")
//         .attr("width", x)
//         .attr("height", barHeight - 1)
//         .style("fill", function (d) {
//                    return color(d)
//                })
//
//     bar.append("text")
//         .attr("x", function (d) {
//                   return x(d) - 10;
//               })
//         .attr("y", barHeight / 2)
//         .attr("dy", ".35em")
//         .style("fill", "white")
//         .text(function (d) {
//                   return d;
//               });
// }

function error() {
    console.log("error")
}
