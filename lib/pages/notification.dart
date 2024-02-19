import 'package:flutter/material.dart';
import 'package:new_m/componests/my_text_field.dart';
import 'package:new_m/pages/welcome.dart';

class Notifi extends StatelessWidget {
  const Notifi({super.key});

  @override
  Widget build(BuildContext context) {
    double figmaScreenWidth = 428.0;
    double figmaScreenHeight = 926.0;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double ws = screenWidth / figmaScreenWidth;
    double hs = screenHeight / figmaScreenHeight;
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
          SizedBox(height: 110*hs,),
          Container(
            child: Image.asset('assets/notifications.png',
            width: 215.7*ws, 
            height: 215.7*hs,),
          ),
          SizedBox(height: 90*hs,),
          const Text('Don’t miss out!',
                      style: TextStyle(
                          color: Color(0xFF2E2E2E),
                          fontWeight:
                              FontWeight.bold, // FontWeight.bold is also valid
                          fontSize: 32,
                        )),
                    SizedBox(height: 11 * hs),
                    const Text(
                      textAlign: TextAlign.center,
                      'Get push notifications for carbon advice & quests!',
                      style: TextStyle(
                        color: Color(0xFF2E2E2E),
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 120*hs,),
                    CustomButtonlink(buttonText: 'Enable Push Notifications', path: WelcomePage()),
                    SizedBox(height: 10,),
                    TextButton(onPressed: null, child: Text('Enter Now'))
                    
          ],
        ),
      ),
    );
  }

  }
