import 'package:flutter/material.dart';
import 'package:new_m/componests/my_text_field.dart';

class RegisterEmail extends StatelessWidget {
  RegisterEmail({super.key});
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double figmaScreenWidth = 428.0;
    double figmaScreenHeight = 926.0;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double ws = screenWidth / figmaScreenWidth;
    double hs = screenHeight / figmaScreenHeight;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: 198 * hs, left: 40 * ws, right: 40 * ws, bottom: 0 * hs),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              
              children: <Widget>[
                const Text('Register',
                    style: TextStyle(
                      color: Color(0xFF2E2E2E),
                      fontWeight:
                          FontWeight.w900, // FontWeight.bold is also valid
                      fontSize: 50,
                    )),
                SizedBox(height: 11 * hs),
                const Text(
                  'Welcome!',
                  style: TextStyle(
                    color: Color(0xFF2E2E2E),
                    fontSize: 18,
                    fontWeight: FontWeight
                        .w500, // You can adjust the fontWeight as needed
                  ),
                ),
                SizedBox(height: 67 * hs),
                MyTextField(
                  controller: emailcontroller,
                  obscureText: false,
                  hintText: 'Enter your email',
                  prefixIcon: const Icon(Icons.email,
                  color: Color.fromRGBO(149, 228, 168, 100)),
                ),
                SizedBox(
                  height: 17 * hs,
                ),
                MyTextField(
                  controller: passwordcontroller,
                  obscureText: true,
                  hintText: 'Enter your password',
                  prefixIcon: const Icon(Icons.lock,
                      color: Color.fromRGBO(149, 228, 168, 100)),
                ),
             
                SizedBox(height: hs*20,),
                CustomButton(buttonText:'Next'),
                SizedBox(height:hs*210),
              
                Align(
                  alignment: Alignment.bottomCenter, 
                  child: Container(
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
                    child: Row(
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
                  
                          child:const  Text('Have an account?',
                              style: TextStyle(
                                color: Color(0xFF2E2E2E),
                                fontWeight: FontWeight
                                    .w400, // FontWeight.medium is not directly available, so use FontWeight.w500 for medium
                                fontSize: 16,
                                fontFamily: 'ReadexPro',
                              )),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
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
                          child: TextButton(
                            onPressed: () => Navigator.pushNamed(context, '/sign_in_option'),
                            style: ButtonStyle(
                              alignment: Alignment
                                  .centerLeft, // <-- had to set alignment
                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry>(
                                EdgeInsets
                                    .zero, // <-- had to set padding to zero
                              ),
                            ),
                            child: const Text(
                              'Sign in',
                              style: TextStyle(
                                color: Color(0xFF2E2E2E),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                fontFamily: 'ReadexPro',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
