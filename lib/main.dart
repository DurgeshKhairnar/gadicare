import 'package:flutter/material.dart';
import 'package:gadicare/help_support.dart';
import 'package:gadicare/my_vehicle.dart';
import 'package:gadicare/navigation.dart';
import 'package:gadicare/order_history.dart';
import 'package:gadicare/registration.dart';
import 'package:gadicare/splash_screen.dart';
import 'package:gadicare/subcription.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute:'/splash',
       routes:{
        '/splash':(context) => SplashScreen(),
        '/registration':(context) => Registration(),
        '/navigation':(context) => Navigation(),
        '/myvehicl':(context) => MyVehical(),
        '/subscription':(context) => Subscription(),
        '/myorder':(context) => OrderHistory(),
        '/helpsupport':(context) => HelpSupport(),
       },
      theme:ThemeData(
        scaffoldBackgroundColor:Colors.white,
      ),
    );
  }
}
