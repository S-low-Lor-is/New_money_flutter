// import 'package:flutter/material.dart';

// class MyTextField extends StatelessWidget {
//   final controller;
//   final String hintText;
//   final bool obscureText;
//   final String customIconPath;
  

//   const MyTextField({
//     super.key,
//     required this.controller,
//     required this.hintText,
//     required this.obscureText,
//     required this.customIconPath,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 51,
//       width: 348,
//       child: TextField(
        
//         controller: controller,
//         obscureText: obscureText,
//         decoration: InputDecoration(
//             prefixIcon: customIconPath.isNotEmpty
//               ? Container(
//                   width: 20,
//                   height: 30, 
//                   decoration: BoxDecoration(
//                     // image: DecorationImage(
//                     // image: AssetImage(customIconPath),
//                     //  ),
//                     border: Border.all(
//                       color: Colors.black,
//                       width: 2
//                     )
//                   ),
//                 ): null,
            
//             enabledBorder: const OutlineInputBorder(
//               borderSide: BorderSide(color: Color(0xDBDBDB)),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.grey.shade400),
//             ),
//             fillColor: Colors.grey.shade200,
//             filled: true,
//             hintText: hintText,
//             hintStyle: TextStyle(color: Colors.grey[500])),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:new_m/pages/login_email.dart';


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
    return Container(
      height: 51,
      width: 348,
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
    return GestureDetector(
      onTap: () {
        // Navigate to another route when the button is pressed
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) =>LoginEmail()), // Replace with your desired route
        // );
      },
      child: Container(
        width: 348,
        height: 51,
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