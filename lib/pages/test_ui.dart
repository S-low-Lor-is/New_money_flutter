// import 'package:flutter/material.dart';
// import 'package:new_m/componests/my_text_field.dart';
// import 'package:new_m/pages/welcome.dart';
// import 'package:image_picker/image_picker.dart';

// class TestUi extends StatefulWidget {
//   const TestUi({super.key});

//   @override
//   State<TestUi> createState() => _TestUiState();
// }

// class _TestUiState extends State<TestUi> {

//    @override
//   Widget build(BuildContext context) {
  
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SizedBox(height: 90,),
//           Stack(
//             children: [
//               // Placeholder for profile picture
//               CircleAvatar(
//                 child: Image.asset('assets/sheep.png'),
//                 radius: 95.0,
//                 backgroundColor: Color.fromARGB(100, 196, 196, 196),
//                 //backgroundImage: AssetImage('assets/call.png'),
//               ),
//               // Button to upload photo
//               Positioned(
//                 bottom: 0,
//                 right: 0,
//                 child: FloatingActionButton(
//                   backgroundColor: Color.fromARGB(255, 0, 244, 57),
//                   onPressed: () {
//                     // Handle photo upload logic here
                    
//                   },
//                   mini: true,
//                   child: Icon(
//                     Icons.edit,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//             ],
//           ),
         
          
          
         
//         ],
//       ),
//     );
//   }
// }
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TestUi extends StatefulWidget {
  const TestUi({Key? key}) : super(key: key);

  @override
  State<TestUi> createState() => _TestUiState();
}

class _TestUiState extends State<TestUi> {
  File? _image;
  
  Future getImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 90),
          Stack(
            children: [
              CircleAvatar(
                backgroundImage: _image != null ? FileImage(_image!) : AssetImage('assets/sheep.png') as ImageProvider,
                radius: 95.0,
                backgroundColor: Color.fromARGB(100, 196, 196, 196),
              ),
              // Button to upload photo
              Positioned(
                bottom: 0,
                right: 0,
                
                child: FloatingActionButton(
                  
                  backgroundColor: Color.fromARGB(255, 0, 244, 57),
                  onPressed: () {
                    getImage(); // Call the method to pick an image
                  },
                  mini: true,
                  child: Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
