import 'package:flutter/material.dart';

class Subscription extends StatefulWidget{
  const Subscription({super.key});
  @override
  State<Subscription>createState()=> _Subscription();
}

class _Subscription extends State<Subscription>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.white,
        title:Text('My Subscription',style:TextStyle(
          fontWeight:FontWeight.w500
        ))
      ),
      body:SizedBox(
        width:double.infinity,
        height:double.infinity,
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
              Image.asset(
                width:100,
                height:100,
                'assets/payment.png'
                ),
                const SizedBox(height:10),
                Text("Don't have any subscription")
          ]
        )
      )
    );
  }
} 