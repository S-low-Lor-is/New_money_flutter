import 'package:flutter/material.dart';
import 'package:new_m/componests/my_text_field.dart';
import 'package:new_m/pages/welcome.dart';

class Notifi extends StatelessWidget {
  const Notifi({super.key});

  @override
  Widget build(BuildContext context) {
    double ws = MediaQuery.of(context).size.width / 428;
    double hs = MediaQuery.of(context).size.height / 926;
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
          Text('Don’t miss out!',
                      style: TextStyle(
                          color: Color(0xFF2E2E2E),
                          fontWeight:
                              FontWeight.bold, // FontWeight.bold is also valid
                          fontSize: 32*((ws+hs)/2),
                        )),
                    SizedBox(height: 11 * hs),
                     Text(
                      textAlign: TextAlign.center,
                      'Get push notifications for carbon advice & quests!',
                      style: TextStyle(
                        color: Color(0xFF2E2E2E),
                        fontSize: 18*((ws+hs)/2),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 120*hs,),
                    CustomButtonlink(buttonText: 'Enable Push Notifications', path: WelcomePage()),
                    SizedBox(height: 10,),
                    TextButton(onPressed: () => Navigator.pushNamed(context, '/welcome'), child: Text('Enter Now'))
                    
          ],
        ),
      ),
    );
  }

  }
