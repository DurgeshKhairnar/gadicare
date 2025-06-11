import 'package:flutter/material.dart';
import 'package:gadicare/basic_car.dart';
import 'package:gadicare/home.dart';
import 'package:gadicare/model/carservices.dart';
import 'package:gadicare/model/services_category.dart';
import 'package:gadicare/navigation.dart';
import 'package:gadicare/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers:[
        ChangeNotifierProvider(create:(context)=>Services()),
        ChangeNotifierProvider(create:(context)=>Servicescar())
      ],
      child:MainApp()
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme:ThemeData(
        scaffoldBackgroundColor:Colors.white,
      ),
      home:SplashScreen()
    );
  }
}
