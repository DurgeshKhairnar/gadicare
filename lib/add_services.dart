import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gadicare/model/carservices.dart';
import 'package:gadicare/model/services_category.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class AddServices extends StatefulWidget {
  const AddServices({super.key});
  @override
  State<AddServices> createState() => _AddServices();
}

class _AddServices extends State<AddServices> {
  TextEditingController titleController = TextEditingController();
  TextEditingController servicesTitleController = TextEditingController();
  TextEditingController pricesController = TextEditingController();
  TextEditingController benifits1Controller = TextEditingController();
  TextEditingController benifits2Controller = TextEditingController();
   final ImagePicker picker = ImagePicker();
   File? categoryimg;
  Future<void> getImage() async {
    try {
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        setState(() {
          categoryimg = File(image.path);
        });
      }
    } catch (e) {
      log("Image picker error: $e");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Services')),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  showModelBottomSheet(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Text('Add Services Category'),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  showModelBottomSheet1(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Text('Car Services'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showModelBottomSheet(BuildContext context) {
    final provider = Provider.of<Services>(context,listen:false);
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            top: 10,
            bottom: MediaQuery.of(context).viewInsets.bottom,
            right: 10,
            left: 10,
          ),
          child:SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min, // <- Key to auto height
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10,),
                Text('Services Category',style:TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                const SizedBox(height: 10,),
                 GestureDetector(
                  onTap: () {
                    getImage();
                  },
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey.shade300,
                    backgroundImage: categoryimg != null ? FileImage(categoryimg!) : null,
                    child:
                        categoryimg == null
                            ? const Icon(
                              Icons.person,
                              size: 50,
                              color: Colors.white,
                            )
                            : null,
                  ),
                ),
                const SizedBox(height: 10,),
                TextField(
                  controller:titleController,
                  decoration:InputDecoration(
                    hintText:'Title Name',
                    border:OutlineInputBorder(),
                  )
                ),
                const SizedBox(height: 10,),
                ElevatedButton(
                  onPressed:(){
                    if(titleController.text.isNotEmpty && categoryimg != null){
                      provider.addServices(categoryimg: categoryimg!, title: titleController.text.trim());
                      titleController.clear();
                      categoryimg = null;
                       Navigator.pop(context);
                    }else{
                      log("error");
                    }
                    setState(() {
                      
                    },);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:Colors.blue
                  ),
                  child:Text('Add',style:TextStyle(
                    color:Colors.white
                  )),
                ),
                const SizedBox(height: 10,),
                ],
            ),
          ),
        );
      },
    );
  }

 void showModelBottomSheet1(BuildContext context) {
    final provider = Provider.of<Servicescar>(context,listen:false);
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            top: 10,
            bottom: MediaQuery.of(context).viewInsets.bottom,
            right: 10,
            left: 10,
          ),
          child:SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min, // <- Key to auto height
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10,),
                Text('Car Wash',style:TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                const SizedBox(height: 10,),
                TextField(
                  controller:servicesTitleController,
                  decoration:InputDecoration(
                    hintText:'Title Name',
                    border:OutlineInputBorder(),
                  )
                ),
                const SizedBox(height: 10,),
                TextField(
                  controller:pricesController,
                  decoration:InputDecoration(
                    hintText:'Price',
                    border:OutlineInputBorder(),
                  )
                ),
                const SizedBox(height: 10,),
                TextField(
                  controller:benifits1Controller,
                  decoration:InputDecoration(
                    hintText:'Benefit 1',
                    border:OutlineInputBorder(),
                  )
                ),
                const SizedBox(height: 10,),
                TextField(
                  controller:benifits2Controller,
                  decoration:InputDecoration(
                    hintText:'Benefit 1',
                    border:OutlineInputBorder(),
                  )
                ),
                const SizedBox(height: 10,),
                ElevatedButton(
                  onPressed:(){
                    if(servicesTitleController.text.isNotEmpty && pricesController.text.isNotEmpty && benifits1Controller.text.isNotEmpty && benifits2Controller.text.isNotEmpty){
                      provider.addCarServices(title: servicesTitleController.text.trim(), prices: pricesController.text, benefites1:benifits1Controller.text.trim(), benefites2:benifits2Controller.text.trim());
                      servicesTitleController.clear();
                      pricesController.clear();
                      benifits1Controller.clear();
                      benifits2Controller.clear();
                       Navigator.pop(context);
                    }else{
                      log("error");
                    }
                    setState(() {
                      
                    },);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:Colors.blue
                  ),
                  child:Text('Add',style:TextStyle(
                    color:Colors.white
                  )),
                ),
                const SizedBox(height: 10,),
                ],
            ),
          ),
        );
      },
    );
  }

}
