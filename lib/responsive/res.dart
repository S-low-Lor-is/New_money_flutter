import 'package:flutter/material.dart';

class res extends StatefulWidget {
  const res({super.key});

  @override
  State<res> createState() => _resState();
}

class _resState extends State<res> {
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

    return const Placeholder();
  }
}