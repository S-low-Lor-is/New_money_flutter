import 'package:flutter/material.dart';
import 'package:new_m/componests/my_text_field.dart';
import 'package:new_m/pages/profile_created.dart';
import 'package:new_m/pages/welcome.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // You can add controllers for text fields and other necessary state variables.
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
    double figmaScreenWidth = 428.0;
    double figmaScreenHeight = 926.0;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double ws = screenWidth / figmaScreenWidth;
    double hs = screenHeight / figmaScreenHeight;
    print('Scaled Screen Width: $screenWidth * $ws');
    print('Scaled Screen Height: $screenHeight * $hs');
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 90*hs,),
                 Stack(
            children: [
              CircleAvatar(
                backgroundImage: _image != null ? FileImage(_image!) : AssetImage('assets/sheep.png') as ImageProvider,
                radius: 90.0*((ws+hs)/2),
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
                  SizedBox(height: 40.0*hs),
          
                  Text('Create your profile',
                          style: TextStyle(
                              color: Color(0xFF2E2E2E),
                              fontWeight:
                                  FontWeight.bold, // FontWeight.bold is also valid
                              fontSize: 32*((ws+hs)/2),
                            )),
                  SizedBox(height: 30*hs,),
                  Container(
                    height: 51 * hs,
                    width: 330 * ws,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'First Name',
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0*hs),
                  Container(
                    height: 51 * hs,
                    width: 330 * ws,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Last Name',
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0*hs),
                  Container(
                    height: 51 * hs,
                    width: 330 * ws,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Climate Tag',
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 60.0 * hs),
                  CustomButtonlink(buttonText: 'Next', path: ProfileCreated()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
