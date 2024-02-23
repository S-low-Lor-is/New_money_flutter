import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:async';

class Balance extends StatefulWidget {
  const Balance({super.key});

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
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
    double ws = MediaQuery.of(context).size.width / 428;
    double hs = MediaQuery.of(context).size.height / 926;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 50, 25, 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 65 * hs,
                    // decoration: ShapeDecoration(
                    //   color: Color.fromARGB(255, 209, 178, 178),
                    //   shape: RoundedRectangleBorder(
        
                    //   ),
                    // ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: const CircleAvatar(
                            radius: 24,
                            //backgroundColor: Color(0xFFD9D9D9),
                            backgroundImage: AssetImage(
                                'assets/Account.png'), // Replace with your image path
                          ),
                        ),
                        Positioned(
                          right: 10 * ws,
                          top: 0,
                          child: Image.asset(
                            'assets/3p.png',
                          ),
                        ),
                        Positioned(
                          left: 260 * ws,
                          top: 0,
                          child: Image.asset(
                            'assets/eco.png',
                            height: 24,
                            width: 24,
                          ),
                        ),
                        Positioned(
                          left: 60,
                          top: 0,
                          child: SizedBox(
                            width: 186,
                            child: Text(
                              '#CaptainPlanet',
                              style: TextStyle(
                                color: Color(0xFF2E2E2E),
                                fontSize: 24,
                                fontFamily: 'Readex Pro',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 60,
                          top: 28,
                          child: Text(
                            '456K Followers',
                            style: TextStyle(
                              color: Color(0xFF2E2E2E),
                              fontSize: 11,
                              fontFamily: 'Readex Pro',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Search(),
                const SizedBox( height: 15,),
                const Cash(),
                            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: 350,
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
            ),
          ),
        ),
      ),
    );
  }
}

class Search extends StatelessWidget {
  const Search({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          // child:
          child: TextField(
            style: TextStyle(fontSize: 14, height: 1),
            cursorColor: Colors.grey,
            controller: _controller,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              labelText: 'Search',
              hintText: 'search',
              prefixIcon: Icon(Icons.search),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(219, 255, 253, 253)),
                borderRadius: BorderRadius.circular(50.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.grey), // Set the color for the focused border
                borderRadius: BorderRadius.circular(50.0),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
            onChanged: (value) {},
          ),
        ),
        // Add the rest of your UI components below
        // For example, a ListView to display search results
      ],
    );
  }
}


class Cash extends StatelessWidget {
  const Cash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
              width: 350,
              child: const Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '\$ 6.1\n',
                            style: TextStyle(
                              color: Color(0xFF00F439),
                              fontSize: 16,
                              fontFamily: 'Readex Pro',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: 'saved Yesterday.',
                            style: TextStyle(
                              color: Color(0xFF2E2E2E),
                              fontSize: 10,
                              fontFamily: 'Readex Pro',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Text(
                    'Carbon Balance',
                    style: TextStyle(
                      color: Color(0xFF2E2E2E),
                      fontSize: 16,
                      fontFamily: 'Readex Pro',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 6),
            //Dollar money amount
            Text(
              '\$ 14,489.60',
              style: TextStyle(
                color: Color(0xFF2E2E2E),
                fontSize: 28,
                fontFamily: 'Readex Pro',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            SizedBox(height: 14),
            //add cash and cashout button
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle Add Cash action
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF00F439),
                      side: BorderSide(width: 1, color: Color(0xFF00F439)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: Text(
                      'Add Cash',
                      style: TextStyle(
                        color: Color(0xFF2E2E2E),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0.10,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle Cash Out action
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF2E2E2E),
                      side: BorderSide(width: 1, color: Color(0xFF2E2E2E)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: Text(
                      'Cash Out',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0.10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
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
