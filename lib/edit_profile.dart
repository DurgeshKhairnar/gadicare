import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});
  @override
  State<EditProfile> createState() => _EditProfile();
}

class _EditProfile extends State<EditProfile> {
  File? img;
  final ImagePicker picker = ImagePicker();
  Future<void> getImage() async {
    try {
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        setState(() {
          img = File(image.path);
        });
      }
    } catch (e) {
      log("Image picker error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Edit Profile',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    getImage();
                  },
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey.shade300,
                    backgroundImage: img != null ? FileImage(img!) : null,
                    child:
                        img == null
                            ? const Icon(
                              Icons.person,
                              size: 50,
                              color: Colors.white,
                            )
                            : null,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'user6163191',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                customText('Mobile Number',Icon(Icons.phone)),
                const SizedBox(height: 10),
                customText('Full name',Icon(Icons.person)),
                const SizedBox(height: 10),
                customText('Email',Icon(Icons.email)),
                const SizedBox(height: 10),
                Container(
                  width:120,
                  height:40,
                  decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(10),
                    color:Colors.blue,
                  ),
                  alignment:Alignment.center,
                  child:Text('SUBMIT',style:TextStyle(
                    color:Colors.white
                  ))
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customText(String text,Widget icon) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: icon,
          label: Text(text),
          floatingLabelStyle:TextStyle(
            color:Colors.blue
          ),
           focusedBorder:OutlineInputBorder(
            borderSide:BorderSide(
              color:Colors.blue
            )
           ),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
