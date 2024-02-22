import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {

  
  final controller;
  final String hintText;
  final bool obscureText;
  final Icon prefixIcon;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {

    double figmaScreenWidth = 428.0;
  double figmaScreenHeight = 926.0;
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double ws = screenWidth / figmaScreenWidth;
  double hs = screenHeight / figmaScreenHeight;
  print('Scaled Screen Width: $screenWidth * $ws');
  print('Scaled Screen Height: $screenHeight * $hs');
    return Container(
      height: 51*hs,
      width: 348*ws,
      child: TextField(

        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xDBDBDBDB)),
          borderRadius: BorderRadius.all(Radius.circular(5))
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.grey.shade100,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Color.fromARGB(46, 46, 46, 100),fontSize: 16,fontWeight: FontWeight.w400),
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
        ),
      ),
    );
  }
}



class CustomButton extends StatelessWidget {
  final String buttonText; // Argument for dynamic text

  CustomButton({required this.buttonText});

  @override
  Widget build(BuildContext context) {
    double figmaScreenWidth = 428.0;
  double figmaScreenHeight = 926.0;
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double ws = screenWidth / figmaScreenWidth;
  double hs = screenHeight / figmaScreenHeight;
  print('Scaled Screen Width: $screenWidth * $ws');
  print('Scaled Screen Height: $screenHeight * $hs');
    return GestureDetector(
      onTap: () {
        // Navigate to another route when the button is pressed
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) =>LoginEmail()), // Replace with your desired route
        // );
      },
      child: Container(
        width: 348*hs,
        height: 51*ws,
        decoration: BoxDecoration(
          //color: Color.fromARGB(0, 244, 57, 100),
          color:Color.fromARGB(255, 0, 244, 57),
          //color: Color(0xFF00F439),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          
              SizedBox(width: 15),
              Text(
                buttonText,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'ReadexPro',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButtonlink extends StatelessWidget {
  final String buttonText; // Argument for dynamic text
  final Widget path;

  CustomButtonlink({required this.buttonText, required this.path});

  @override
  Widget build(BuildContext context) {
  double figmaScreenWidth = 428.0;
  double figmaScreenHeight = 926.0;
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double ws = screenWidth / figmaScreenWidth;
  double hs = screenHeight / figmaScreenHeight;
  print('Scaled Screen Width: $screenWidth * $ws');
  print('Scaled Screen Height: $screenHeight * $hs');
    return GestureDetector(
      onTap: () {
        
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>path), // Replace with your desired route
        );
      },
      child: Container(
        width: 348*ws,
        height: 51*hs,
        decoration: BoxDecoration(
          //color: Color.fromARGB(0, 244, 57, 100),
          color:Color.fromARGB(255, 0, 244, 57),
          //color: Color(0xFF00F439),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          
              SizedBox(width: 15),
              Text(
                buttonText,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'ReadexPro',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

