// import 'dart:async';

// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';

// class TE extends StatefulWidget {
//   const TE({Key? key}) : super(key: key);

//   @override
//   _TEState createState() => _TEState();
// }

// class _TEState extends State<TE> {
//   // A list of data points for the line chart
//   final List<FlSpot> _data = [
//     FlSpot(0, 3),
//     FlSpot(1, 5),
//     FlSpot(2, 7),
//     FlSpot(3, 9),
//     FlSpot(4, 11),
//     FlSpot(5, 13),
//     FlSpot(6, 15),
//     FlSpot(7, 17),
//   ];

//   // A boolean value to control the visibility of the dot
//   bool _showDot = true;

//   @override
//   void initState() {
//     super.initState();
//     // Create a timer that toggles the visibility of the dot every 500 milliseconds
//     Timer.periodic(const Duration(milliseconds: 500), (timer) {
//       setState(() {
//         _showDot = !_showDot;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Blinking Dot Line Chart'),
//       ),
//       body: Center(
//         child: Container(
//           width: 300,
//           height: 200,
//           child: LineChart(
//             LineChartData(
//               // Hide the grid and the border
//               gridData: FlGridData(show: false),
//               borderData: FlBorderData(show: false),
//               // Show the x-axis and y-axis labels
//               titlesData: FlTitlesData(
//                 show: true,
             
//               ),
//               // Define the line chart bar data
//               lineBarsData: [
//                 LineChartBarData(
//                   // Use the data points from the list
//                   spots: _data,
//                   // Draw a curved line
//                   isCurved: true,
//                   // Set the color and width of the line
//                   color: Colors.blue,
//                   barWidth: 3,
//                   // Show the dot only if the boolean value is true
//                   //dotData: FlDotData(show: _showDot),
//                   //below is workin great
//                   dotData: FlDotData(

//                     show: _showDot,
                    
//                     checkToShowDot: (spot, barData) {
                      
//                       // Only show the dot for the last spot in the data
//                       return spot == _data.last;
//                     },
                    
//                   ),
//                   //aboveis working great
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//lkdsfjlkjewqjfowqofjoiewjfoirjfijroijfr



import 'dart:async';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TE extends StatefulWidget {
  const TE({Key? key}) : super(key: key);

  @override
  _TEState createState() => _TEState();
}

class _TEState extends State<TE> {
  // A list of data points for the line chart
  final List<FlSpot> _data = [
    FlSpot(0, 3),
    FlSpot(1, 5),
    FlSpot(2, 1),
    FlSpot(3, 3),
    FlSpot(4, 9),
    FlSpot(5, 6),
    FlSpot(6, 10),
    FlSpot(7, 5),
  ];

  // A boolean value to control the visibility of the dot
  bool _showDot = true;

  @override
  void initState() {
    super.initState();
    // Create a timer that toggles the visibility of the dot every 500 milliseconds
    Timer.periodic(const Duration(milliseconds: 500), (timer) {
      setState(() {
        _showDot = !_showDot;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blinking Dot Line Chart'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          child: LineChart(
            LineChartData(
              // Hide the grid and the border
              gridData: FlGridData(show: false),
              borderData: FlBorderData(show: false),
              // Show the x-axis and y-axis labels
              titlesData: FlTitlesData(
                show: true,
             
              ),
              // Define the line chart bar data
              lineBarsData: [
                LineChartBarData(
                  // Use the data points from the list
                  spots: _data,
                  // Draw a curved line
                  isCurved: true,
                  // Set the color and width of the line
                  color: Colors.blue,
                  barWidth: 3,
                  // Show the dot only if the boolean value is true
                  //dotData: FlDotData(show: _showDot),
                  //below is workin great
                  dotData: FlDotData(

                    show: _showDot,
                    checkToShowDot: (spot,bardata) {
                      
                      // Only show the dot for the last spot in the data
                      return spot == _data.last;
                    },
                    
                  ),
                  //aboveis working great
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

