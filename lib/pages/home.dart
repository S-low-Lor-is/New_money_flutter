
import 'package:flutter/material.dart';
import 'package:new_m/componests/my_text_field.dart';
import 'package:new_m/pages/login_email.dart';
import 'package:new_m/pages/login_phone.dart';
import 'package:new_m/pages/reset_password.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  


  @override
  Widget build(BuildContext context) {
      
  double ws = MediaQuery.of(context).size.width / 428;
  double hs = MediaQuery.of(context).size.height / 926;

    return Scaffold(
    
      body:  SingleChildScrollView(
        child: Container(
        
                // decoration: BoxDecoration(
                //     border: Border.all(
                //     color: Colors.red, // Set your desired border color
                //     width: 3.0,         // Set your desired border width
                //     ),
                //   ),
            
            child: Padding(
            padding: EdgeInsets.only(top: 198*hs,left: 40*ws,right: 40*ws,bottom: 40*hs),
        
            child: Container(
        
                  //  decoration: BoxDecoration(
                  //   border: Border.all(
                  //   color: Colors.black, // Set your desired border color
                  //   width: 3.0,         // Set your desired border width
                  //   ),
                  // ),
            
        
              child: Center(
                child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.start,
                  //check by changing above
                  children: <Widget>[
                      
                   const Text(
                  'Sign in',
                  style: TextStyle(
                    color: Color(0xFF2E2E2E),
                    fontWeight: FontWeight.w900, // FontWeight.bold is also valid
                    fontSize: 50,
                  )),
                  SizedBox(height: 11*hs),
                  const Text(
                        'Choose an option below',
                        style: TextStyle(
                          color: Color(0xFF2E2E2E),
                          fontSize: 18,
                          fontWeight: FontWeight.w500, // You can adjust the fontWeight as needed
                        ),
                      ),
                      SizedBox(height: 67*hs),
                      CustomButton(buttonText: "Sign in with email",additionalWidget: EnvelopeIcon(),destinationRoute: LoginEmail(),), 
                      SizedBox(height: 17*hs,),
                      CustomButton(buttonText: "Sign in with SMS",additionalWidget: CallIcon(),destinationRoute: LoginPhone(),), 
                      SizedBox(height: 270*hs,),
                         Container(
                              // height: 20*hs,
                              // width: 197*ws,
                              // decoration: BoxDecoration(
                              //   border: Border.all(
                              //     color: Colors.black,  // Set your desired border color
                              //     width: 1.0,            // Set your desired border width
                              //   ),
                              //     // Set your desired border radius
                              //   color: Colors.white,   // Set your desired background color
                              // ),
                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                      Container(
                                        //  decoration: BoxDecoration(
                                        //     border: Border.all(
                                        //     color: Colors.black,  // Set your desired border color
                                        //     width: 1.0,            // Set your desired border width
                                        //   ),
                                        // color: Colors.amber,
                                        //  ),
                                        
                                        child: Text(
                                          'First time here?',
                                          style: TextStyle(
                                          color: Color(0xFF2E2E2E),
                                          fontWeight: FontWeight.w400, // FontWeight.medium is not directly available, so use FontWeight.w500 for medium
                                          fontSize: 16,
                                          fontFamily: 'ReadexPro',
                                          
                                          )),
                                      ),
                                      SizedBox(width: 4,),
                                       Container(
                                      
                                        // decoration: BoxDecoration(
                                        //   border: Border.all(
                                        //   color: Colors.black,  // Set your desired border color
                                        //   width: 1.0,            // Set your desired border width
                                        // ),
                                 
                                        // color: Colors.yellow,   // Set your desired background color
                                        // ),
                                        // child: TextButton(
                                        // onPressed: () => Navigator.pushNamed(context, '/'),
                                        // child: const Text(
                                        //             'Register',
                                        //              style: TextStyle(
                                        //               color: Color(0xFF2E2E2E),
                                        //               fontWeight: FontWeight.bold,
                                        //               fontSize: 16,
                                        //               fontFamily: 'ReadexPro',
                                        //             ),
                                                    
                                        //           ),
                                         
                                        // ),
                                        child:  TextButton(
                                                onPressed: () => Navigator.pushNamed(context, '/register_email'),
                                                child: const Text('Register',
                                                style: TextStyle(
                                                   color: Color(0xFF2E2E2E),
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 16,
                                                      fontFamily: 'ReadexPro',
                                                ),),
                                                style: ButtonStyle(
                                                  
                                                  alignment: Alignment.centerLeft, // <-- had to set alignment
                                                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                                    EdgeInsets.zero, // <-- had to set padding to zero
                                                  ),
                                                ),
                                              ),
                                        
                                    ),
                                ],
                              ),
                            )  
                       
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}



class CustomButton extends StatelessWidget {
  final String buttonText; // Argument for dynamic text
  final Widget additionalWidget;
  final Widget destinationRoute;

  CustomButton({required this.buttonText, required this.additionalWidget,required this.destinationRoute});

  @override
  Widget build(BuildContext context) {
      
  double ws = MediaQuery.of(context).size.width / 428;
  double hs = MediaQuery.of(context).size.height / 926;
  

  
    return GestureDetector(
      onTap: () {
        // Navigate to another route when the button is pressed
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>destinationRoute), // Replace with your desired route
        );
      },
      child: Container(
        width: 348*ws,
        height: 51*hs,
        decoration: BoxDecoration(
          color: Color(0xFF2E2E2E),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              additionalWidget,
              SizedBox(width: 15),
              Text(
                buttonText,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'ReadexPro',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EnvelopeIcon extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
   
  double ws = MediaQuery.of(context).size.width / 428;
  double hs = MediaQuery.of(context).size.height / 926;
    return Image.asset(
      'assets/mail.png',
       width: 17*ws, // Adjust the width as needed
       height: 17*hs, // Adjust the height as needed
    );
  }
}
class CallIcon extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
   
  double ws = MediaQuery.of(context).size.width / 428;
  double hs = MediaQuery.of(context).size.height / 926;
    return Image.asset(
      'assets/call.png',
       width: 17*ws, 
       height: 17*hs,
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:new_m/componests/my_text_field.dart';
// import 'package:new_m/pages/login_email.dart';
// import 'package:new_m/pages/login_phone.dart';
// import 'package:new_m/pages/reset_password.dart';



// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
  
//   double ws = MediaQuery.of(context).size.width / 428;
//   double hs = MediaQuery.of(context).size.height / 926;
 

//     return Scaffold(
//       body:  Center(
//         child: Column(
          
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             SizedBox(height: 197*hs,),
              
//            Container(
//               height: 63*hs,
//               width: 177*ws,
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                           color: Colors.black,  // Set your desired border color
//                           width: 1.0,            // Set your desired border width
//                         ),
//                           // Set your desired border radius
//                         color: Colors.white,   // Set your desired background color
//                       ),
//              child: Center(
//                child: const Text(
//                          'Sign in',
//                          style: TextStyle(
//                 color: Color(0xFF2E2E2E),
//                 fontWeight: FontWeight.w900, // FontWeight.bold is also valid
//                 fontSize: 44,
//                          )),
//              ),
//            ),

//           SizedBox(height: 11*hs),
//           const Text(
//                 'Choose an option below',
//                 style: TextStyle(
//                   color: Color(0xFF2E2E2E),
//                   fontSize: 18,
//                   fontWeight: FontWeight.w500, // You can adjust the fontWeight as needed
//                 ),
//               ),
//               //SizedBox(height: 67*hs),
//               CustomButton(buttonText: "Sign in with email",additionalWidget: EnvelopeIcon(),destinationRoute: LoginEmail(),), 
//               SizedBox(height: 17*hs,),
//               CustomButton(buttonText: "Sign in with SMS",additionalWidget: CallIcon(),destinationRoute: LoginPhone(),), 
//               // SizedBox(height: 270*hs,),
//                  Container(
//                       // height: 20*hs,
//                       // width: 197*ws,
//                       // decoration: BoxDecoration(
//                       //   border: Border.all(
//                       //     color: Colors.black,  // Set your desired border color
//                       //     width: 1.0,            // Set your desired border width
//                       //   ),
//                       //     // Set your desired border radius
//                       //   color: Colors.white,   // Set your desired background color
//                       // ),
//                       child:  Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                               Container(
//                                 //  decoration: BoxDecoration(
//                                 //     border: Border.all(
//                                 //     color: Colors.black,  // Set your desired border color
//                                 //     width: 1.0,            // Set your desired border width
//                                 //   ),
//                                 // color: Colors.amber,
//                                 //  ),
                                
//                                 child: Text(
//                                   'First time here?',
//                                   style: TextStyle(
//                                   color: Color(0xFF2E2E2E),
//                                   fontWeight: FontWeight.w400, // FontWeight.medium is not directly available, so use FontWeight.w500 for medium
//                                   fontSize: 16,
//                                   fontFamily: 'ReadexPro',
                                  
//                                   )),
//                               ),
//                               SizedBox(width: 4,),
//                                Container(
                              
//                                 // decoration: BoxDecoration(
//                                 //   border: Border.all(
//                                 //   color: Colors.black,  // Set your desired border color
//                                 //   width: 1.0,            // Set your desired border width
//                                 // ),
                         
//                                 // color: Colors.yellow,   // Set your desired background color
//                                 // ),
//                                 // child: TextButton(
//                                 // onPressed: () => Navigator.pushNamed(context, '/'),
//                                 // child: const Text(
//                                 //             'Register',
//                                 //              style: TextStyle(
//                                 //               color: Color(0xFF2E2E2E),
//                                 //               fontWeight: FontWeight.bold,
//                                 //               fontSize: 16,
//                                 //               fontFamily: 'ReadexPro',
//                                 //             ),
                                            
//                                 //           ),
                                 
//                                 // ),
//                                 child:  TextButton(
//                                         onPressed: () => Navigator.pushNamed(context, '/register_email'),
//                                         child: const Text('Register',
//                                         style: TextStyle(
//                                            color: Color(0xFF2E2E2E),
//                                               fontWeight: FontWeight.bold,
//                                               fontSize: 16,
//                                               fontFamily: 'ReadexPro',
//                                         ),),
//                                         style: ButtonStyle(
                                          
//                                           alignment: Alignment.centerLeft, // <-- had to set alignment
//                                           padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
//                                             EdgeInsets.zero, // <-- had to set padding to zero
//                                           ),
//                                         ),
//                                       ),
                                
//                             ),
//                         ],
//                       ),
//                     )  
               
//           ],
//         ),
//       ),
//      // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }



// class CustomButton extends StatelessWidget {
//   final String buttonText; // Argument for dynamic text
//   final Widget additionalWidget;
//   final Widget destinationRoute;

//   CustomButton({required this.buttonText, required this.additionalWidget,required this.destinationRoute});

//   @override
//   Widget build(BuildContext context) {
    
//     double ws = MediaQuery.of(context).size.width / 428;
//     double hs = MediaQuery.of(context).size.height / 926;
  

  
//     return GestureDetector(
//       onTap: () {
//         // Navigate to another route when the button is pressed
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) =>destinationRoute), // Replace with your desired route
//         );
//       },
//       child: Container(
//         width: 348*hs,
//         height: 51*hs,
//         decoration: BoxDecoration(
//           color: Color(0xFF2E2E2E),
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               additionalWidget,
//               SizedBox(width: 15),
//               Text(
//                 buttonText,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontFamily: 'ReadexPro',
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class EnvelopeIcon extends StatelessWidget {
  
//   @override
//   Widget build(BuildContext context) {
//    double ws = MediaQuery.of(context).size.width / 428;
//   double hs = MediaQuery.of(context).size.height / 926;
//     return Image.asset(
//       'assets/mail.png',
//        width: 17*ws, // Adjust the width as needed
//        height: 17*hs, // Adjust the height as needed
//     );
//   }
// }
// class CallIcon extends StatelessWidget {
  
//   @override
//   Widget build(BuildContext context) {
    
//   double figmaScreenWidth = 428.0;
//   double figmaScreenHeight = 926.0;
//   double screenWidth = MediaQuery.of(context).size.width;
//   double screenHeight = MediaQuery.of(context).size.height;
//   double ws = screenWidth / figmaScreenWidth;
//   double hs = screenHeight / figmaScreenHeight;
//   print('Scaled Screen Width: $screenWidth * $ws');
//   print('Scaled Screen Height: $screenHeight * $hs');
//     return Image.asset(
//       'assets/call.png',
//        width: 17*ws, 
//        height: 17*hs,
//     );
//   }
// }

