import 'package:flutter/material.dart';
import 'package:new_m/componests/my_text_field.dart';
import 'package:new_m/pages/notification.dart';
import 'package:new_m/pages/welcome.dart';

class ProfileCreated extends StatelessWidget {
  const ProfileCreated({super.key});

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
            child: Image.asset('assets/success.png',
            width: 215.7*ws, 
            height: 215.7*hs,),
          ),
          SizedBox(height: 120*hs,),
          Text('Profile created!',
                      style: TextStyle(
                          color: Color(0xFF2E2E2E),
                          fontWeight:
                              FontWeight.bold, // FontWeight.bold is also valid
                          fontSize: 32*((ws+hs)/2),
                        )),
                    SizedBox(height: 11 * hs),
                    Text(
                      textAlign: TextAlign.center,
                      'All your content in one place, it’s \ntime to start exploring.',
                      style: TextStyle(
                        color: Color(0xFF2E2E2E),
                        fontSize: 18*((ws+hs)/2),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 180*hs,),
                    CustomButtonlink(buttonText: 'Get started', path: Notifi())
                    
          ],
        ),
      ),
    );
  }

}