import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:async';

class TestUi extends StatefulWidget {
  
  @override
  State<TestUi> createState() => _TestUiState();
}

class _TestUiState extends State<TestUi> {
  final List<FlSpot> _data = [
    FlSpot(0, 3),
    FlSpot(1, 1),
    FlSpot(2, 4),
    FlSpot(3, 2),
    FlSpot(4, 5),
    FlSpot(5, 3),
    FlSpot(6, 4),
    
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
          title: Text(''),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: 350,
                height: 177,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x0A000000),
                      blurRadius: 32,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(show: true),
                    titlesData: FlTitlesData(show: false),
                    borderData: FlBorderData(
                      show: false,
                      border: Border.all(
                        color: Color.fromARGB(255, 255, 255, 255),
                        width: 1,
                      ),
                    ),
                    minX: 0,
                    maxX: 8,
                    minY: 0,
                    maxY: 6,
                    lineBarsData: [
                      LineChartBarData(
                        spots: [
                          FlSpot(0, 3),
                          FlSpot(1, 1),
                          FlSpot(2, 4),
                          FlSpot(3, 2),
                          FlSpot(4, 5),
                          FlSpot(5, 3),
                          FlSpot(6, 4),
                          FlSpot(7, 3),
                          FlSpot(8, 4),
                        ],
                        isCurved: true,
                        shadow: Shadow(
                          color: Color.fromARGB(255, 197, 250, 148),
                        ),
                        belowBarData: BarAreaData(
                            show: true,
                            color: Color.fromARGB(255, 196, 248, 182)),
                        color: Color.fromARGB(255, 0, 244, 57),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: 320,
                height: 177,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x0A000000),
                      blurRadius: 32,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: LineChart(
                    LineChartData(
                      gridData: FlGridData(show: false),
                      titlesData: FlTitlesData(
                         leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles:false,
                            reservedSize: 30,
                            //getTitlesWidget: bottomTitleWidgets,
                           interval: 1,
                          ),
                        ),
                        
                        topTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles:false,
                            reservedSize: 30,
                            //getTitlesWidget: bottomTitleWidgets,
                            interval: 1,
                          ),
                        ),
                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles:false,
                            reservedSize: 30,
                            //getTitlesWidget: bottomTitleWidgets,
                            interval: 1,
                          ),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 30,
                            getTitlesWidget: bottomTitleWidgets,
                            interval: 1,
                  
                          ),
                        ),
                      ),
                      //showingTooltipIndicators: List.empty(growable: true),
                  
                      borderData: FlBorderData(
                        show: false,
                        border: Border.all(
                          color: Color.fromARGB(255, 255, 255, 255),
                          width: 1,
                        ),
                      ),
                      minX: 0,
                      maxX: 6,
                      minY: 0,
                      maxY: 6,
                      lineBarsData: [
                        LineChartBarData(
                          spots:_data,
                          isCurved: true,
                  
                          shadow: Shadow(
                            color: Color.fromARGB(255, 197, 250, 148),
                          ),
                          //belowBarData: BarAreaData(show: true,color: Color.fromARGB(255, 196, 248, 182)),
                          color: Color.fromARGB(255, 0, 244, 57),
                          dashArray: [5, 5],
                          dotData: FlDotData(

                    show: _showDot,
                    checkToShowDot: (spot,bardata) {
                      
                      // Only show the dot for the last spot in the data
                      return spot == _data.last;
                    },
                    
                  ),
                        ),
                      ],
                      extraLinesData: ExtraLinesData(
                horizontalLines: [
                  HorizontalLine(
                    y: 0, // Y-coordinate above bottomTitles
                    color: Colors.grey,
                    strokeWidth: 1,
                  ),
                ],
              ),
                    ),
                  ),
                ),
              ),
            ),
            
          ],
        ));
  }
}

Widget bottomTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 10,
  );
  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text('Sat', style: style);
      break;

    case 1:
      text = const Text('Sun', style: style);
      break;
    case 2:
      text = const Text('Mon', style: style);
      break;
    case 3:
      text = const Text('Tue', style: style);
      break;
    case 4:
      text = const Text('Wed', style: style);
      break;
    case 5:
      text = const Text('Thu', style: style);
      break;
    case 6:
      text = const Text('Fri', style: style);
      break;
    default:
      text = const Text('Fri', style: style);
      break;
  }

  return SideTitleWidget(
    axisSide: meta.axisSide,
    child: text,
  );
}
