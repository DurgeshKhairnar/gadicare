import 'dart:io';

import 'package:flutter/material.dart';

class ServicesCategory{
  final File img;
  final String title;

  ServicesCategory({
    required this.img,
    required this.title,
  });
}

class Services extends ChangeNotifier{
    // File? categoryimg;
    List<ServicesCategory> servicesList = [];

  void addServices({required File categoryimg, required String title}){
       servicesList.add(
          ServicesCategory(img:categoryimg,title:title )
       );
  }

}