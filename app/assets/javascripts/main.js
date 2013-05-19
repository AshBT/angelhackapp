
$("#chart-button").click(function() {
    $('#dashboard').slideToggle();
});

$("#alert-button").click(function() {
    $('.alerts').slideToggle();
});

// google.load('visualization', '1', {
//     packages: ['controls']
//     });
// google.setOnLoadCallback(drawChart);

// function drawChart () {
//     var data = new google.visualization.DataTable();
//     data.addColumn('date', 'Date');
//     data.addColumn('number', 'A');
  
//     data.addRows([
//         // change strings to Dates (year, month), where months are zero-indexed
//         [new Date(2013, 0), 5],
//         [new Date(2012, 11), 2],
//         [new Date(2012, 10), 5],
//         [new Date(2012, 9), 3],
//         [new Date(2012, 8), 3],
//         [new Date(2012, 7), 12],
//         [new Date(2012, 6), 10],
//         [new Date(2012, 5), 9],
//         [new Date(2012, 4), 10],
//         [new Date(2012, 3), 8],
//         [new Date(2012, 2), 8],
//         [new Date(2012, 1), 6],
//         [new Date(2012, 0), 6]
//         ]);

//     var dateFormat = new google.visualization.DateFormat({
//         pattern: 'MMM/y'
//     });
//     dateFormat.format(data, 0);
  
//     var rangeFilter = new google.visualization.ControlWrapper({
//         controlType: 'ChartRangeFilter',
//         containerId: 'range_filter_div',
//         options: {
//             filterColumnIndex: 0,
//             ui: {
//                 chartOptions: {
//                     height: 30,
//                     width: 300, // must be the same in both the chart and the control
//                     chartArea: {
//                         width: '90%' // must be the same in both the chart and the control
//                     },
//                     hAxis: {
//                         format: 'MMM/y'
//                     }
//                 },
//                 chartView: {
//                     columns: [0, 1]
//                 }
//             }
//         },
//         state: {
//             range: {
//                 // set the starting range to January - April 2012 (change to whatever date range you like)
//                 start: new Date(2012, 0),
//                 end: new Date(2012, 3)
//             }
//         }
//     });
    
//     var chart = new google.visualization.ChartWrapper({
//         chartType: 'LineChart',
//         containerId: 'chart_div',
//         options: {
//             // width and chartArea.width should be the same for the filter and chart
//             chartArea: {
//                 width: '90%', // must be the same in both the chart and the control
//                 height: '60%'
//             },
//             width: 300, // must be the same in both the chart and the control
//             height: 200,
//             fontName: ["Arial"],
//             colors: ['#274358','#5e87a5','#a2cdf6'],
//             curveType: ['none'],
//             fontSize: ['13'],
//             hAxis: {
//                 title: 'Período', 
//                 titleTextStyle: {
//                     italic: false,
//                     color: 'black',
//                     fontSize: 15
//                 },
//                 format: 'MMM/y'
//             },
//             legend: {
//                 position: 'none',
//                 textStyle: {
//                     color: 'black',
//                     fontSize: 12
//                 }
//             },
//             lineWidth: 2,
//             pointSize: 7,
//             tooltip: {
//                 textStyle: {
//                     color: 'Black'
//                 },
//                 showColorCode: false
//             }
//         }
//     });
  
//     // Create the dashboard
//     var dash = new google.visualization.Dashboard(document.getElementById('dashboard'));
//     // bind the chart to the filter
//     dash.bind([rangeFilter], [chart]);
//     // draw the dashboard
//     dash.draw(data);
// }

//go = test['events'];
//
//var literal = {};
//
//literal = {
//    cols: [{
//        id: 'x_bpm', 
//        label: 'Beats per Minute', 
//        type: 'string'
//    },
//
//    {
//        id: 'x_time', 
//        label: 'Time', 
//        type: 'number'
//    }],
//    rows: []
//};
//
//for (var key in go) {      
//    literal['rows'][key] = go[key]['created_at'];      
//}

$(document).ready(function() {
    setInterval("poll_data()",5000);
});
   
function poll_data() { 
    
    //After loading the template into the page. Call the API to get latest trips.
    $.ajax({
        type        : "GET",
        url         : "http://localhost:3000/reading/show.json",
        dataType    : "json",
        data        : {
            interval: true
        },
        success:    function(data) 
        {
            //console.log(data['events']['BPM']);
            change_heartrate(data['events']['BPM']);
        },
        error: function(data) {
            console.log("error");
            change_heartrate("N/A");
            $('#rate-current').css("background-color","red");    
        }
    });
}


function change_heartrate(val){
    $('#rate-current').text(val);
}

function change_average(val){
    $('#rate-average').text(val);        
}