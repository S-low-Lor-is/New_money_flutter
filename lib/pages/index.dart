import 'package:flutter/material.dart';

// class Balance extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//      double ws = MediaQuery.of(context).size.width / 428;
//      double hs = MediaQuery.of(context).size.height / 926;
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: const Color.fromARGB(255, 243, 243, 243),
//         body: Center(
//           child: Column(
//             mainAxisAlignment:MainAxisAlignment.start,
//             children: [
//               SizedBox(height: 143*hs,),
//               Container(
//                 alignment: Alignment.topCenter,
//                 width: 350*ws,
//                 height: 167*hs,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(12),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Color(0x0A000000),
//                       blurRadius: 32*((hs+ws)/2),
//                       offset: Offset(0, 2),
//                       spreadRadius: 0,
//                     )
//                   ],
//                 ),
//                 // margin: EdgeInsets.all(16*((hs+ws)/2)),
//                 // padding: EdgeInsets.all(16*((hs+ws)/2)),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Carbon Balance',
//                       style: TextStyle(
//                         color: Color(0xFF2E2E2E),
//                         fontSize: 16,
//                         fontFamily: 'Readex Pro',
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                     SizedBox(height: 8),
//                     Text(
//                       '\$ 14,489.60',
//                       style: TextStyle(
//                         color: Color(0xFF2E2E2E),
//                         fontSize: 28,
//                         fontFamily: 'Readex Pro',
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     SizedBox(height: 16),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: ElevatedButton(
//                             onPressed: () {},
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Color(0xFF00F439),
//                               side: BorderSide(width: 1, color: Color(0xFF00F439)),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(4),
//                               ),
//                             ),
//                             child: Text(
//                               'Add Cash',
//                               style: TextStyle(
//                                 color: Color(0xFF2E2E2E),
//                                 fontSize: 14,
//                                 fontFamily: 'Poppins',
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(width: 8),
//                         Expanded(
//                           child: ElevatedButton(
//                             onPressed: () {},
//                             style: ElevatedButton.styleFrom(
//                               primary: Color(0xFF2E2E2E),
//                               side: BorderSide(width: 1, color: Color(0xFF2E2E2E)),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(4),
//                               ),
//                             ),
//                             child: Text(
//                               'Cash Out',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 14,
//                                 fontFamily: 'Poppins',
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
            
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// class Balance extends StatelessWidget {
//   const Balance({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 243, 243, 243),
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(0),
//                 child: Container(
//                   width: 390,
//                   height: 267,
                  
//                   decoration: ShapeDecoration(
//                     color: Color.fromARGB(255, 209, 178, 178),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                     shadows: [
//                       BoxShadow(
//                         color: Color(0x0A000000),
//                         blurRadius: 32,
//                         offset: Offset(0, 2),
//                         spreadRadius: 0,
//                       )
//                     ],
//                   ),
//                   child: Stack(
//                     children: [
//                       Positioned(
//                         left: 20,
//                         top: 67,
//                         child: Container(
//                           width: 48,
//                           height: 48,
//                           child: Stack(
//                             children: [
//                               Positioned(
//                                 left: 0,
//                                 top: 0,
//                                 child: Container(
//                                   width: 48,
//                                   height: 48,
//                                   decoration: ShapeDecoration(
//                                     color: Color(0xFFD9D9D9),
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(60),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Positioned(
//                                 left: 0,
//                                 top: 0,
//                                 child: Container(
//                                   width: 48,
//                                   height: 48,
//                                   decoration: ShapeDecoration(
//                                     color: Color(0xFF00F439),
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(60),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Positioned(
//                                 left: 6,
//                                 top: 6,
//                                 child: Container(
//                                   width: 36,
//                                   height: 36,
//                                   clipBehavior: Clip.antiAlias,
//                                   decoration: BoxDecoration(),
//                                   child: Stack(
//                                     children: [
//                                       Positioned(
//                                         left: 2,
//                                         top: 4,
//                                         child: Container(
//                                           width: 31.31,
//                                           height: 27.89,
//                                           child: Stack(children: [
                                          
//                                           ]),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         left: 340,
//                         top: 71,
//                         child: Container(
//                           width: 24,
//                           height: 24,
//                           child: Stack(
//                             children: [
//                               Positioned(
//                                 left: 0,
//                                 top: 0,
//                                 child: Container(
//                                   width: 24,
//                                   height: 24,
//                                   decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         left: 267,
//                         top: 72,
//                         child: Container(
//                           width: 24,
//                           height: 24,
//                           child: Stack(
//                             children: [
//                               Positioned(
//                                 left: 0,
//                                 top: 0,
//                                 child: Container(
//                                   width: 24,
//                                   height: 24,
//                                   decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         left: 77,
//                         top: 68,
//                         child: SizedBox(
//                           width: 186,
//                           child: Text(
//                             '#CaptainPlanet',
//                             style: TextStyle(
//                               color: Color(0xFF2E2E2E),
//                               fontSize: 24,
//                               fontFamily: 'Readex Pro',
//                               fontWeight: FontWeight.w700,
//                               height: 0,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         left: 77,
//                         top: 100,
//                         child: Text(
//                           '456K Followers',
//                           style: TextStyle(
//                             color: Color(0xFF2E2E2E),
//                             fontSize: 11,
//                             fontFamily: 'Readex Pro',
//                             fontWeight: FontWeight.w400,
//                             height: 0,
//                           ),
//                         ),
//                       ),
                     
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }